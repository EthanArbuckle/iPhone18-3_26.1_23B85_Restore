unint64_t lazy protocol witness table accessor for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>()
{
  result = lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>;
  if (!lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in SKPresentDevice.id.getter(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SKPresentDevice.id.getter(a1, v6, v7, v1 + v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t type metadata completion function for AnyPresentDevice(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyPresentDevice(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v8;
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v7 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v20)
  {
    goto LABEL_34;
  }

  v21 = ((v17 + v18 + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v16)) & ~v18) + *(v14 + 64);
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_13;
  }

  v25 = ((a2 - v20 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v25))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v25 <= 0xFF)
    {
      if (v25 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

LABEL_21:
      v26 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v26 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v27 = ((v17 + v18 + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 17) & ~v16)) & ~v18) + *(v14 + 64);
        }

        else
        {
          v27 = 4;
        }

        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v28 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v28 = *a1;
          }
        }

        else if (v27 == 1)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }
      }

      else
      {
        v28 = 0;
      }

      return v20 + (v28 | v26) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v8 == v20)
  {
    v29 = *(v7 + 48);
    v30 = a1;
    v31 = v8;
    v13 = v6;
LABEL_36:

    return v29(v30, v31, v13);
  }

  v32 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0x80000000) != 0)
  {
    if (v11 != v20)
    {
      v29 = *(v14 + 48);
      v30 = (((v32 + v16 + 17) & ~v16) + v17 + v18) & ~v18;
      v31 = *(v14 + 84);
      goto LABEL_36;
    }

    v34 = *(v10 + 48);

    return v34((v32 + v16 + 17) & ~v16);
  }

  else
  {
    v33 = *(v32 + 8);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void storeEnumTagSinglePayload for AnyPresentDevice(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 64);
  if (v14 <= v17)
  {
    v23 = *(v16 + 84);
  }

  else
  {
    v23 = v14;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22;
  if (a3 <= v24)
  {
    v26 = 0;
  }

  else if (v25 <= 3)
  {
    v29 = ((a3 - v24 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v29))
    {
      v26 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v24 < a2)
  {
    v27 = ~v24 + a2;
    if (v25 < 4)
    {
      v28 = (v27 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v27 & ~(-1 << (8 * v25));
        bzero(a1, ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&a1[v25] = v28;
              }

              else
              {
                *&a1[v25] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v25] = 0;
  }

  else if (v26)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v24)
  {
    v32 = *(v9 + 56);
    v33 = a1;
    v34 = a2;
    v35 = v10;
    v15 = v8;
LABEL_39:

    v32(v33, v34, v35, v15);
    return;
  }

  v36 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v36 = a2 & 0x7FFFFFFF;
      v36[1] = 0;
    }

    else
    {
      v36[1] = (a2 - 1);
    }

    return;
  }

  if (v13 != v24)
  {
    v32 = *(v16 + 56);
    v33 = (((v36 + v19 + 17) & ~v19) + v20 + v21) & ~v21;
    v34 = a2;
    v35 = v17;
    goto LABEL_39;
  }

  v37 = *(v12 + 56);

  v37((v36 + v19 + 17) & ~v19, a2);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t specialized tryLog<A>(_:_:function:line:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

uint64_t specialized tryLog<A>(_:_:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = specialized tryLog<A>(_:_:function:line:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, implicit closure #1 in static CPApplicationController.lookupDefinedSystemActivityIdentifiers(for:));

  return v9;
}

uint64_t tryLog<A>(_:_:function:line:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  a1();
  v4 = *(*(a3 - 8) + 56);

  return v4(a2, 0, 1, a3);
}

unint64_t lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder()
{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder);
  }

  return result;
}

id AuthorizationRequestOverrides.__allocating_init(promptCondition:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v8 = 0;
  v8[1] = 0;
  v3[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v4;
  v3[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

CopresenceCore::AuthorizationRequestOverrides::PromptCondition_optional __swiftcall AuthorizationRequestOverrides.PromptCondition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AuthorizationRequestOverrides.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_title);
  v2 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);

  return v1;
}

uint64_t AuthorizationRequestOverrides.message.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_message);
  v2 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);

  return v1;
}

uint64_t AuthorizationRequestOverrides.startForEveryone.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone);
  v2 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);

  return v1;
}

uint64_t AuthorizationRequestOverrides.startForMe.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe);
  v2 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8);

  return v1;
}

uint64_t AuthorizationRequestOverrides.promptCondition.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AuthorizationRequestOverrides.promptCondition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AuthorizationRequestOverrides.confirmReplacement.getter()
{
  v1 = OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationRequestOverrides.confirmReplacement.setter(char a1)
{
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AuthorizationRequestOverrides.__allocating_init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = *a9;
  v20 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v23 = a7;
  v23[1] = a8;
  v18[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v19;
  v18[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = a10;
  v26.receiver = v18;
  v26.super_class = v10;
  return objc_msgSendSuper2(&v26, sel_init);
}

id AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  v11 = *a9;
  v12 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v14 = a5;
  v14[1] = a6;
  v15 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v15 = a7;
  v15[1] = a8;
  v10[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v11;
  v10[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = a10;
  v17.receiver = v10;
  v17.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v17, sel_init);
}

id AuthorizationRequestOverrides.init(promptCondition:)(char *a1)
{
  v2 = *a1;
  v3 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v2;
  v1[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t AuthorizationRequestOverrides.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v22);
  if (!v22[3])
  {
    outlined destroy of Any?(v22);
    goto LABEL_39;
  }

  type metadata accessor for AuthorizationRequestOverrides();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v19 = 0;
    return v19 & 1;
  }

  v2 = v21;
  v3 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  v4 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title) == *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_title) && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_38;
  }

  v6 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  v7 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_38;
    }

    v8 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message) == *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_message) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v7)
  {
    goto LABEL_38;
  }

  v9 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
  v10 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
  if (v9)
  {
    if (!v10 || (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone) != *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  v11 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8);
  v12 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v12 || (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe) != *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v22);
  v15 = LOBYTE(v22[0]);
  v16 = (*((*v13 & *v21) + 0x80))(&v21, v14);
  if (v15 != v21)
  {
    goto LABEL_38;
  }

  v17 = (*((*v13 & *v1) + 0x98))(v16);
  v18 = (*((*v13 & *v2) + 0x98))();

  v19 = v17 ^ v18 ^ 1;
  return v19 & 1;
}

Swift::Int AuthorizationRequestOverrides.hash.getter()
{
  Hasher.init()();
  if (*(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_title);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8))
  {
    v2 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_message);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8))
  {
    v3 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8))
  {
    v4 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe);
    Hasher._combine(_:)(1u);
    v5 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(&v10, v5);
  v7 = MEMORY[0x1B27111E0](v10);
  v8 = (*((*v6 & *v0) + 0x98))(v7);
  Hasher._combine(_:)(v8 & 1);
  return Hasher.finalize()();
}

id AuthorizationRequestOverrides.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized AuthorizationRequestOverrides.init(coder:)(a1);

  return v4;
}

id AuthorizationRequestOverrides.init(coder:)(void *a1)
{
  v2 = specialized AuthorizationRequestOverrides.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall AuthorizationRequestOverrides.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    v3 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title));
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1B270FF70](0x656C746974, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8))
  {
    v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](0x6567617373656DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8))
  {
    v7 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE327C0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8))
  {
    v9 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe));
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1B270FF70](0x726F467472617473, 0xEA0000000000654DLL);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(&v16);
  v12 = v16;
  v13 = MEMORY[0x1B270FF70](0x6F4374706D6F7270, 0xEF6E6F697469646ELL);
  [(objc_class *)with.super.isa encodeInteger:v12 forKey:v13];

  v14 = (*((*v11 & *v1) + 0x98))();
  v15 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE327E0);
  [(objc_class *)with.super.isa encodeBool:v14 & 1 forKey:v15];
}

id AuthorizationRequestOverrides.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthorizationRequestOverrides.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized AuthorizationRequestOverrides.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSString();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v9 = v6;
  v9[1] = v8;
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v15 = v12;
  v15[1] = v14;
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v21 = v18;
  v21[1] = v20;
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v27 = v24;
  v27[1] = v26;
  v28 = MEMORY[0x1B270FF70](0x6F4374706D6F7270, 0xEF6E6F697469646ELL);
  v29 = [a1 decodeIntegerForKey_];

  v30 = v29 == 1;
  if (v29 == 2)
  {
    v30 = 2;
  }

  v2[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v30;
  v31 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE327E0);
  v32 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = v32;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t lazy protocol witness table accessor for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition()
{
  result = lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition;
  if (!lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition);
  }

  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

id CPAudioRoutePolicyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CPAudioRoutePolicyManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CPAudioRoutePolicyManager.shared;

  return v1;
}

uint64_t CPAudioRoutePolicyManager.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPAudioRoutePolicyManager_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*CPAudioRoutePolicyManager.pickedRoute.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return CPAudioRoutePolicyManager.pickedRoute.modify;
}

void CPAudioRoutePolicyManager.pickedRoute.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CPAudioRoutePolicyManager.pickedRoute.setter(v2);
  }

  else
  {
    CPAudioRoutePolicyManager.pickedRoute.setter(*a1);
  }
}

char *CPAudioRoutePolicyManager.init()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = type metadata accessor for DispatchQoS();
  v6 = *(v28[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v28[0]);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___CPAudioRoutePolicyManager_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo26CPAudioPolicyStateObserver_pGMd, &_s14CopresenceCore16DelegatesManagerCySo26CPAudioPolicyStateObserver_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Lock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  *(v11 + 24) = v12;
  *&v0[v10] = v11;
  v14 = OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo7TURouteCSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo7TURouteCSgSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *&v0[v14] = v15;
  v16 = objc_opt_self();
  v17 = [v16 sharedInstance];
  v18 = [v17 routeController];

  *&v0[OBJC_IVAR___CPAudioRoutePolicyManager_routeController] = v18;
  v19 = type metadata accessor for CPAudioRoutePolicyManager();
  v30.receiver = v0;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = [v16 sharedInstance];
  v22 = [v21 queue];

  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  aBlock[4] = partial apply for closure #1 in CPAudioRoutePolicyManager.init();
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  static DispatchQoS.unspecified.getter();
  v28[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v24);
  _Block_release(v24);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v28[0]);

  v26 = *&v25[OBJC_IVAR___CPAudioRoutePolicyManager_routeController];
  [v26 addDelegate_];

  return v25;
}

void closure #1 in CPAudioRoutePolicyManager.init()(void *a1)
{
  v2 = [*(a1 + OBJC_IVAR___CPAudioRoutePolicyManager_routeController) pickedRoute];
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x88);
    v4 = v2;
    v5 = v2;
    v3(v4);
  }
}

Swift::Void __swiftcall CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v0 - 8);
  v1 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v21 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 queue];

  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v13, v8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v15, v7, v3, v19);
  _Block_release(v19);

  (*(v24 + 8))(v3, v0);
  (*(v22 + 8))(v7, v23);
  v20(v15, v21);
}

void closure #1 in CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x98))() & 1) == 0)
    {
      v2 = OBJC_IVAR___CPAudioRoutePolicyManager_routeController;
      v3 = [*&v1[OBJC_IVAR___CPAudioRoutePolicyManager_routeController] speakerRoute];
      if (v3)
      {
        v4 = v3;
        v5 = *&v1[v2];
        [v5 pickRoute_];
      }
    }
  }
}

uint64_t CPAudioRoutePolicyManager.addObserver(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  (*(*v5 + 160))(a1, a2);
}

id CPAudioRoutePolicyManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPAudioRoutePolicyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CPAudioRoutePolicyManager.routesChanged(for:)(void *a1)
{
  v2 = [a1 pickedRoute];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);

  return v3(v2);
}

uint64_t static ActivitySessionInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ActivitySessionInterface.identity;
  return result;
}

uint64_t static ActivitySessionInterface.identity.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ActivitySessionInterface.identity = v1;
  return result;
}

id one-time initialization function for hostObjectInterface()
{
  result = closure #1 in variable initialization expression of static ActivitySessionInterface.hostObjectInterface();
  static ActivitySessionInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static ConversationManagerInterface.hostObjectInterface();
  static ConversationManagerInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static PresenceSessionInterface.hostObjectInterface();
  static PresenceSessionInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.hostObjectInterface();
  static BackgroundSessionManagerInterface.hostObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivitySessionInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  CPDataCryptorClass();
  *(inited + 32) = swift_getObjCClassMetadata();
  *(inited + 40) = type metadata accessor for SimulatedDataCryptor();
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_joinWithAudioSessionID_completion_ argumentIndex:0 ofReply:1];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v6 + 32) = v44;
  v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *(v6 + 40) = v43;
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_requestEncryptionKeysFor_ argumentIndex:0 ofReply:0];

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AEE07B10;
  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v11 + 32) = v12;
  *(v11 + 40) = type metadata accessor for ParticipantTranslationRequest();
  specialized _arrayForceCast<A, B>(_:)(v11);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v16 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v16 forSelector:sel_requestParticipantTranslationsFor_completion_ argumentIndex:0 ofReply:0];

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AEE07B10;
  *(v17 + 32) = v12;
  *(v17 + 40) = type metadata accessor for ParticipantTranslationResponse();
  specialized _arrayForceCast<A, B>(_:)(v17);
  swift_setDeallocating();
  v18 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v21 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v21 forSelector:sel_requestParticipantTranslationsFor_completion_ argumentIndex:0 ofReply:1];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AEE07B10;
  *(v22 + 32) = v44;
  *(v22 + 40) = type metadata accessor for GroupActivityAssociation();
  specialized _arrayForceCast<A, B>(_:)(v22);
  swift_setDeallocating();
  v23 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v26 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v26 forSelector:sel_setGroupActivityAssociations_ argumentIndex:0 ofReply:0];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AEE07B10;
  *(v27 + 32) = v12;
  *(v27 + 40) = v43;
  specialized _arrayForceCast<A, B>(_:)(v27);
  swift_setDeallocating();
  v28 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v31 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v31 forSelector:sel_sendResourceAtURL_to_metadata_completion_ argumentIndex:1 ofReply:0];

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AEE07B10;
  *(v32 + 32) = v44;
  *(v32 + 40) = type metadata accessor for TUExternalParticipant();
  specialized _arrayForceCast<A, B>(_:)(v32);
  swift_setDeallocating();
  v33 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v33 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v36 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v36 forSelector:sel_updateParticipantsInfoFor_ argumentIndex:0 ofReply:0];

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AEE07B30;
  *(v37 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v37 + 40) = v44;
  *(v37 + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v37 + 56) = v43;
  specialized _arrayForceCast<A, B>(_:)(v37);
  swift_setDeallocating();
  v38 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = [v38 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v41 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v41 forSelector:sel_addAnalyticsReport_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static ActivitySessionInterface.hostObjectInterface.modify())()
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

id one-time initialization function for clientObjectInterface()
{
  result = closure #1 in variable initialization expression of static ActivitySessionInterface.clientObjectInterface();
  static ActivitySessionInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static ConversationManagerInterface.clientObjectInterface();
  static ConversationManagerInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static PresenceSessionInterface.clientObjectInterface();
  static PresenceSessionInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.clientObjectInterface();
  static BackgroundSessionManagerInterface.clientObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivitySessionInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  CPDataCryptorClass();
  *(inited + 32) = swift_getObjCClassMetadata();
  *(inited + 40) = type metadata accessor for SimulatedDataCryptor();
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_setDataCryptor_ argumentIndex:0 ofReply:0];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  *(v6 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v6 + 40) = type metadata accessor for TUExternalParticipant();
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_setExternalParticipants_ argumentIndex:0 ofReply:0];

  return v0;
}

id static ActivitySessionInterface.hostObjectInterface.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void static ActivitySessionInterface.hostObjectInterface.setter(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static ActivitySessionInterface.clientObjectInterface.modify())()
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.terminatingHandle.modify;
}

id key path getter for static ActivitySessionInterface.hostObjectInterface : ActivitySessionInterface.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void key path setter for static ActivitySessionInterface.hostObjectInterface : ActivitySessionInterface.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v7 = *a5;
  v8 = *a1;
  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v8;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance ActivitySessionInterface@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ActivitySessionInterface.identity;
  return result;
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance ActivitySessionInterface(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;

  return v5;
}

uint64_t BackgroundSessionCreationRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundSessionCreationRequest.localMember.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  v2 = *(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember + 8);
  return swift_unknownObjectRetain();
}

id BackgroundSessionCreationRequest.__allocating_init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  *&v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = a2;
  *&v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = a3;
  v17 = &v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v17 = a4;
  v17[1] = a5;
  v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = a6;
  v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = a7;
  v22.receiver = v13;
  v22.super_class = v7;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  (*(v16 + 8))(a1, v15);
  return v18;
}

id BackgroundSessionCreationRequest.init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v14 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a1, v15);
  *&v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = a2;
  *&v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = a3;
  v17 = &v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v17 = a4;
  v17[1] = a5;
  v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = a6;
  v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = a7;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for BackgroundSessionCreationRequest();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v16 + 8))(a1, v15);
  return v18;
}

uint64_t type metadata accessor for BackgroundSessionCreationRequest()
{
  result = type metadata singleton initialization cache for BackgroundSessionCreationRequest;
  if (!type metadata singleton initialization cache for BackgroundSessionCreationRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BackgroundSessionCreationRequest.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v15);
  if (v16)
  {
    type metadata accessor for BackgroundSessionCreationRequest();
    if (swift_dynamicCast())
    {
      if (static UUID.== infix(_:_:)())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v2 = v1;
        v3 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest);
        v4 = *&v14[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest];
        v5 = static NSObject.== infix(_:_:)();

        if (v5)
        {
          v6 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_members);
          v7 = *&v14[OBJC_IVAR___CPBackgroundSessionCreationRequest_members];

          LOBYTE(v6) = _sSh2eeoiySbShyxG_ABtFZSo8TUHandleC_Tt1g5(v6, v7);

          if (v6)
          {
            v8 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
            v9 = *&v14[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
            if ((TUObjectsAreEqualOrNil() & 1) != 0 && *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount) == v14[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount])
            {
              v12 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles);
              v13 = v14[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles];

              v10 = v12 ^ v13 ^ 1;
              return v10 & 1;
            }
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of Any?(v15);
  }

  v10 = 0;
  return v10 & 1;
}

Swift::Int BackgroundSessionCreationRequest.hash.getter()
{
  v1 = v0;
  Hasher.init()();
  v2 = UUID.hashValue.getter();
  MEMORY[0x1B27111E0](v2);
  MEMORY[0x1B27111E0]([*(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest) hash]);
  v3 = *(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_members);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v4 = Set.hashValue.getter();
  MEMORY[0x1B27111E0](v4);
  v5 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  if (v5)
  {
    v6 = [v5 hash];
    Hasher._combine(_:)(1u);
    MEMORY[0x1B27111E0](v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount));
  Hasher._combine(_:)(*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles));
  return Hasher.finalize()();
}

id BackgroundSessionCreationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  (*(v9 + 56))(v7, 1, 1, v8);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_12;
  }

  v18 = *(v9 + 32);
  v18(v13, v7, v8);
  v18(v15, v13, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v19)
  {
    (*(v9 + 8))(v15, v8);
LABEL_12:

    goto LABEL_13;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v21 = swift_allocObject();
  v38 = xmmword_1AEE07B10;
  *(v21 + 16) = xmmword_1AEE07B10;
  *(v21 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v21 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  NSCoder.decodeObject(of:forKey:)();

  if (!v43)
  {
    (*(v9 + 8))(v15, v8);

    outlined destroy of Any?(v42);
LABEL_13:
    type metadata accessor for BackgroundSessionCreationRequest();
    v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v9 + 8))(v15, v8);

    goto LABEL_12;
  }

  v22 = v39;
  (*(v9 + 16))(&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_id], v15, v8);
  *&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = v20;
  *&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v38;
  *(v23 + 32) = type metadata accessor for AccountMember();
  *(v23 + 40) = type metadata accessor for AddressableMember();
  v24 = v20;
  NSCoder.decodeObject(of:forKey:)();

  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
    v25 = swift_dynamicCast();
    v26 = v39;
    v27 = v40;
    if (!v25)
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v42);
    v26 = 0;
    v27 = 0;
  }

  v31 = &v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v31 = v26;
  v31[1] = v27;
  v32 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  v33 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = v33;
  v34 = MEMORY[0x1B270FF70](0xD00000000000001ALL, 0x80000001AEE32970);
  v35 = [a1 decodeBoolForKey_];

  (*(v9 + 8))(v15, v8);
  v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = v35;
  v36 = type metadata accessor for BackgroundSessionCreationRequest();
  v41.receiver = v2;
  v41.super_class = v36;
  v37 = objc_msgSendSuper2(&v41, sel_init);

  return v37;
}

Swift::Void __swiftcall BackgroundSessionCreationRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest);
  v7 = MEMORY[0x1B270FF70](0xD000000000000016, 0x80000001AEE32950);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_members);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v9 = Set._bridgeToObjectiveC()().super.isa;
  v10 = MEMORY[0x1B270FF70](0x737265626D656DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  swift_unknownObjectRetain();
  v12 = MEMORY[0x1B270FF70](0x6D654D6C61636F6CLL, 0xEB00000000726562);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount);
  v14 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles);
  v16 = MEMORY[0x1B270FF70](0xD00000000000001ALL, 0x80000001AEE32970);
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];
}

uint64_t BackgroundSessionCreationRequest.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0x203A666C657320, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](1029990688, 0xE400000000000000);

  _StringGuts.grow(_:)(26);

  v18[0] = 0xD000000000000018;
  v18[1] = 0x80000001AEE32990;
  v4 = [*(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1B2710020](v5, v7);

  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE32990);

  strcpy(v18, " members=");
  WORD1(v18[1]) = 0;
  HIDWORD(v18[1]) = -385875968;
  v8 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_members);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v9 = Set.description.getter();
  MEMORY[0x1B2710020](v9);

  MEMORY[0x1B2710020](v18[0], v18[1]);

  strcpy(v18, " localHandle=");
  HIWORD(v18[1]) = -4864;
  if (*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember))
  {
    v15 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
    v17 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember + 8);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1B2710020](v10, v12);

  MEMORY[0x1B2710020](v18[0], v18[1]);

  _StringGuts.grow(_:)(18);

  v18[0] = 0xD000000000000010;
  v18[1] = 0x80000001AEE32110;
  v16 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount);
  v13 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v13);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE32110);

  if (*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles) == 1)
  {
    MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE329B0);
  }

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return v19;
}

id BackgroundSessionCreationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundSessionCreationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundSessionCreationRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for BackgroundSessionCreationRequest()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      UInt64._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v7 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      outlined init with take of Any(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B2710B10](i, a1);
        type metadata accessor for _CDInteraction();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for _CDInteraction();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B2710B10](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v11 = *v8;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_dynamicCast();
        v13 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v10 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  specialized _arrayForceCast<A, B>(_:)(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v12 = Set._bridgeToObjectiveC()().super.isa;

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

unint64_t type metadata accessor for _CDInteraction()
{
  result = lazy cache variable for type metadata for _CDInteraction;
  if (!lazy cache variable for type metadata for _CDInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _CDInteraction);
  }

  return result;
}

uint64_t one-time initialization function for foregroundApplicationChanged()
{
  result = MEMORY[0x1B270FF70](0xD00000000000002ALL, 0x80000001AEE32B40);
  static NSNotificationName.foregroundApplicationChanged = result;
  return result;
}

id static NSNotificationName.foregroundApplicationChanged.getter()
{
  if (one-time initialization token for foregroundApplicationChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.foregroundApplicationChanged;

  return v1;
}

uint64_t CPForegroundApplication.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPForegroundApplication_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___CPForegroundApplication_bundleIdentifier + 8);

  return v1;
}

id CPForegroundApplication.featureFlags.getter()
{
  v1 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CPForegroundApplication.featureFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPForegroundApplication.localizedApplicationName.getter()
{
  v0 = CPForegroundApplication.applicationRecord.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v10._object = 0xE000000000000000;
    v5.value._countAndFlagsBits = 0x6E65736572706F43;
    v5.value._object = 0xEE0065726F436563;
    v6._object = 0x80000001AEE32A60;
    v6._countAndFlagsBits = 0xD000000000000010;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v2, v7, v10)._countAndFlagsBits;
  }

  v8 = countAndFlagsBits;

  return v8;
}

id CPForegroundApplication.applicationRecord.getter()
{
  v1 = *&v0[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  v2 = *&v0[OBJC_IVAR___CPForegroundApplication_bundleIdentifier + 8];
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v2, 1);
  if (!result)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, &v11);
      _os_log_impl(&dword_1AEB26000, v7, v8, "Unable to get application record for bundle identifier: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    return 0;
  }

  return result;
}

BOOL CPForegroundApplication.isGameCenterApplication.getter()
{
  v1 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  if ([*(v0 + v1) gameCenterSharePlayIntegration] && (v2 = CPForegroundApplication.applicationRecord.getter()) != 0)
  {
    v3 = v2;
    v4 = [v2 entitlements];

    v5 = LSPropertyList.containsAnyGameCenterEntitlements()();
  }

  else
  {
    return 0;
  }

  return v5;
}

id CPForegroundApplication.__allocating_init(bundleIdentifier:applicationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  *&v7[v8] = [objc_allocWithZone(CPFeatureFlags) init];
  v9 = &v7[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v7[OBJC_IVAR___CPForegroundApplication_applicationType] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id CPForegroundApplication.init(bundleIdentifier:applicationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  *&v3[v8] = [objc_allocWithZone(CPFeatureFlags) init];
  v9 = &v3[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___CPForegroundApplication_applicationType] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id CPForegroundApplication.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPForegroundApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Cache.WrappedKey.__allocating_init(_:)(uint64_t a1)
{
  v3 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

id Cache.WrappedKey.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized Cache.WrappedKey.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t @objc Cache.WrappedKey.hash.getter(void *a1)
{
  v1 = a1;
  v2 = Cache.WrappedKey.hash.getter();

  return v2;
}

uint64_t Cache.WrappedKey.hash.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t Cache.WrappedKey.isEqual(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  outlined init with copy of Any?(a1, v13);
  if (!v14)
  {
    outlined destroy of Any?(v13);
    goto LABEL_5;
  }

  v5 = v3[10];
  v4 = v3[11];
  v6 = v3[12];
  type metadata accessor for Cache.WrappedKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v7 = *((*v2 & *v1) + 0x68);
  v8 = *((*v12 & *v2) + 0x68);
  v9 = *(v6 + 8);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v10 & 1;
}

uint64_t @objc Cache.WrappedKey.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = Cache.WrappedKey.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

id Cache.WrappedKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t Cache.WrappedValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedValue, specialized Cache.WrappedValue.init(_:));
  (*(*(*(v1 + 88) - 8) + 8))(a1);
  return v3;
}

id Cache.WrappedValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized Cache.WrappedValue.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(a1);
  return v5;
}

id Cache.WrappedKey.__deallocating_deinit(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  type metadata accessor for Cache.WrappedKey();
  v10 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
  v11 = [v6 objectForKey_];

  if (v11)
  {
    v16 = *(v8 - 8);
    (*(v16 + 16))(a3, &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0x68)], v8);

    v12 = v16;
    v13 = 0;
  }

  else
  {
    v12 = *(v8 - 8);
    v13 = 1;
  }

  v14 = *(v12 + 56);

  return v14(a3, v13, 1, v8);
}

uint64_t key path getter for Cache.subscript(_:) : <A, B>Cache<A, B>AB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 24);
  v8 = *(v6 - 16);
  v9 = *(v6 - 8);
  v12 = *a1;
  v10 = type metadata accessor for Cache();
  return Cache.subscript.getter(a2, v10, a4);
}

uint64_t key path setter for Cache.subscript(_:) : <A, B>Cache<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - v13;
  v15 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3, v6);
  (*(v10 + 16))(v14, a1, v9);
  v19 = type metadata accessor for Cache();
  return Cache.subscript.setter(v14, v17, v19);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    v18 = *(v9 + 8);
    v18(v13, v8);
    v19 = *v3;
    v20 = a3[2];
    v21 = a3[4];
    type metadata accessor for Cache.WrappedKey();
    v22 = specialized Cache.WrappedKey.__allocating_init(_:)(a2, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
    [v19 removeObjectForKey_];

    (*(*(v20 - 8) + 8))(a2, v20);
    return (v18)(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v17, v13, v7);
    v29 = *v3;
    v30 = a1;
    v24 = a3[2];
    v25 = a3[4];
    type metadata accessor for Cache.WrappedValue();
    v26 = a2;
    v27 = specialized Cache.WrappedKey.__allocating_init(_:)(v17, type metadata accessor for Cache.WrappedValue, specialized Cache.WrappedValue.init(_:));
    type metadata accessor for Cache.WrappedKey();
    v28 = specialized Cache.WrappedKey.__allocating_init(_:)(v26, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
    [v29 setObject:v27 forKey:v28];

    (*(*(v24 - 8) + 8))(v26, v24);
    (*(v9 + 8))(v30, v8);
    return (*(v14 + 8))(v17, v7);
  }
}

void (*Cache.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = a3[3];
  v11 = type metadata accessor for Optional();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v9[5] = v14;
  v16 = a3[2];
  v9[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v9[7] = v17;
  v19 = *(v17 + 64);
  if (v7)
  {
    v9[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v9[8] = malloc(*(v17 + 64));
    v20 = malloc(v19);
  }

  v9[9] = v20;
  (*(v18 + 16))();
  v22 = *v3;
  Cache.subscript.getter(a2, a3, v15);
  return Cache.subscript.modify;
}

void Cache.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v13 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v13);
    Cache.subscript.setter(v7, v3, v11);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v12 = v2[1];
    Cache.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

id specialized Cache.WrappedKey.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x60);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for Cache.WrappedKey();
  return objc_msgSendSuper2(&v7, sel_init);
}

id specialized Cache.WrappedValue.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4 = *((v3 & v2) + 0x50);
  v5 = *((v3 & v2) + 0x60);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for Cache.WrappedValue();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata instantiation function for Cache()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Cache(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Cache(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for Cache.WrappedKey(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t type metadata completion function for Cache.WrappedValue(uint64_t a1)
{
  v1 = *(a1 + 88);
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

unint64_t Notification.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000056;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

CopresenceCore::Notification_optional __swiftcall Notification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Notification.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CopresenceCore_Notification_conversationManagerHostShouldConnectIfCanBypassSharePlayRestriction;
  }

  else
  {
    v4.value = CopresenceCore_Notification_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Notification(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000056;
  }

  else
  {
    v4 = 0xD00000000000003ALL;
  }

  if (v3)
  {
    v5 = "com.apple.facetime";
  }

  else
  {
    v5 = "nmanagerhost.shouldconnect";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000056;
  }

  else
  {
    v7 = 0xD00000000000003ALL;
  }

  if (*a2)
  {
    v8 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v8 = "com.apple.facetime";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

unint64_t lazy protocol witness table accessor for type Notification and conformance Notification()
{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Notification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Notification()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Notification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Notification@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Notification.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Notification(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000056;
  }

  else
  {
    v2 = 0xD00000000000003ALL;
  }

  if (*v1)
  {
    v3 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v3 = "com.apple.facetime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void *PubSubTopicReporter.__allocating_init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = v7;
  return result;
}

uint64_t PubSubTopicReporter.reportReadyCallback.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *PubSubTopicReporter.init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v4;
  return v3;
}

uint64_t PubSubTopicReporter.getOrCreateConversationReport(tag:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[2];
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = (*(*v3 + 104))(result);
    if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
    }

    else
    {
      type metadata accessor for PubSubTopicReporter.ConversationReport();
      v17 = swift_allocObject();

      PubSubTopicReporter.ConversationReport.init(coversationUUID:)(a1, a2);
    }

    v18 = *(*v3 + 120);

    v19 = v18(v26);
    v21 = v20;
    v22 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v21;
    *v21 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a1, a2, isUniquelyReferenced_nonNull_native);

    *v21 = v25;
    v19(v26, 0);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopicReporter.ConversationReport.__allocating_init(coversationUUID:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PubSubTopicReporter.ConversationReport.init(coversationUUID:)(a1, a2);
  return v4;
}

uint64_t closure #1 in PubSubTopicReporter.recordInitializeAckOkLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v15 = (*(*v13 + 112))(v14);
    if (v15)
    {
      if ((*(*v15 + 256))(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, ::log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          log = v17;
          v22 = swift_slowAlloc();
          v20 = v22;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v22);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
          _os_log_impl(&dword_1AEB26000, log, v18, "[Reporter] InitializeAckOk latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t PubSubTopicReporter.recordInitializeAckOkLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v28 = a1;
  v29 = a4;
  v27 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v8 + 16);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v27;
  v21[2] = v20;
  v21[3] = v22;
  v23 = v28;
  v24 = v29;
  v21[4] = a3;
  v21[5] = v24;
  v21[6] = a5;
  v21[7] = v23;
  aBlock[4] = v30;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v31;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v19, v15, v25);
  _Block_release(v25);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v33);
}

uint64_t closure #1 in PubSubTopicReporter.recordPublishAckLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v14 = *(v13 + 48);
    if (v14)
    {
      v15 = *(*v14 + 256);

      if (v15(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v21);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
          _os_log_impl(&dword_1AEB26000, v17, v18, "[Reporter] Publish-ack latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in PubSubTopicReporter.recordEndToEndRecordLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = *(*v14 + 256);

      if (v15(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v21);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
          _os_log_impl(&dword_1AEB26000, v17, v18, "[Reporter] End-to-end record latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

Swift::Bool __swiftcall PubSubTopicReporter.emitAndRemoveReport(forTag:)(Swift::String forTag)
{
  v2 = v1;
  object = forTag._object;
  countAndFlagsBits = forTag._countAndFlagsBits;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v2[2];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v14 = (*(*v2 + 104))(v13);
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v16 & 1) == 0))
  {

    return 0;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  v12 = (*(*v17 + 128))(v18);
  if (one-time initialization token for log != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, log);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v32);
    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v12 + 16);

    _os_log_impl(&dword_1AEB26000, v20, v21, "[Reporter] Generating ConversationReport for tag=%s rtcReport-count=%ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {
  }

  PubSubTopicReporter.dumpReportSnapshot()();
  v25 = *(v12 + 16);
  if (v25)
  {
    v27 = v2[3];
    v26 = v2[4];
    v28 = (v12 + 32);
    do
    {
      v29 = *v28++;

      v27(countAndFlagsBits, object, v29);

      --v25;
    }

    while (v25);
  }

  v24 = PubSubTopicReporter.removeReport(forTag:)(countAndFlagsBits, object);

  return v24;
}

BOOL PubSubTopicReporter.removeReport(forTag:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v2[2];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v12 = (*(*v2 + 120))(v19);
  v5 = specialized Dictionary._Variant.removeValue(forKey:)(a1, a2);
  v12(v19, 0);
  if (!v5)
  {
    return v5 != 0;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, log);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
    _os_log_impl(&dword_1AEB26000, v14, v15, "[Reporter] Removing ConversationReport for tag=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  return v5 != 0;
}

void PubSubTopicReporter.dumpReportSnapshot()()
{
  v1 = (*(*v0 + 104))();
  v2 = 0;
  v3 = v1 + 64;
  v35 = v1;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = v7;
  v34 = v1 + 64;
LABEL_6:
  if (v6)
  {
    v8 = v2;
  }

  else
  {
    do
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_30;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
    }

    while (!v6);
  }

  v36 = v8;
  v37 = (v6 - 1) & v6;
  v9 = __clz(__rbit64(v6)) | (v8 << 6);
  v10 = (*(v35 + 48) + 16 * v9);
  v40 = *v10;
  v11 = *(**(*(v35 + 56) + 8 * v9) + 88);
  v42 = v10[1];

  v13 = v11(v12);
  v14 = v13;
  v15 = 0;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v38 = v20;
  v39 = v13;
  if (v19)
  {
    while (2)
    {
      v21 = v15;
LABEL_21:
      v22 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
      v23 = one-time initialization token for log;

      if (v23 != -1)
      {
        swift_once();
      }

      v19 &= v19 - 1;
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, log);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      v41 = v26;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136315394;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v43);
        *(v27 + 12) = 2080;
        v29 = (*(*v22 + 152))();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v43);

        *(v27 + 14) = v31;
        v20 = v38;
        _os_log_impl(&dword_1AEB26000, v25, v41, "[Reporter] PubSubTopicReporter tag=%s report=%s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v28, -1, -1);
        v32 = v27;
        v14 = v39;
        MEMORY[0x1B27120C0](v32, -1, -1);

        v15 = v21;
        if (v19)
        {
          continue;
        }
      }

      else
      {

        v15 = v21;
        if (v19)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      v2 = v36;
      v6 = v37;
      v7 = v33;
      v3 = v34;
      goto LABEL_6;
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t PubSubTopicReporter.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PubSubTopicReporter.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t PubSubTopicReporter.ConversationReport.topicReports.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PubSubTopicReporter.ConversationReport.topicReports.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PubSubTopicReporter.ConversationReport.init(coversationUUID:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, log);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v7, v8, "[Reporter] Creating ConversationReport for conversationUUID=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t PubSubTopicReporter.ConversationReport.getOrCreateTopicReport(topic:)(uint64_t a1, unint64_t a2)
{
  v5 = (*(*v2 + 88))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    type metadata accessor for PubSubTopicReporter.PubSubTopicReport();
    v8 = swift_allocObject();

    PubSubTopicReporter.PubSubTopicReport.init(name:)(a1, a2);
  }

  v9 = *(*v2 + 104);

  v10 = v9(v17);
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v12;
  *v12 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, a2, isUniquelyReferenced_nonNull_native);

  *v12 = v16;
  v10(v17, 0);
  return v8;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PubSubTopicReporter.PubSubTopicReport.init(name:)(a1, a2);
  return v4;
}

uint64_t PubSubTopicReporter.ConversationReport.rtcReports.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v18 = v1;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v5)) | (v8 << 6);
        v12 = *(*(v18 + 48) + 16 * v11 + 8);
        v13 = *(**(*(v18 + 56) + 8 * v11) + 144);

        v15 = v13(v14);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        v9[2] = v17 + 1;
        v9[v17 + 4] = v15;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t static PubSubTopicReporter.ConversationReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))();
  v4 = (*(*a2 + 88))();
  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(v3, v4);

  return v5 & 1;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_39;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    v22 = v21[2] == v17[2] && v21[3] == v17[3];
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_39;
    }

    v37 = v10;
    v23 = v2;
    v24 = *(*v21 + 112);

    v26 = v24(v25);
    v27 = (*(*v17 + 112))();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = specialized static Histogram.== infix(_:_:)(v26, v27);

      if ((v28 & 1) == 0)
      {
LABEL_36:

LABEL_39:

        return 0;
      }
    }

    else if (v27)
    {
LABEL_38:

      goto LABEL_39;
    }

    v29 = v21[5];
    v30 = v17[5];
    if (v29)
    {
      if (!v30)
      {
        goto LABEL_36;
      }

      v2 = v23;
      v31 = v17[5];

      v32 = specialized static Histogram.== infix(_:_:)(v29, v30);

      if ((v32 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = v23;
      if (v30)
      {
        goto LABEL_36;
      }
    }

    v33 = v21[6];
    v34 = v17[6];
    if (v33)
    {
      v7 = v37;
      if (!v34)
      {
        goto LABEL_36;
      }

      v35 = v17[6];

      v36 = specialized static Histogram.== infix(_:_:)(v33, v34);

      result = 0;
      if ((v36 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      result = 0;
      v7 = v37;
      if (v34)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(unint64_t result, uint64_t a2)
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SiTt1g5(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_14CopresenceCore017AttachmentLedger_E10EncryptionVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v109 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v100 - v10);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  v12 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v14 = &v100 - v13;
  v15 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v118 = *(v15 - 8);
  v119 = v15;
  v16 = *(v118 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v117 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v100 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v113 = (&v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v25);
  v116 = (&v100 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v111 = v4;
  v112 = v14;
  v104 = a2;
  v105 = v11;
  v29 = 0;
  v30 = *(a1 + 64);
  v101 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v102 = v34;
  v103 = a1;
  v106 = (v5 + 48);
  v107 = 0;
  while (v33)
  {
    v35 = v21;
    v115 = (v33 - 1) & v33;
    v36 = __clz(__rbit64(v33)) | (v29 << 6);
    v37 = v111;
    v38 = v112;
LABEL_16:
    v44 = *(a1 + 56);
    v45 = *(*(a1 + 48) + 8 * v36);
    v46 = v108;
    outlined init with copy of AttachmentLedger_AttachmentEncryption(v44 + *(v118 + 72) * v36, v108);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
    v48 = *(v47 + 48);
    v49 = v113;
    *v113 = v45;
    v50 = v49;
    outlined init with take of AttachmentLedger_AttachmentEncryption(v46, v49 + v48, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
    v21 = v35;
    v41 = v116;
LABEL_17:
    outlined init with take of (key: UInt64, value: AttachmentLedger_AttachmentEncryption)?(v50, v41);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
    v52 = (*(*(v51 - 8) + 48))(v41, 1, v51) == 1;
    result = v52;
    v53 = v117;
    if (v52)
    {
      return result;
    }

    v114 = v52;
    v54 = *(v51 + 48);
    v55 = *v41;
    outlined init with take of AttachmentLedger_AttachmentEncryption(v41 + v54, v21, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
    if ((v57 & 1) == 0)
    {
      goto LABEL_86;
    }

    outlined init with copy of AttachmentLedger_AttachmentEncryption(*(a2 + 56) + *(v118 + 72) * v56, v53);
    v58 = *(v119 + 28);
    v59 = *(v110 + 48);
    outlined init with copy of AttachmentLedger_EncryptionID?(v53 + v58, v38);
    outlined init with copy of AttachmentLedger_EncryptionID?(v21 + v58, v38 + v59);
    v60 = *v106;
    if ((*v106)(v38, 1, v37) == 1)
    {
      if (v60(v38 + v59, 1, v37) != 1)
      {
        goto LABEL_84;
      }

      result = outlined destroy of NSObject?(v38, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      goto LABEL_52;
    }

    v61 = v105;
    outlined init with copy of AttachmentLedger_EncryptionID?(v38, v105);
    if (v60(v38 + v59, 1, v37) == 1)
    {
      outlined destroy of AttachmentLedger_AttachmentEncryption(v61, type metadata accessor for AttachmentLedger_EncryptionID);
      v53 = v117;
LABEL_84:
      outlined destroy of NSObject?(v38, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
      goto LABEL_85;
    }

    v62 = v38 + v59;
    v63 = v109;
    result = outlined init with take of AttachmentLedger_AttachmentEncryption(v62, v109, type metadata accessor for AttachmentLedger_EncryptionID);
    v64 = *v61;
    v65 = v61[1];
    v66 = *v63;
    v67 = v63[1];
    v68 = v65 >> 62;
    v69 = v67 >> 62;
    if (v65 >> 62 == 3)
    {
      v70 = 0;
      if (!v64 && v65 == 0xC000000000000000 && v67 >> 62 == 3)
      {
        v70 = 0;
        if (!v66 && v67 == 0xC000000000000000)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v68)
    {
      if (v68 == 1)
      {
        LODWORD(v70) = HIDWORD(v64) - v64;
        if (__OFSUB__(HIDWORD(v64), v64))
        {
          goto LABEL_97;
        }

        v70 = v70;
      }

      else
      {
        v73 = *(v64 + 16);
        v72 = *(v64 + 24);
        v74 = __OFSUB__(v72, v73);
        v70 = v72 - v73;
        if (v74)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v70 = BYTE6(v65);
    }

    if (v69 <= 1)
    {
      if (v69)
      {
        LODWORD(v75) = HIDWORD(v66) - v66;
        if (__OFSUB__(HIDWORD(v66), v66))
        {
          goto LABEL_95;
        }

        v75 = v75;
      }

      else
      {
        v75 = BYTE6(v67);
      }

LABEL_46:
      if (v70 != v75 || v70 >= 1 && (outlined copy of Data._Representation(v66, v67), v78 = v107, v79 = specialized Data.withUnsafeBytes<A>(_:)(v64, v65, v66, v67), v107 = v78, (v79 & 1) == 0))
      {
LABEL_82:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v109, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_AttachmentEncryption(v105, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v112, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        v53 = v117;
LABEL_85:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v53, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_86:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v21, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        return 0;
      }

      goto LABEL_51;
    }

    if (v69 == 2)
    {
      v77 = *(v66 + 16);
      v76 = *(v66 + 24);
      v74 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (v74)
      {
        goto LABEL_94;
      }

      goto LABEL_46;
    }

    if (v70)
    {
      goto LABEL_82;
    }

LABEL_51:
    v80 = *(v111 + 20);
    type metadata accessor for UnknownStorage();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v81 = v105;
    v82 = v109;
    v83 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_AttachmentEncryption(v82, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of AttachmentLedger_AttachmentEncryption(v81, type metadata accessor for AttachmentLedger_EncryptionID);
    result = outlined destroy of NSObject?(v112, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v53 = v117;
    if ((v83 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_52:
    v84 = *v53;
    v85 = v53[1];
    v87 = *v21;
    v86 = v21[1];
    v88 = v85 >> 62;
    v89 = v86 >> 62;
    if (v85 >> 62 == 3)
    {
      v90 = 0;
      if (!v84 && v85 == 0xC000000000000000 && v86 >> 62 == 3)
      {
        v90 = 0;
        if (!v87 && v86 == 0xC000000000000000)
        {
          goto LABEL_78;
        }
      }

LABEL_65:
      if (v89 <= 1)
      {
        goto LABEL_66;
      }

      goto LABEL_71;
    }

    if (v88 == 2)
    {
      v92 = *(v84 + 16);
      v91 = *(v84 + 24);
      v74 = __OFSUB__(v91, v92);
      v90 = v91 - v92;
      if (v74)
      {
        goto LABEL_92;
      }

      goto LABEL_65;
    }

    if (v88 == 1)
    {
      LODWORD(v90) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_93;
      }

      v90 = v90;
      if (v89 <= 1)
      {
LABEL_66:
        if (v89)
        {
          LODWORD(v93) = HIDWORD(v87) - v87;
          if (__OFSUB__(HIDWORD(v87), v87))
          {
            goto LABEL_91;
          }

          v93 = v93;
        }

        else
        {
          v93 = BYTE6(v86);
        }

        goto LABEL_73;
      }
    }

    else
    {
      v90 = BYTE6(v85);
      if (v89 <= 1)
      {
        goto LABEL_66;
      }
    }

LABEL_71:
    if (v89 != 2)
    {
      if (v90)
      {
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    v95 = *(v87 + 16);
    v94 = *(v87 + 24);
    v74 = __OFSUB__(v94, v95);
    v93 = v94 - v95;
    if (v74)
    {
      goto LABEL_90;
    }

LABEL_73:
    if (v90 != v93)
    {
      goto LABEL_85;
    }

    if (v90 >= 1)
    {
      outlined copy of Data._Representation(*v21, v21[1]);
      v96 = v107;
      v97 = specialized Data.withUnsafeBytes<A>(_:)(v84, v85, v87, v86);
      v107 = v96;
      if ((v97 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_78:
    if (v53[2] != v21[2])
    {
      goto LABEL_85;
    }

    v98 = *(v119 + 24);
    type metadata accessor for UnknownStorage();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v99 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_AttachmentEncryption(v53, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    outlined destroy of AttachmentLedger_AttachmentEncryption(v21, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    a1 = v103;
    a2 = v104;
    v34 = v102;
    v33 = v115;
    result = v114;
    if ((v99 & 1) == 0)
    {
      return result;
    }
  }

  if (v34 <= v29 + 1)
  {
    v39 = v29 + 1;
  }

  else
  {
    v39 = v34;
  }

  v40 = v39 - 1;
  v37 = v111;
  v38 = v112;
  v41 = v116;
  while (1)
  {
    v42 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v42 >= v34)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
      v50 = v113;
      (*(*(v71 - 8) + 56))(v113, 1, 1, v71);
      v115 = 0;
      v29 = v40;
      goto LABEL_17;
    }

    v43 = *(v101 + 8 * v42);
    ++v29;
    if (v43)
    {
      v35 = v21;
      v115 = (v43 - 1) & v43;
      v36 = __clz(__rbit64(v43)) | (v42 << 6);
      v29 = v42;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t PubSubTopicReporter.ConversationReport.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PubSubTopicReporter.ConversationReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopicReporter.ConversationReport(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))();
  v4 = (*(*v2 + 88))();
  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(v3, v4);

  return v5 & 1;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.initializeAckOkLatency.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PubSubTopicReporter.PubSubTopicReport.initializeAckOkLatency.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *PubSubTopicReporter.PubSubTopicReport.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = type metadata accessor for Histogram();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v2[4] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultPubSubInitializeAckLatencyBuckets, v9);
  v11(v9, 1, 1, v10);
  v15 = *(v12 + 48);
  v16 = *(v12 + 52);
  swift_allocObject();
  v2[5] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultAVCLatencyBuckets, v9);
  v11(v9, 1, 1, v10);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v2[6] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultAVCLatencyBuckets, v9);
  v2[2] = a1;
  v2[3] = a2;
  v19 = one-time initialization token for log;

  if (v19 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, log);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v27);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v20, v21, "[Reporter] Creating PubSubTopicReport for topic=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.rtcReport.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v21 = MEMORY[0x1E69E7CC8];
  v3 = (*(*v0 + 112))();
  v4 = MEMORY[0x1E69E6158];
  if (v3)
  {
    v5 = Histogram.rtcRepresentation.getter();
    v7 = v6;

    v20 = v4;
    *&v19 = v5;
    *(&v19 + 1) = v7;
    outlined init with take of Any(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000020, 0x80000001AEE2EC00, isUniquelyReferenced_nonNull_native);
    v21 = v2;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000001AEE2EC00, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
  }

  if (v0[5])
  {
    v9 = Histogram.rtcRepresentation.getter();
    v20 = v4;
    *&v19 = v9;
    *(&v19 + 1) = v10;
    outlined init with take of Any(&v19, v18);
    v11 = v21;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000001FLL, 0x80000001AEE2EC30, v12);
    v21 = v11;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001FLL, 0x80000001AEE2EC30, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
  }

  if (v1[6])
  {
    v13 = Histogram.rtcRepresentation.getter();
    v20 = v4;
    *&v19 = v13;
    *(&v19 + 1) = v14;
    outlined init with take of Any(&v19, v18);
    v15 = v21;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000020, 0x80000001AEE2EC50, v16);
    return v15;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000001AEE2EC50, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
    return v21;
  }
}

unint64_t PubSubTopicReporter.PubSubTopicReport.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  MEMORY[0x1B2710020](v0[2], v0[3]);
  _StringGuts.grow(_:)(27);

  v4 = (*(*v0 + 112))(v3);
  if (v4)
  {
    (*(*v4 + 296))(v4);

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1B2710020](v5, v7);

  _StringGuts.grow(_:)(26);

  v9 = v0[5];
  if (v9)
  {
    (*(*v9 + 296))(v8);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1B2710020](v10, v12);

  _StringGuts.grow(_:)(22);

  v14 = v1[6];
  if (v14)
  {
    (*(*v14 + 296))(v13);
    v2 = String.init<A>(reflecting:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1B2710020](v2, v16);

  _StringGuts.grow(_:)(30);

  MEMORY[0x1B2710020](0x3D656D616ELL, 0xE500000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE32BD0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE32BF0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE32C10);

  return 0xD000000000000013;
}

void *PubSubTopicReporter.PubSubTopicReport.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t specialized static PubSubTopicReporter.PubSubTopicReport.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = (*(*a1 + 112))();
  v6 = (*(*a2 + 112))();
  if (v5)
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_19;
    }

    v7 = specialized static Histogram.== infix(_:_:)(v5, v6);

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    v8 = 0;
LABEL_19:

    return v8 & 1;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_21:
    v8 = 0;
    return v8 & 1;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = a2[5];

  v12 = specialized static Histogram.== infix(_:_:)(v9, v10);

  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v13 = a1[6];
  v14 = a2[6];
  v8 = (v13 | v14) == 0;
  if (v13 && v14)
  {

    v8 = specialized static Histogram.== infix(_:_:)(v13, v14);
    goto LABEL_19;
  }

  return v8 & 1;
}

uint64_t outlined init with copy of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UInt64, value: AttachmentLedger_AttachmentEncryption)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AttachmentLedger_EncryptionID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14);
      swift_unknownObjectRelease();
      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of NSObject?(a1, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    v15 = *v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return outlined destroy of NSObject?(v9, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v15 = *v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v21 = v26;
      }

      outlined init with take of AttachmentLedger_AttachmentEncryption(*(v21 + 56) + *(v11 + 72) * v18, v9);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return outlined destroy of NSObject?(v9, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  else
  {
    outlined init with take of AttachmentLedger_AttachmentEncryption(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of NSObject?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v15 = *v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of ContiguousBytes(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore16ProcessAssertion_pSgMd, &_s14CopresenceCore16ProcessAssertion_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of NSObject?(v10, &_s14CopresenceCore16ProcessAssertion_pSgMd, &_s14CopresenceCore16ProcessAssertion_pSgMR);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v28;
  }

  else
  {
    v12 = *v3;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v29 = *v4;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = (*(v18 + 56) + 16 * v15);
      v25 = *v23;
      v24 = v23[1];

      specialized _NativeDictionary._delete(at:)(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 8);

      return v27(a3, v26);
    }
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of ContiguousBytes(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of NSObject?(v10, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v5 = v23[1];
    v6 = v23[2];
    v7 = v23[3];
    v8 = v23[4];
    v9 = v23[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  while (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v22 = v18, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v17 = v23[0], v15 = v8, v16 = v9, !v23[0]))
    {
LABEL_23:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

LABEL_19:
    v23[0] = v17;
    a1(&v22, v23);
    if (v4)
    {

      outlined consume of Set<String>.Iterator._Variant();

      return;
    }

    if (v22)
    {
      MEMORY[0x1B2710150]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
    v5 = v21;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    result = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant();
      return v9;
    }

    while (1)
    {
      v15 = [v14 handle];
      v16 = [v15 value];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v4 = v12;
      v5 = v13;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, 255, type metadata accessor for AddressableMember);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v3;
  v18 = MEMORY[0x1E69E7CC0];
  v16 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      while (1)
      {
        AddressableMember.idsDestination.getter();

        if (v19)
        {
          break;
        }

        MEMORY[0x1B2710150]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v26;
        v5 = v12;
        v6 = v13;
        v1 = v16;
        v3 = v17;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for AddressableMember();
          swift_dynamicCast();
          v14 = v20;
          v12 = v5;
          v13 = v6;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      outlined consume of Set<String>.Iterator._Variant();
    }

    else
    {
LABEL_21:
      outlined consume of Set<String>.Iterator._Variant();
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= ((v4 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v11 = *(v3 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v4;
    v12 = v6;
    v13 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      v16 = type metadata accessor for AddressableMember();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v15;
      v20.receiver = v17;
      v20.super_class = v16;
      objc_msgSendSuper2(&v20, sel_init);
      MEMORY[0x1B2710150]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v26;
      v4 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for TUHandle();
        swift_dynamicCast();
        v15 = v19;
        v13 = v4;
        v14 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v4;
    v12 = v6;
    v13 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      v16 = type metadata accessor for AddressableMember();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v15;
      v20.receiver = v17;
      v20.super_class = v16;
      objc_msgSendSuper2(&v20, sel_init);
      MEMORY[0x1B2710150]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v26;
      v4 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for TUHandle();
        swift_dynamicCast();
        v15 = v19;
        v13 = v4;
        v14 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_11:
    v14 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v14[1];
    v19[0] = *v14;
    v19[1] = v15;

    a1(&v18, v19);
    if (v3)
    {

      return v5;
    }

    if (v18)
    {
      MEMORY[0x1B2710150](result);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v20;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo29TUConversationActivitySessionCG_14CopresenceCore05BiomeF7DonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV0eF0Vs5NeverOTg504_s14g6Core19ifj3C32kl14Information33_nopqrst39LLV16activitySessions7membersAFShySo022dE29D0CG_SaySSGtcfcAF0tD0VAJXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v3 = v50;
    if (v42)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(v1 + 36);
    }

    v47 = v4;
    v48 = v5;
    v49 = v42 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v39 = v1 + 56;
      v38 = v1 + 64;
      v40 = v2;
      v41 = v1;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_38;
        }

        v10 = v47;
        v11 = v49;
        v43 = v48;
        specialized Set.subscript.getter(v47, v48, v49, v1);
        v13 = v12;
        v14 = [v12 activity];
        v15 = [v14 bundleIdentifier];

        if (v15)
        {
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v17;
          v45 = v16;
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        v18 = [v13 activity];
        v19 = [v18 activityIdentifier];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [v13 state];
        v24 = v3;
        v50 = v3;
        v25 = *(v3 + 16);
        v26 = *(v24 + 24);
        if (v25 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1);
          v24 = v50;
        }

        *(v24 + 16) = v25 + 1;
        v27 = v24 + 40 * v25;
        *(v27 + 32) = v45;
        *(v27 + 40) = v44;
        *(v27 + 48) = v20;
        *(v27 + 56) = v22;
        *(v27 + 64) = v23 == 1;
        if (v42)
        {
          v1 = v41;
          if (!v11)
          {
            goto LABEL_43;
          }

          v3 = v24;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo29TUConversationActivitySessionC_GMd, &_sSh5IndexVySo29TUConversationActivitySessionC_GMR);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(v46, 0);
          if (v7 == v40)
          {
LABEL_35:
            outlined consume of Set<AddressableMember>.Index._Variant(v47, v48, v49);
            return;
          }
        }

        else
        {
          v1 = v41;
          if (v11)
          {
            goto LABEL_44;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v28 = 1 << *(v41 + 32);
          if (v10 >= v28)
          {
            goto LABEL_39;
          }

          v3 = v24;
          v29 = v10 >> 6;
          v30 = *(v39 + 8 * (v10 >> 6));
          if (((v30 >> v10) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v41 + 36) != v43)
          {
            goto LABEL_41;
          }

          v31 = v30 & (-2 << (v10 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v40;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v38 + 8 * v29);
            v2 = v40;
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v10, v43, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_34;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v10, v43, 0);
          }

LABEL_34:
          v37 = *(v41 + 36);
          v47 = v28;
          v48 = v37;
          v49 = 0;
          if (v7 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t key path getter for BiomeSessionDonator.biomeStreamSender : BiomeSessionDonator@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for BiomeSessionDonator.biomeStreamSender : BiomeSessionDonator(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t BiomeSessionDonator.biomeStreamSender.getter()
{
  v1 = (v0 + OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v3;
}

uint64_t BiomeSessionDonator.biomeStreamSender.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6);
}

char *BiomeSessionDonator.init(dataSource:parentQueue:)(void *a1, void *a2)
{
  v3 = v2;
  v36 = a2;
  v37 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = OBJC_IVAR___CPBiomeSessionDonator_publishQueue;
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v30[0] = "publishAckLatency";
  v30[1] = v13;
  static DispatchQoS.utility.getter();
  v40 = MEMORY[0x1E69E7CC0];
  v34 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v32 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = *MEMORY[0x1E69E8090];
  v15 = *(v39 + 104);
  v39 += 104;
  v31 = v15;
  v16 = v8;
  v15(v8, v14, v38);
  *&v35[v2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR___CPBiomeSessionDonator_biomeStream;
  v18 = v3;
  *&v3[v17] = [objc_allocWithZone(MEMORY[0x1E698F290]) init];
  v19 = &v3[OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR___CPBiomeSessionDonator_oldConversationInformation;
  v21 = MEMORY[0x1E69E7CC0];
  *&v18[v20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v35 = v36;
  static DispatchQoS.unspecified.getter();
  v40 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31(v16, v14, v38);
  *&v18[OBJC_IVAR___CPBiomeSessionDonator_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = type metadata accessor for BiomeSessionDonator();
  v41.receiver = v18;
  v41.super_class = v22;
  v23 = objc_msgSendSuper2(&v41, sel_init);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = &v23[OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender];
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = partial apply for closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:);
  v25[1] = v24;
  v28 = v23;

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v26);

  [v37 addObserver:v28 queue:*&v28[OBJC_IVAR___CPBiomeSessionDonator_queue]];
  swift_unknownObjectRelease();

  return v28;
}

uint64_t closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(result + OBJC_IVAR___CPBiomeSessionDonator_publishQueue);
    v22 = v9;
    v16 = result;
    v21 = v15;

    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_26;
    v18 = _Block_copy(aBlock);

    v19 = a1;
    static DispatchQoS.unspecified.getter();
    v23 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v21;
    MEMORY[0x1B27106E0](0, v13, v8, v18);
    _Block_release(v18);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v22);
  }

  return result;
}

void closure #1 in closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___CPBiomeSessionDonator_biomeStream);

    v6 = [v5 source];
    [v6 sendEvent_];
  }
}

uint64_t BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t *a5)
{
  v6 = v5;
  v63 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v16);

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo29TUConversationActivitySessionCG_14CopresenceCore05BiomeF7DonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV0eF0Vs5NeverOTg504_s14g6Core19ifj3C32kl14Information33_nopqrst39LLV16activitySessions7membersAFShySo022dE29D0CG_SaySSGtcfcAF0tD0VAJXEfU_Tf1cn_n(a2);
  v19 = v18;
  v20 = OBJC_IVAR___CPBiomeSessionDonator_oldConversationInformation;
  swift_beginAccess();
  v21 = *(v5 + v20);
  v22 = *(v21 + 16);
  v64 = a2;
  if (!v22)
  {
LABEL_8:
    swift_beginAccess();
    v31 = *(v6 + v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v6 + v20);
    *(v6 + v20) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v17, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + v20) = v66;
    v33 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v33);
    *(&v55 - 2) = a3;
    *(&v55 - 1) = a4;
    specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:), (&v55 - 4), a2);
    v35 = v34;
    v61 = 0;
    v62 = a4;
    if (v34 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v37 = 0;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1B2710B10](v37, v35);
        }

        else
        {
          if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v38 = *(v35 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v41 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x78))();
        if (v41)
        {
          v42 = v41;
          v41(v39);

          _sxRi_zRi0_zlyytIseghHr_SgWOe(v42);
        }

        else
        {
        }

        ++v37;
        if (v40 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v43 = v63;
    v44 = v63;
    v45 = v62;

    specialized Sequence.compactMap<A>(_:)(v64, v45, v43);
    v47 = v46;

    if (v47 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
      }
    }

    else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    v48 = *(v6 + OBJC_IVAR___CPBiomeSessionDonator_publishQueue);
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    aBlock[4] = partial apply for closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:);
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v50 = _Block_copy(aBlock);
    v51 = v55;
    static DispatchQoS.unspecified.getter();
    v66 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v52 = v57;
    v53 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v51, v52, v50);
    _Block_release(v50);
    (*(v59 + 8))(v52, v53);
    (*(v56 + 8))(v51, v58);
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v24 & 1) == 0)
  {

    goto LABEL_8;
  }

  v61 = a3;
  v25 = (*(v21 + 56) + 16 * v23);
  v26 = *v25;
  v27 = v25[1];

  v28 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityE0V_Tt1g5(v19, v26);

  if ((v28 & 1) == 0)
  {

    a2 = v64;
    a3 = v61;
    goto LABEL_8;
  }

  v30 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v29, v27);

  a2 = v64;
  a3 = v61;
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void closure #1 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v79 = a2;
  v80 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for UUID();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v18 = *a1;
  v19 = [*a1 activity];
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    v75 = a4;
    v76 = v4;
    v21 = [v18 activity];
    v22 = [v21 metadata];

    v73 = v10;
    v74 = v20;
    if (v22)
    {
      v23 = [v22 context];

      v24 = [v23 typedIdentifier];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v26;
      v71 = v25;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.default);
      v29 = v18;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v82 = v72;
        *v32 = 136315138;
        v33 = [v29 activity];
        v34 = [v33 metadata];

        if (v34)
        {
          v81 = v34;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
          v35 = String.init<A>(reflecting:)();
          v37 = v36;
        }

        else
        {
          v37 = 0xE300000000000000;
          v35 = 7104878;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v82);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_1AEB26000, v30, v31, "Experience type for activity session is nil: %s", v32, 0xCu);
        v39 = v72;
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1B27120C0](v39, -1, -1);
        MEMORY[0x1B27120C0](v32, -1, -1);
      }

      v70 = 0;
      v71 = 0;
    }

    v72 = [v18 state];
    v40 = [v18 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = UUID.uuidString.getter();
    v42 = v41;
    v44 = v77;
    v43 = v78;
    v45 = *(v77 + 8);
    v45(v17, v78);
    v46 = [v18 activity];
    v47 = v43;
    v48 = [v46 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = UUID.uuidString.getter();
    v51 = v50;
    v45(v15, v47);
    v52 = v73;
    outlined init with copy of UUID?(v79, v73);
    if ((*(v44 + 48))(v52, 1, v47) == 1)
    {
      outlined destroy of NSObject?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v55 = UUID.uuidString.getter();
      v56 = v47;
      v53 = v55;
      v54 = v57;
      v45(v52, v56);
    }

    if (v70)
    {
      v58 = v71;
    }

    else
    {
      v58 = 0;
    }

    if (v70)
    {
      v59 = v70;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    v60 = MEMORY[0x1B270FF70](v69, v42);

    v61 = MEMORY[0x1B270FF70](v49, v51);

    if (v54)
    {
      v62 = MEMORY[0x1B270FF70](v53, v54);
    }

    else
    {
      v62 = 0;
    }

    v63 = v72 == 1;
    v64 = objc_allocWithZone(MEMORY[0x1E698F288]);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v66 = MEMORY[0x1B270FF70](v58, v59);

    v67 = v74;
    v27 = [v64 initWithIsActive:v63 sourceBundleID:v74 activitySessionID:v60 activityID:v61 messagesChatGuid:v62 participantHandles:0 memberHandles:isa experienceType:v66];

    a4 = v75;
  }

  else
  {
    v27 = 0;
  }

  *a4 = v27;
}

void closure #3 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v68 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v14 = [*a1 activity];
  v15 = [v14 bundleIdentifier];

  if (!v15)
  {
    *a4 = 0;
    return;
  }

  v63 = a4;
  v16 = [objc_allocWithZone(MEMORY[0x1E69978D0]) init];
  [v16 setBundleId_];

  [v16 setTargetBundleId_];
  [v16 setDirection_];
  [v16 setMechanism_];
  v17 = [v12 activity];
  v18 = [v17 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v8 + 8))(v11, v7);
  v22 = MEMORY[0x1B270FF70](v19, v21);

  [v16 setUuid_];

  v70 = a2;

  v23 = [v12 activity];
  v24 = [v23 originator];

  if (!v24)
  {
    v29 = a2;
    v36 = v63;
    v28 = v68;
    if (v68)
    {
      v37 = TUHandle.cdContact.getter();
    }

    else
    {
      v37 = 0;
    }

    v25 = v37;
    goto LABEL_24;
  }

  v25 = TUHandle.cdContact.getter();
  v7 = v24;
  v26 = v65;
  v27 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v70, v7);
  v28 = v26;

  v29 = v70;
  v23 = *(v70 + 16);
  v30 = v27 - v23;
  if (v27 > v23)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v27 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v65 = v26;
  v28 = v27;
  if (!__OFADD__(v23, v30))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > *(v29 + 3) >> 1)
    {
      if (v23 <= v27)
      {
        v32 = v27;
      }

      else
      {
        v32 = v23;
      }

      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v29);
      v70 = v29;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v27, v23, 0);
    v23 = v68;
    if (v68)
    {
      v33 = [v68 normalizedValue];
      if (!v33)
      {
        v33 = [v23 value];
      }

      v34 = v33;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v35;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v13 = *(v29 + 2);
    v30 = *(v29 + 3);
    v27 = v13 + 1;
    if (v13 < v30 >> 1)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v27, 1, v29);
LABEL_21:

  *(v29 + 2) = v27;
  v38 = &v29[16 * v13];
  *(v38 + 4) = v23;
  *(v38 + 5) = v28;
  v36 = v63;
LABEL_24:
  [v16 setSender_];

  v64 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  v39 = *(v29 + 2);
  if (v39)
  {
    v40 = 0;
    v41 = v29 + 40;
    v67 = *(v29 + 2);
    v59 = (v39 - 1);
    v64 = MEMORY[0x1E69E7CC0];
    v66 = v29;
    v61 = v25;
    v62 = v16;
    v60 = v29 + 40;
    do
    {
      v25 = &v41[16 * v40];
      v13 = v40;
      v27 = v67;
      while (1)
      {
        v30 = *(v29 + 2);
        if (v13 >= v30)
        {
          __break(1u);
          goto LABEL_53;
        }

        v42 = *(v25 - 1);
        v43 = *v25;
        v28 = objc_opt_self();

        v23 = MEMORY[0x1B270FF70](v42, v43);
        v7 = [v28 normalizedHandleWithDestinationID_];

        if (!v7)
        {
          goto LABEL_28;
        }

        v44 = [v7 type];
        v23 = v44 == 3 ? 2 : (v44 == 2);
        if (v23)
        {
          break;
        }

LABEL_28:

LABEL_29:
        v13 = (v13 + 1);
        v25 += 16;
        if (v27 == v13)
        {
          v16 = v62;
          v36 = v63;
          v25 = v61;
          goto LABEL_51;
        }
      }

      v45 = [v7 normalizedValue];
      if (!v45)
      {
        v45 = [v7 value];
      }

      v28 = v45;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v16 = objc_opt_self();
      v49 = [v16 typeAsCNContactPropertyKey_];
      if (v49)
      {
        v28 = v49;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;
      }

      else
      {
        v68 = 0;
        v51 = 0;
      }

      v52 = MEMORY[0x1B270FF70](v46, v48);

      if (v51)
      {
        v53 = MEMORY[0x1B270FF70](v68, v51);
      }

      else
      {
        v53 = 0;
      }

      v23 = [v16 contactWithIdentifier:v52 identifierType:v53];

      v29 = v66;
      v27 = v67;
      if (!v23)
      {
        goto LABEL_29;
      }

      v28 = &v69;
      MEMORY[0x1B2710150](v54);
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v40 = (v13 + 1);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v64 = v69;
      v41 = v60;
      v55 = v59 == v13;
      v16 = v62;
      v36 = v63;
      v25 = v61;
    }

    while (!v55);
  }

LABEL_51:

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _CDContact, 0x1E69978A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setRecipients_];

  *v36 = v16;
}

id TUHandle.cdContact.getter()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 == 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 2;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 normalizedValue];
  if (!v4)
  {
    v4 = [v1 value];
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 typeAsCNContactPropertyKey_];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = MEMORY[0x1B270FF70](v6, v8);

  if (v14)
  {
    v17 = MEMORY[0x1B270FF70](v12, v14);
  }

  else
  {
    v17 = 0;
  }

  v15 = [v9 contactWithIdentifier:v16 identifierType:v17];

  return v15;
}

void closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(unint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  specialized _arrayForceCast<A, B>(_:)(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[4] = partial apply for closure #1 in closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:);
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_20;
  v5 = _Block_copy(v6);

  [v2 recordInteractions:isa completionHandler:v5];
  _Block_release(v5);
}

void closure #1 in closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(char a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14_CDInteractionCGMd, &_sSaySo14_CDInteractionCGMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Recorded interactions %s status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  if ((a1 & 1) == 0)
  {

    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14_CDInteractionCGMd, &_sSaySo14_CDInteractionCGMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      if (a2)
      {
        v20 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1AEB26000, v13, v14, "Failed to record interactions %s reason: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }
  }
}

uint64_t BiomeSessionDonator.conversationManager(_:removedConversationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, 0, v6);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  if (v0[1])
  {
    v4 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeSessionDonator.EquatableConversationInformation()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BiomeSessionDonator.EquatableConversationInformation(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeSessionDonator.EquatableConversationInformation()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BiomeSessionDonator.EquatableConversationInformation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityE0V_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v2, v3);
}

id BiomeSessionDonator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSessionDonator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeSessionDonator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TUHandleType.cdContactType.getter(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B27111E0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      Hasher._combine(_:)(v9);

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, void *a2)
{
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = [a2 normalizedValue];
    if (!v7)
    {
      v7 = [a2 value];
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == v6 && v11 == v5)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return v3;
    }

    if (v15 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v31 = result;
  if (v2)
  {
    return v31;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v8 = (v3 + 16);
  v7 = *(v3 + 16);
  if (v6 == v7)
  {
    return v31;
  }

  v9 = 16 * result;
  while (v6 < v7)
  {
    v33 = v3;
    v10 = v3 + v9;
    v12 = *(v3 + v9 + 48);
    v11 = *(v3 + v9 + 56);

    v13 = [a2 normalizedValue];
    if (!v13)
    {
      v13 = [a2 value];
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == v12 && v17 == v11)
    {

LABEL_9:
      v3 = v33;
      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_9;
    }

    v20 = v31;
    v3 = v33;
    if (v6 != v31)
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v31 >= *v8)
      {
        goto LABEL_30;
      }

      if (v6 >= *v8)
      {
        goto LABEL_31;
      }

      v21 = (v33 + 32 + 16 * v31);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v10 + 48);
      v25 = *(v10 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      }

      v26 = v3 + 16 * v31;
      v27 = *(v26 + 40);
      *(v26 + 32) = v24;
      *(v26 + 40) = v25;

      if (v6 >= *(v3 + 16))
      {
        goto LABEL_32;
      }

      v28 = v3 + v9;
      v29 = *(v3 + v9 + 56);
      *(v28 + 48) = v22;
      *(v28 + 56) = v23;

      *a1 = v3;
      v20 = v31;
    }

    v31 = v20 + 1;
LABEL_10:
    ++v6;
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    v9 += 16;
    if (v6 == v7)
    {
      return v31;
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
LABEL_33:
  __break(1u);
  return result;
}

void specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v5 = v23[1];
    v6 = v23[2];
    v7 = v23[3];
    v8 = v23[4];
    v9 = v23[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(a1 + 56));

    v8 = 0;
  }

  while ((v5 & 0x8000000000000000) != 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v22 = v18, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v17 = v23[0], v15 = v8, v16 = v9, !v23[0]))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

LABEL_18:
    v23[0] = v17;
    closure #3 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(v23, a2, a3, &v22);
    if (v4)
    {

      outlined consume of Set<String>.Iterator._Variant();

      return;
    }

    if (v22)
    {
      MEMORY[0x1B2710150]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = v6[v15];
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized BiomeSessionDonator.conversationManager(_:conversationChanged:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v25 - v5;
  v25[0] = type metadata accessor for UUID();
  v7 = *(v25[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25[0]);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 remoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Sequence.compactMap<A>(_:)(v12);

  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [a1 messagesGroupUUID];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v25[0];
  (*(v7 + 56))(v6, v19, 1, v25[0]);
  v21 = [a1 localMember];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 handle];
  }

  else
  {
    v23 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v10, v16, v6, v13, v23);

  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(v7 + 8))(v10, v20);
}

unint64_t lazy protocol witness table accessor for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation()
{
  result = lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation;
  if (!lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t outlined init with take of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t getEnumTagSinglePayload for BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  result = lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession;
  if (!lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession);
  }

  return result;
}

uint64_t DatagramChannelGroupState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E69;
  v2 = 0x73696C6261747365;
  if (a1 != 2)
  {
    v2 = 0x6465736F6C63;
  }

  if (a1)
  {
    v1 = 0x73696C6261747365;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DatagramChannelGroupState(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616974696E69;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x73696C6261747365;
  v6 = 0xEB00000000646568;
  if (v3 != 2)
  {
    v5 = 0x6465736F6C63;
    v6 = 0xE600000000000000;
  }

  v7 = 0x73696C6261747365;
  if (*a1)
  {
    v4 = 0xEC000000676E6968;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE700000000000000;
  v11 = 0x73696C6261747365;
  v12 = 0xEB00000000646568;
  if (*a2 != 2)
  {
    v11 = 0x6465736F6C63;
    v12 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x73696C6261747365;
    v10 = 0xEC000000676E6968;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DatagramChannelGroupState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DatagramChannelGroupState()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DatagramChannelGroupState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DatagramChannelGroupState@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DatagramChannelGroupState.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DatagramChannelGroupState(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xEB00000000646568;
  v5 = 0x73696C6261747365;
  if (*v1 != 2)
  {
    v5 = 0x6465736F6C63;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x73696C6261747365;
    v2 = 0xEC000000676E6968;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DatagramChannelStream.topic.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DatagramChannelStream.config.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of DatagramClient.Configuration(v7, &v6);
}

uint64_t key path getter for DatagramChannelStream.channelGroupState : <A, B>DatagramChannelStream<A, B>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t DatagramChannelStream.channelGroupState.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v6;
}

uint64_t DatagramChannelStream.channelGroupState.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*DatagramChannelStream.channelGroupState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v6[10];
  v8 = v6[11];
  v9 = v6[12];
  v10 = v6[13];
  KeyPath = swift_getKeyPath();
  v4[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v4[5] = swift_getKeyPath();
  v4[6] = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for DatagramChannelStream.$channelGroupState : <A, B>DatagramChannelStream<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 272))(v7);
}

uint64_t DatagramChannelStream.$channelGroupState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DatagramChannelStream.$channelGroupState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DatagramChannelStream.$channelGroupState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  DatagramChannelStream.$channelGroupState.getter();
  return DatagramChannelStream.$channelGroupState.modify;
}

void DatagramChannelStream.$channelGroupState.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    DatagramChannelStream.$channelGroupState.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    DatagramChannelStream.$channelGroupState.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DatagramChannelStream.channelGroupStatePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v9 - v5;
  (*(*v0 + 264))(v4);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<DatagramChannelGroupState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t DatagramChannelStream.ingressDeserializationFailedCount.getter()
{
  v1 = direct field offset for DatagramChannelStream.ingressDeserializationFailedCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DatagramChannelStream.ingressDeserializationFailedCount.setter(uint64_t a1)
{
  v3 = direct field offset for DatagramChannelStream.ingressDeserializationFailedCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DatagramChannelStream.channelTerminatedHandler : <A, B>DatagramChannelStream<A, B>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 440))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DatagramChannelStream.channelTerminatedHandler : <A, B>DatagramChannelStream<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 448);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t DatagramChannelStream.channelTerminatedHandler.getter()
{
  v1 = (v0 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return v3;
}

uint64_t DatagramChannelStream.channelTerminatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6);
}

uint64_t DatagramChannelStream.__allocating_init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v17 = *(v9 + 48);
  v18 = *(v9 + 52);
  v19 = swift_allocObject();
  DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(v19, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

void *DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v58 = a7;
  v59 = a8;
  v56 = a2;
  v57 = a6;
  v54 = a3;
  v55 = a4;
  v11 = *v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - v14;
  v16 = v11[10];
  v17 = v11[12];
  type metadata accessor for EgressMessage();
  v18 = type metadata accessor for AnyPublisher();
  v19 = type metadata accessor for OS_dispatch_queue();
  v53 = v19;
  v52 = v18;
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v50 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  *&v63 = v18;
  *(&v63 + 1) = v19;
  *&v64 = WitnessTable;
  *(&v64 + 1) = v50;
  v21 = type metadata accessor for Publishers.ReceiveOn();
  v60 = *(v21 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - v28;
  v30 = a5[1];
  v63 = *a5;
  v64 = v30;
  v31 = a5[3];
  v65 = a5[2];
  v66 = v31;
  v32 = direct field offset for DatagramChannelStream._channelGroupState;
  v33 = v11[11];
  LOBYTE(v61) = 0;
  Published.init(initialValue:)();
  (*(v26 + 32))(v9 + v32, v29, v25);
  v34 = direct field offset for DatagramChannelStream.output;
  type metadata accessor for DatagramChannelError(255);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
  type metadata accessor for PassthroughSubject();
  *(v9 + v34) = PassthroughSubject.__allocating_init()();
  v35 = direct field offset for DatagramChannelStream.sendQueue;
  *(v9 + v35) = Array.init()();
  *(v9 + direct field offset for DatagramChannelStream.participantUnicastEndpoints) = MEMORY[0x1E69E7CC8];
  *(v9 + direct field offset for DatagramChannelStream.cancellable) = 0;
  *(v9 + direct field offset for DatagramChannelStream.channelGroup) = 0;
  *(v9 + direct field offset for DatagramChannelStream.inputSubscriptionCancellable) = 0;
  *(v9 + direct field offset for DatagramChannelStream.ingressDeserializationFailedCount) = 0;
  v36 = (v9 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  *v36 = 0;
  v36[1] = 0;
  v37 = v55;
  v9[4] = v54;
  v9[5] = v37;
  v38 = v66;
  *(v9 + 5) = v65;
  *(v9 + 6) = v38;
  v39 = v64;
  *(v9 + 3) = v63;
  *(v9 + 4) = v39;
  v40 = v56;
  v9[14] = v57;
  v41 = v58;
  v42 = v59;
  v9[2] = v58;
  v9[3] = v40;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v42, v9 + direct field offset for DatagramChannelStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v61 = v37;
  v62 = v41;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v43 - 8) + 56))(v15, 1, 1, v43);

  v44 = v41;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v15, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  swift_retain_n();
  swift_getWitnessTable();
  v45 = Publisher.sink(receiveCompletion:receiveValue:)();

  outlined destroy of NSObject?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v60 + 8))(v24, v21);
  v46 = direct field offset for DatagramChannelStream.inputSubscriptionCancellable;
  swift_beginAccess();
  v47 = *(v9 + v46);
  *(v9 + v46) = v45;

  return v9;
}

void closure #1 in DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, log);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;

    v4 = DatagramChannelStream.description.getter();
    v6 = v5;

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "DatagramChannelStream: input egress-stream completed %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t DatagramChannelStream.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DatagramChannelError(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = direct field offset for DatagramChannelStream.inputSubscriptionCancellable;
  swift_beginAccess();
  if (*(v0 + v7))
  {

    AnyCancellable.cancel()();
  }

  v8 = v2[10];
  v9 = v2[11];
  v10 = v2[12];
  v11 = v2[13];
  default argument 0 of DatagramChannelStream.close(error:)();
  (*(*v0 + 480))(v6);
  outlined destroy of DatagramChannelError(v6);

  v12 = *(v0 + 32);

  v13 = *(v0 + 40);

  outlined consume of DatagramEndpoint(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  outlined destroy of NSObject?(v0 + direct field offset for DatagramChannelStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = direct field offset for DatagramChannelStream._channelGroupState;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = *(v1 + direct field offset for DatagramChannelStream.output);

  v17 = *(v1 + direct field offset for DatagramChannelStream.sendQueue);

  v18 = *(v1 + direct field offset for DatagramChannelStream.participantUnicastEndpoints);

  v19 = *(v1 + direct field offset for DatagramChannelStream.cancellable);

  v20 = *(v1 + direct field offset for DatagramChannelStream.channelGroup);

  v21 = *(v1 + v7);

  v22 = *(v1 + direct field offset for DatagramChannelStream.channelTerminatedHandler + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v1 + direct field offset for DatagramChannelStream.channelTerminatedHandler));
  return v1;
}

uint64_t DatagramChannelStream.__deallocating_deinit()
{
  DatagramChannelStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DatagramChannelStream.start(channelGroup:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(*v0 + 376);

    v9(v10);
    return DatagramChannelStream.sendNextEgressMessage()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DatagramChannelStream.terminate(error:)(uint64_t a1)
{
  v2 = v1;
  v109 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for EgressMessage();
  v110 = *(v6 - 8);
  v7 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v97 - v16;
  v108 = type metadata accessor for DatagramChannelError(0);
  v106 = *(v108 - 8);
  v18 = v106[8];
  v19 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v105 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v97 - v24;
  v26 = (*(v3 + 240))(v23);
  if (v26 > 1)
  {
    if (v26 != 2)
    {
    }

    v101 = v17;
  }

  else
  {
    v101 = v17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v29 = (*(*v1 + 416))(result);
    v116 = 0;
    v117 = 0xE000000000000000;
    if (v29 < 1)
    {
      MEMORY[0x1B2710020](0x206C656E6E616843, 0xE800000000000000);
      v33 = *(v3 + 88);
      v34 = *(v3 + 104);
      v111 = v4;
      v112 = v33;
      v113 = v5;
      v114 = v34;
      v115 = v1;
      type metadata accessor for DatagramChannelStream();
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    else
    {
      MEMORY[0x1B2710020](0x206C656E6E616843, 0xE800000000000000);
      v30 = *(v3 + 88);
      v31 = *(v3 + 104);
      v111 = v4;
      v112 = v30;
      v113 = v5;
      v114 = v31;
      v115 = v1;
      type metadata accessor for DatagramChannelStream();
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1B2710020](32, 0xE100000000000000);
      v32 = DatagramChannelStream.deserializationFailedDescription.getter();
      MEMORY[0x1B2710020](v32);
    }

    v35 = v117;
    v100 = v116;
    v36 = v25;
    v37 = v108;
    swift_storeEnumTagMultiPayload();
    v38 = v25;
    v39 = v109;
    v40 = specialized static DatagramChannelError.== infix(_:_:)(v38, v109);
    outlined destroy of DatagramChannelError(v36);
    v41 = v105;
    if (v40)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, log);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = v36;
        v47 = swift_slowAlloc();
        v111 = v47;
        *v45 = 136315138;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v35, &v111);

        *(v45 + 4) = v48;
        _os_log_impl(&dword_1AEB26000, v43, v44, "%s closed by client", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v49 = v47;
        v36 = v46;
        v39 = v109;
        MEMORY[0x1B27120C0](v49, -1, -1);
        v50 = v45;
        v37 = v108;
        MEMORY[0x1B27120C0](v50, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, log);
      outlined init with copy of DatagramChannelError(v39, v41);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      v99 = v53;
      v54 = v53;
      v55 = v52;
      if (os_log_type_enabled(v52, v54))
      {
        v98 = v36;
        v56 = v37;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v111 = v58;
        *v57 = 136315394;
        v59 = v41;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v35, &v111);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = v101;
        outlined init with copy of DatagramChannelError(v59, v101);
        v62 = v106;
        (v106[7])(v61, 0, 1, v56);
        v63 = v61;
        v64 = v61;
        v65 = v103;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v64, v103, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
        if ((v62[6])(v65, 1, v56) == 1)
        {
          v66 = 0xE300000000000000;
          v67 = 7104878;
          v36 = v98;
        }

        else
        {
          v68 = v65;
          v69 = v98;
          outlined init with take of DatagramChannelError(v68, v98);
          outlined init with copy of DatagramChannelError(v69, v102);
          v36 = v69;
          v67 = String.init<A>(reflecting:)();
          v66 = v70;
          outlined destroy of DatagramChannelError(v36);
        }

        outlined destroy of NSObject?(v63, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
        outlined destroy of DatagramChannelError(v105);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v111);

        *(v57 + 14) = v71;
        _os_log_impl(&dword_1AEB26000, v55, v99, "%s terminating reason: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);

        v37 = v108;
        v39 = v109;
      }

      else
      {

        outlined destroy of DatagramChannelError(v41);
      }
    }

    (*(*v2 + 248))(3);
    swift_storeEnumTagMultiPayload();
    v72 = specialized static DatagramChannelError.== infix(_:_:)(v39, v36);
    outlined destroy of DatagramChannelError(v36);
    v73 = *(v2 + direct field offset for DatagramChannelStream.output);
    if (v72)
    {
      v74 = 1;
      v75 = v104;
    }

    else
    {
      v75 = v104;
      outlined init with copy of DatagramChannelError(v39, v104);
      v74 = 0;
    }

    (v106[7])(v75, v74, 1, v37);
    PassthroughSubject.send(completion:)();
    v76 = outlined destroy of NSObject?(v75, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
    v77 = (*(*v2 + 344))(v76);
    if (v77)
    {
      AnyCancellable.cancel()();
    }

    v105 = v7;
    v78 = (*(*v2 + 368))(v77);
    v79 = v107;
    if (v78)
    {
      NWConnectionGroup.cancel()();
    }

    v80 = *(*v2 + 296);
    v106 = v2;
    v81 = v80(v78);
    if (MEMORY[0x1B2710210](v81, v6))
    {
      v82 = 0;
      v83 = &v79[*(v6 + 40)];
      v84 = (v110 + 16);
      v85 = (v110 + 8);
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v110 + 16))(v79, v81 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v82, v6);
          v87 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v105 != 8)
          {
            __break(1u);
            return result;
          }

          v111 = result;
          (*v84)(v79, &v111, v6);
          swift_unknownObjectRelease();
          v87 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
LABEL_44:
            __break(1u);
            break;
          }
        }

        v89 = *v83;
        v88 = v83[1];
        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v83);
        (*v85)(v79, v6);
        if (v89)
        {
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
          v90 = swift_allocError();
          outlined init with copy of DatagramChannelError(v109, v91);
          v89(v90);
          _sxRi_zRi0_zlyytIseghHr_SgWOe(v89);
          v92 = v90;
          v79 = v107;
        }

        ++v82;
      }

      while (v87 != MEMORY[0x1B2710210](v81, v6));
    }

    v93 = v106;
    v94 = (*(*v106 + 312))(&v111);
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(0);
    v95 = v94(&v111, 0);
    v96 = (*(*v93 + 440))(v95);
    result = v109;
    if (v96)
    {
      v96(v109);
      return _sxRi_zRi0_zlyytIseghHr_SgWOe(v96);
    }
  }

  return result;
}

unint64_t DatagramChannelStream.deserializationFailedDescription.getter()
{
  _StringGuts.grow(_:)(31);

  (*(*v0 + 416))(v1);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  return 0xD00000000000001DLL;
}

void DatagramChannelStream.enqueueEgressMessage(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for EgressMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2[2];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v44 = v7;
  v19 = *(*v2 + 240);
  if (v19(v18) > 2u)
  {

    goto LABEL_9;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_9:
    v32 = a1 + *(v6 + 40);
    v33 = *v32;
    if (!*v32)
    {
      return;
    }

    v34 = *(v32 + 8);
    type metadata accessor for DatagramChannelError(0);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v33(v35);
    v31 = v35;
    goto LABEL_11;
  }

  v43 = a1;
  v22 = (*v2 + 296);
  v23 = *v22;
  (*v22)(v21);
  v24 = MEMORY[0x1B27101F0]();

  if (__OFADD__(v24, 1))
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v2[14] < v24 + 1)
  {
    v26 = v43 + *(v6 + 40);
    v27 = *v26;
    if (!*v26)
    {
      return;
    }

    v28 = *(v26 + 8);
    lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError();
    v29 = swift_allocError();
    *v30 = 0;
    v27();
    v31 = v29;
LABEL_11:

    return;
  }

  v23(v25);
  v36 = MEMORY[0x1B27101F0]();

  if (v36)
  {
    v38 = 0;
    v39 = v43;
    v40 = v44;
    goto LABEL_21;
  }

  v41 = v19(v37);
  if (v41 <= 1)
  {
    v39 = v43;
LABEL_19:
    v40 = v44;
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

  v39 = v43;
  if (v41 != 2)
  {
    goto LABEL_19;
  }

  v38 = 1;
  v40 = v44;
LABEL_20:

LABEL_21:
  (*(v40 + 16))(v10, v39, v6);
  v42 = (*(*v2 + 312))(v45);
  type metadata accessor for Array();
  Array.append(_:)();
  v42(v45, 0);
  if (v38)
  {
    DatagramChannelStream.sendNextEgressMessage()();
  }
}

void DatagramChannelStream.ingressDatagramReceived(message:data:isComplete:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 88);
  v14 = type metadata accessor for Optional();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - v23;
  if ((a4 & 1) == 0)
  {
    v69 = v19;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, log);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v66 = v9;
      v29 = v28;
      v30 = swift_slowAlloc();
      v67 = v24;
      v31 = v30;
      *&v74[0] = v30;
      *v29 = 136315138;

      v32 = DatagramChannelStream.description.getter();
      v68 = v13;
      v33 = a2;
      v34 = a3;
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v36, v74);
      a3 = v34;
      a2 = v33;
      v13 = v68;

      *(v29 + 4) = v37;
      _os_log_impl(&dword_1AEB26000, v26, v27, "DatagramChannelStream: received message is incomplete %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v38 = v31;
      v24 = v67;
      MEMORY[0x1B27120C0](v38, -1, -1);
      v39 = v29;
      v9 = v66;
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    else
    {
    }

    v19 = v69;
  }

  if (a3 >> 60 != 15)
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    outlined copy of Data?(a2, a3);
    outlined copy of Data._Representation(a2, a3);
    v40 = *(v9 + 104);
    BinaryDecodingOptions.init()();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v19 + 56))(v18, 0, 1, v13);
    (*(v19 + 32))(v24, v18, v13);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, log);
    v42 = *(v19 + 16);
    v43 = v70;
    v67 = v24;
    v42(v70, v24, v13);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v68 = v13;
      v47 = v46;
      v48 = swift_slowAlloc();
      v73 = a3;
      v49 = v48;
      *&v74[0] = v48;
      *v47 = 136315395;

      LODWORD(v72) = v45;
      v50 = DatagramChannelStream.description.getter();
      v51 = v19;
      v53 = v52;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, v74);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2081;
      v55 = *(v40 + 8);
      v56 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
      v58 = v57;
      v59 = *(v51 + 8);
      v59(v43, v68);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v74);

      *(v47 + 14) = v60;
      _os_log_impl(&dword_1AEB26000, v44, v72, "Channel %s received datagram %{private}s", v47, 0x16u);
      swift_arrayDestroy();
      v61 = v49;
      a3 = v73;
      MEMORY[0x1B27120C0](v61, -1, -1);
      v62 = v47;
      v13 = v68;
      MEMORY[0x1B27120C0](v62, -1, -1);
    }

    else
    {

      v59 = *(v19 + 8);
      v59(v43, v13);
    }

    v63 = *(v5 + direct field offset for DatagramChannelStream.output);
    v64 = v67;
    PassthroughSubject.send(_:)();
    outlined consume of Data?(a2, a3);
    v59(v64, v13);
  }
}

uint64_t DatagramChannelStream.sendNextEgressMessage()()
{
  v1 = v0;
  v2 = *v0;
  v141 = v2;
  v144 = type metadata accessor for DatagramChannelError(0);
  v139 = *(v144 - 8);
  v3 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v138 = *(v5 - 8);
  v6 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DispatchQoS();
  v135 = *(v137 - 8);
  v8 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v142 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v123 - v14;
  v16 = type metadata accessor for NWEndpoint();
  v17 = *(v16 - 8);
  v150 = v16;
  v151 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v149 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v145 = (&v123 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v123 - v23;
  v24 = *(v2 + 80);
  v147 = *(v2 + 96);
  v148 = v24;
  v25 = type metadata accessor for EgressMessage();
  v153 = *(v25 - 8);
  v26 = *(v153 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v140 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v123 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v152 = &v123 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v1[2];
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32);
  v133 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v38 = (*(v33 + 8))(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((*(*v1 + 240))(v38) > 2u)
  {
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v39 & 1) == 0)
  {
    aBlock[0] = (*(*v1 + 296))(result);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v41 = Collection.isEmpty.getter();

    if ((v41 & 1) == 0)
    {
      v126 = v5;
      v42 = (*(*v1 + 312))(aBlock);
      swift_getWitnessTable();
      v5 = v152;
      RangeReplaceableCollection.removeFirst()();
      v42(aBlock, 0);
      if (one-time initialization token for log != -1)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v43 = type metadata accessor for Logger();
        v44 = __swift_project_value_buffer(v43, log);
        v45 = v153;
        v46 = *(v153 + 16);
        v128 = v153 + 16;
        v127 = v46;
        v46(v30, v5, v25);

        v47 = Logger.logObject.getter();
        v5 = v25;
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v132 = v44;
          v50 = v49;
          v130 = swift_slowAlloc();
          aBlock[0] = v130;
          *v50 = 136315395;
          v51 = DatagramChannelStream.description.getter();
          v53 = v52;

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, aBlock);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2081;
          v55 = *(v147 + 8);
          v56 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
          v58 = v57;
          v131 = *(v153 + 8);
          v131(v30, v5);
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, aBlock);

          *(v50 + 14) = v59;
          _os_log_impl(&dword_1AEB26000, v47, v48, "Channel %s sending datagram %{private}s", v50, 0x16u);
          v60 = v130;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v60, -1, -1);
          v61 = v50;
          v44 = v132;
          MEMORY[0x1B27120C0](v61, -1, -1);
        }

        else
        {

          v131 = *(v45 + 8);
          v62 = (v131)(v30, v5);
        }

        v63 = v5;
        v64 = (*(*v1 + 368))(v62);
        v65 = v152;
        v132 = v64;
        if (!v64)
        {

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            aBlock[0] = v72;
            *v71 = 136315138;
            v73 = DatagramChannelStream.description.getter();
            v75 = v74;

            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, aBlock);

            *(v71 + 4) = v76;
            _os_log_impl(&dword_1AEB26000, v69, v70, "DatagramChannelStream.sendNextEgressMessage: channel not yet started %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v72);
            v77 = v131;
            MEMORY[0x1B27120C0](v72, -1, -1);
            MEMORY[0x1B27120C0](v71, -1, -1);
          }

          else
          {

            v77 = v131;
          }

          return v77(v65, v63);
        }

        v66 = v147;
        v30 = 0;
        v67 = Message.serializedData(partial:)();
        v78 = v68 >> 62;
        if ((v68 >> 62) <= 1)
        {
          break;
        }

        if (v78 != 2)
        {
          v79 = 0;
          goto LABEL_26;
        }

        v81 = *(v67 + 16);
        v80 = *(v67 + 24);
        v82 = __OFSUB__(v80, v81);
        v79 = v80 - v81;
        if (v82)
        {
          __break(1u);
LABEL_23:
          LODWORD(v79) = HIDWORD(v67) - v67;
          if (__OFSUB__(HIDWORD(v67), v67))
          {
LABEL_54:
            __break(1u);

            outlined consume of Data._Representation(v130, v129);

            result = (*v15)(v44, v5);
            __break(1u);
            return result;
          }

          v79 = v79;
        }

LABEL_26:
        if (v79 >= v1[11])
        {
          v92 = v67;
          v93 = v68;
          v94 = &v65[*(v5 + 40)];
          v95 = *v94;
          if (*v94)
          {
            v96 = *(v94 + 1);
            lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError();
            v97 = swift_allocError();
            *v98 = 1;
            v95();
          }

          DatagramChannelStream.sendNextEgressMessage()(v67);

          outlined consume of Data._Representation(v92, v93);
          return (v131)(v65, v63);
        }

        v130 = v67;
        v129 = v68;
        v83 = *&v65[*(v5 + 36)];
        if (!v83 || (v143 = *(v83 + 16)) == 0)
        {
          (*(v151 + 56))(v142, 1, 1, v150);
          type metadata accessor for NWConnectionGroup.Message();
          v99 = v129;
          outlined copy of Data._Representation(v130, v129);
          v151 = static NWConnectionGroup.Message.default.getter();
          v100 = v140;
          v127(v140, v65, v5);
          v101 = v153;
          v102 = (*(v153 + 80) + 56) & ~*(v153 + 80);
          v103 = swift_allocObject();
          *(v103 + 2) = v148;
          v104 = v141;
          *(v103 + 3) = *(v141 + 88);
          *(v103 + 4) = v66;
          *(v103 + 5) = *(v104 + 104);
          *(v103 + 6) = v1;
          (*(v101 + 32))(&v103[v102], v100, v63);

          v105 = v130;
          v106 = v142;
          NWConnectionGroup.send(content:to:message:completion:)();

          outlined consume of Data._Representation(v105, v99);
          outlined consume of Data._Representation(v105, v99);
          outlined destroy of NSObject?(v106, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
          return (v131)(v65, v63);
        }

        v5 = 0;
        v25 = v83 + 32;
        v142 = (v151 + 48);
        v84 = MEMORY[0x1E69E7CC0];
        v85 = (v151 + 32);
        v123 = v63;
        v86 = v150;
        v87 = v83;
        v125 = v83;
        v124 = v83 + 32;
        while (v5 < *(v87 + 16))
        {
          aBlock[0] = *(v25 + 8 * v5);
          closure #1 in DatagramChannelStream.sendNextEgressMessage()(aBlock, v1, v15);
          if ((*v142)(v15, 1, v86) == 1)
          {
            outlined destroy of NSObject?(v15, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
          }

          else
          {
            v88 = *v85;
            v89 = v145;
            (*v85)(v145, v15, v86);
            v88(v149, v89, v86);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
            }

            v91 = v84[2];
            v90 = v84[3];
            if (v91 >= v90 >> 1)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v91 + 1, 1, v84);
            }

            v84[2] = v91 + 1;
            v86 = v150;
            v88((v84 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v91), v149, v150);
            v87 = v125;
            v25 = v124;
          }

          if (v143 == ++v5)
          {
            v145 = dispatch_group_create();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
            v149 = swift_allocBox();
            (*(v139 + 56))(v107, 1, 1, v144);
            v108 = v84[2];
            if (!v108)
            {
LABEL_49:

              v110 = v140;
              v111 = v123;
              v127(v140, v152, v123);
              v112 = v153;
              v113 = (*(v153 + 80) + 48) & ~*(v153 + 80);
              v114 = (v26 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
              v115 = swift_allocObject();
              *(v115 + 2) = v148;
              v116 = v141;
              v117 = v147;
              *(v115 + 3) = *(v141 + 88);
              *(v115 + 4) = v117;
              *(v115 + 5) = *(v116 + 104);
              (*(v112 + 32))(&v115[v113], v110, v111);
              *&v115[v114] = v149;
              *&v115[(v114 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
              aBlock[4] = partial apply for closure #3 in DatagramChannelStream.sendNextEgressMessage();
              aBlock[5] = v115;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              aBlock[3] = &block_descriptor_12;
              v118 = _Block_copy(aBlock);

              v119 = v134;
              static DispatchQoS.unspecified.getter();
              v154 = MEMORY[0x1E69E7CC0];
              lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              v120 = v136;
              v121 = v126;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v122 = v145;
              OS_dispatch_group.notify(qos:flags:queue:execute:)();

              _Block_release(v118);
              outlined consume of Data._Representation(v130, v129);
              (*(v138 + 8))(v120, v121);
              (*(v135 + 8))(v119, v137);
              v131(v152, v111);
            }

            v109 = 0;
            v15 = (v151 + 8);
            while (1)
            {
              v44 = v146;
              if (v109 >= v84[2])
              {
                break;
              }

              v5 = v150;
              (*(v151 + 16))(v146, v84 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v109, v150);
              closure #2 in DatagramChannelStream.sendNextEgressMessage()(v44, v145, v132, v130, v129, v149, v1);
              ++v109;
              (*v15)(v44, v5);
              if (v108 == v109)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
            goto LABEL_54;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
      }

      if (!v78)
      {
        v79 = BYTE6(v68);
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  return result;
}