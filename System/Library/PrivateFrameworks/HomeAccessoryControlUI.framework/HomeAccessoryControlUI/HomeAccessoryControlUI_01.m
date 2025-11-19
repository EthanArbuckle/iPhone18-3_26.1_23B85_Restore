uint64_t sub_252331550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  if (*(v0 + v3 + *(v1 + 40) + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523316D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + *(v1 + 40) + 8))
  {
  }

  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_252331890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v0 + v3 + *(v1 + 40);
  v10 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = v9 + *(v10 + 24);
    v12 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v14 = sub_25268DA10();
          (*(*(v14 - 8) + 8))(v11, v14);
        }
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252331B28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  v11 = v5 + *(v1 + 40);
  v12 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {

    v13 = v11 + *(v12 + 24);
    v14 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v16 = sub_25268DA10();
          (*(*(v16 - 8) + 8))(v13, v16);
        }
      }
    }
  }

  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_252331E34()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252331F84()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_252332114()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  if (*(v0 + v3 + *(v1 + 40) + 32) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252332288()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + *(v1 + 40) + 32) != 1)
  {
  }

  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_252332500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 65);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2523325BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 65) = -a2;
  }

  return result;
}

uint64_t sub_252332684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252332750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_252332818()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252332968()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_252332AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v0 + v3 + *(v1 + 40);
  v10 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_5;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v13 - 8) + 48))(v11, 1, v13))
      {
        goto LABEL_5;
      }

      v14 = *(v13 + 48);
      v15 = sub_25268D990();
      (*(*(v15 - 8) + 8))(v11 + v14, v15);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v13 - 8) + 48))(v11, 3, v13))
      {
        goto LABEL_5;
      }

      v16 = *(v13 + 48);
      v17 = sub_25268D990();
      v21 = *(v17 - 8);
      if (!(*(v21 + 48))(v11 + v16, 1, v17))
      {
        (*(v21 + 8))(v11 + v16, v17);
      }
    }

    v18 = *(v13 + 64);
    v19 = sub_25268DB10();
    (*(*(v19 - 8) + 8))(v11 + v18, v19);
LABEL_5:
    if (*(v9 + *(v10 + 24) + 8) >= 8uLL)
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252332EC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  v11 = v5 + *(v1 + 40);
  v12 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11 + *(v12 + 20);
    v14 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      goto LABEL_5;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v15 - 8) + 48))(v13, 1, v15))
      {
        goto LABEL_5;
      }

      v16 = *(v15 + 48);
      v17 = sub_25268D990();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v15 - 8) + 48))(v13, 3, v15))
      {
        goto LABEL_5;
      }

      v18 = *(v15 + 48);
      v19 = sub_25268D990();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v13 + v18, 1, v19))
      {
        (*(v20 + 8))(v13 + v18, v19);
      }
    }

    v21 = *(v15 + 64);
    v22 = sub_25268DB10();
    (*(*(v22 - 8) + 8))(v13 + v21, v22);
LABEL_5:
    if (*(v11 + *(v12 + 24) + 8) >= 8uLL)
    {
    }
  }

  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_2523332B8()
{
  v1 = *(_s10ThermostatV16StateControlViewVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v220 = *(v1 + 64);
  v221 = v0;
  type metadata accessor for AccessoryControl.ElementIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v5 = sub_25268DA10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = v0 + v3 + *(type metadata accessor for AccessoryControl(0) + 20);
  type metadata accessor for AccessoryControl.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v7 = type metadata accessor for IconDescriptor();
      v8 = *(v7 + 20);
      v9 = sub_25268F910();
      v10 = *(*(v9 - 8) + 8);
      v10(v6 + v8, v9);
      v11 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v10(v11 + *(v7 + 20), v9);
      v12 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v13 = v6 + v12[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 == 1)
      {
      }

      else if (!v14)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v16 = sub_25268D990();
        (*(*(v16 - 8) + 8))(v13 + v15, v16);
      }

      v160 = v6 + v12[7];
      v161 = *(v160 + 32);
      if (v161 != 255)
      {
        sub_252376DBC(*v160, *(v160 + 8), *(v160 + 16), *(v160 + 24), v161);
      }

      v162 = v6 + v12[8];
      v163 = *(v162 + 32);
      if (v163 != 255)
      {
        sub_252376DBC(*v162, *(v162 + 8), *(v162 + 16), *(v162 + 24), v163);
      }

      v164 = v6 + v12[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v165 = swift_getEnumCaseMultiPayload();
      if (v165 <= 3)
      {
        if (v165 == 1 || v165 == 3)
        {
          goto LABEL_106;
        }
      }

      else if (v165 == 4)
      {
        v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v190 = sub_25268D990();
        v191 = *(v190 - 8);
        if (!(*(v191 + 48))(v164 + v189, 1, v190))
        {
          (*(v191 + 8))(v164 + v189, v190);
        }
      }

      else if (v165 == 5 || v165 == 7)
      {
LABEL_106:
      }

      v166 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v168 = v166 + *(v167 + 36);
      v169 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v169 - 8) + 48))(v168, 1, v169))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v168);
        v170 = *(v169 + 20);
        v171 = sub_25268DA10();
        (*(*(v171 - 8) + 8))(v168 + v170, v171);
      }

      v3 = (v2 + 16) & ~v2;
      if (*(v166 + *(v167 + 40) + 32) != 1)
      {
        goto LABEL_75;
      }

      goto LABEL_127;
    case 1u:

      v101 = type metadata accessor for IconDescriptor();
      v102 = *(v101 + 20);
      v103 = sub_25268F910();
      v104 = *(*(v103 - 8) + 8);
      v104(v6 + v102, v103);
      v105 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v104(v105 + *(v101 + 20), v103);
      v106 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v107 = v6 + v106[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v108 = swift_getEnumCaseMultiPayload();
      if (v108 == 1)
      {
      }

      else if (!v108)
      {
        v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v110 = sub_25268D990();
        (*(*(v110 - 8) + 8))(v107 + v109, v110);
      }

      v172 = v6 + v106[7];
      v173 = *(v172 + 32);
      if (v173 != 255)
      {
        sub_252376DBC(*v172, *(v172 + 8), *(v172 + 16), *(v172 + 24), v173);
      }

      v174 = v6 + v106[8];
      v175 = *(v174 + 32);
      if (v175 != 255)
      {
        sub_252376DBC(*v174, *(v174 + 8), *(v174 + 16), *(v174 + 24), v175);
      }

      v176 = v6 + v106[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v177 = swift_getEnumCaseMultiPayload();
      if (v177 <= 3)
      {
        if (v177 == 1 || v177 == 3)
        {
          goto LABEL_123;
        }
      }

      else if (v177 == 4)
      {
        v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v193 = sub_25268D990();
        v194 = *(v193 - 8);
        if (!(*(v194 + 48))(v176 + v192, 1, v193))
        {
          (*(v194 + 8))(v176 + v192, v193);
        }
      }

      else if (v177 == 5 || v177 == 7)
      {
LABEL_123:
      }

      v178 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

      v179 = v178 + *(type metadata accessor for ControlAction(0) + 20);
      v180 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v180 - 8) + 48))(v179, 1, v180))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v181 = *(v180 + 20);
        v182 = sub_25268DA10();
        (*(*(v182 - 8) + 8))(v179 + v181, v182);
      }

      v3 = (v2 + 16) & ~v2;
      goto LABEL_127;
    case 2u:
      v218 = (v2 + 16) & ~v2;

      v74 = type metadata accessor for IconDescriptor();
      v75 = *(v74 + 20);
      v76 = sub_25268F910();
      v77 = *(*(v76 - 8) + 8);
      v77(v6 + v75, v76);
      v78 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v77(v78 + *(v74 + 20), v76);
      v79 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v80 = *(v79 + 28);
      v81 = sub_25268EEA0();
      (*(*(v81 - 8) + 8))(v6 + v80, v81);

      v82 = v6 + *(v79 + 56);
      type metadata accessor for AccessoryControl.StatusProvider();
      v83 = swift_getEnumCaseMultiPayload();
      v213 = v2;
      if (v83 <= 3)
      {
        if (v83 == 1 || v83 == 3)
        {
          goto LABEL_78;
        }
      }

      else if (v83 == 4)
      {
        v183 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v184 = sub_25268D990();
        v185 = *(v184 - 8);
        if (!(*(v185 + 48))(v82 + v183, 1, v184))
        {
          (*(v185 + 8))(v82 + v183, v184);
        }
      }

      else if (v83 == 5 || v83 == 7)
      {
LABEL_78:
      }

      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v141 = v6 + *(v140 + 48);

      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
      v143 = v141 + *(v142 + 36);
      v144 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v145 = *(*(v144 - 8) + 48);
      if (!v145(v143, 1, v144))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        v146 = v145;
        v147 = *(v144 + 20);
        v148 = sub_25268DA10();
        v149 = v143 + v147;
        v145 = v146;
        (*(*(v148 - 8) + 8))(v149, v148);
      }

      v150 = *(v142 + 40);
      v151 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v151 - 8) + 48))(v141 + v150, 1, v151))
      {
        v152 = sub_25268ED70();
        (*(*(v152 - 8) + 8))(v141 + v150, v152);
      }

      v153 = v6 + *(v140 + 64);
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v2 = v213;
      v3 = v218;
      if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
      {

        v155 = v153 + *(v154 + 36);
        if (!v145(v155, 1, v144))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v155);
          v156 = *(v144 + 20);
          v157 = sub_25268DA10();
          (*(*(v157 - 8) + 8))(v155 + v156, v157);
        }

        v3 = v218;
        if (*(v153 + *(v154 + 40) + 32) != 1)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_127;
    case 3u:
      v219 = (v2 + 16) & ~v2;

      v84 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      v85 = v6 + *(v84 + 24);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
      {

        v214 = v2;
        v87 = type metadata accessor for IconDescriptor();
        v88 = *(v87 + 20);
        v89 = sub_25268F910();
        v90 = *(*(v89 - 8) + 8);
        v90(v85 + v88, v89);
        v91 = v85 + *(v86 + 28);

        v92 = *(v87 + 20);
        v2 = v214;
        v90(v91 + v92, v89);
      }

      v93 = v6 + *(v84 + 40);
      type metadata accessor for AccessoryControl.StatusProvider();
      v94 = swift_getEnumCaseMultiPayload();
      if (v94 <= 3)
      {
        v3 = v219;
        if (v94 == 1 || v94 == 3)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v3 = v219;
        if (v94 == 4)
        {
          v186 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
          v187 = sub_25268D990();
          v188 = *(v187 - 8);
          if (!(*(v188 + 48))(v93 + v186, 1, v187))
          {
            (*(v188 + 8))(v93 + v186, v187);
          }
        }

        else if (v94 == 5 || v94 == 7)
        {
LABEL_90:
        }
      }

      v158 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

      v28 = v158 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
      v159 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v159 - 8) + 48))(v28, 1, v159))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v35 = *(v159 + 20);
        v36 = sub_25268DA10();
        goto LABEL_93;
      }

LABEL_127:

      return MEMORY[0x2821FE8E8](v221, v3 + v220, v2 | 7);
    case 4u:

      v37 = v6 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
      {

        v217 = (v2 + 16) & ~v2;
        v39 = type metadata accessor for IconDescriptor();
        v40 = *(v39 + 20);
        v212 = v2;
        v41 = sub_25268F910();
        v42 = *(*(v41 - 8) + 8);
        v42(v37 + v40, v41);
        v43 = v37 + *(v38 + 28);

        v44 = v43 + *(v39 + 20);
        v45 = v41;
        v2 = v212;
        v3 = v217;
        v42(v44, v45);
      }

      v46 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

      v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
      v48 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v49 = *(v48 + 20);
        v50 = sub_25268DA10();
        (*(*(v50 - 8) + 8))(v47 + v49, v50);
      }

      goto LABEL_75;
    case 5u:

      v111 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
      v113 = v111 + *(v112 + 36);
      v114 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v114 - 8) + 48))(v113, 1, v114))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        v115 = *(v114 + 20);
        v116 = sub_25268DA10();
        (*(*(v116 - 8) + 8))(v113 + v115, v116);
      }

      v117 = *(v112 + 40);
      v118 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v118 - 8) + 48))(v111 + v117, 1, v118))
      {
        v119 = sub_25268ED20();
        v120 = *(v119 - 8);
        if (!(*(v120 + 48))(v111 + v117, 1, v119))
        {
          (*(v120 + 8))(v111 + v117, v119);
        }
      }

      goto LABEL_127;
    case 6u:

      v126 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
      v128 = v126 + *(v127 + 36);
      v129 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v129 - 8) + 48))(v128, 1, v129))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        v130 = *(v129 + 20);
        v131 = sub_25268DA10();
        (*(*(v131 - 8) + 8))(v128 + v130, v131);
      }

      v57 = v126 + *(v127 + 40);
      v132 = type metadata accessor for AccessoryControl.ThermostatState(0);
      if ((*(*(v132 - 8) + 48))(v57, 1, v132))
      {
        goto LABEL_127;
      }

      v59 = (v2 + 16) & ~v2;
      v133 = v57 + *(v132 + 32);
      v134 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      if ((*(*(v134 - 8) + 48))(v133, 1, v134))
      {
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v198 - 8) + 48))(v133, 1, v198))
        {
          goto LABEL_70;
        }

        v199 = *(v198 + 48);
        v200 = sub_25268D990();
        (*(*(v200 - 8) + 8))(v133 + v199, v200);
      }

      else
      {
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v198 - 8) + 48))(v133, 3, v198))
        {
          goto LABEL_70;
        }

        v216 = v2;
        v206 = *(v198 + 48);
        v207 = sub_25268D990();
        v208 = *(v207 - 8);
        if (!(*(v208 + 48))(v133 + v206, 1, v207))
        {
          (*(v208 + 8))(v133 + v206, v207);
        }

        v2 = v216;
      }

      v209 = *(v198 + 64);
      v210 = sub_25268DB10();
      (*(*(v210 - 8) + 8))(v133 + v209, v210);
LABEL_70:
      v62 = *(v132 + 36);
      goto LABEL_71;
    case 7u:

      v95 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
      v97 = v95 + *(v96 + 36);
      v98 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v98 - 8) + 48))(v97, 1, v98))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v99 = *(v98 + 20);
        v100 = sub_25268DA10();
        (*(*(v100 - 8) + 8))(v97 + v99, v100);
      }

      if (*(v95 + *(v96 + 40) + 8))
      {
        goto LABEL_56;
      }

      goto LABEL_127;
    case 8u:

      v63 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
      v65 = v63 + *(v64 + 36);
      v66 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        v67 = *(v66 + 20);
        v68 = sub_25268DA10();
        (*(*(v68 - 8) + 8))(v65 + v67, v68);
      }

      v69 = v63 + *(v64 + 40);
      v70 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if ((*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        goto LABEL_127;
      }

      v6 = v69 + *(v70 + 24);
      v71 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      if ((*(*(v71 - 8) + 48))(v6, 1, v71))
      {
        goto LABEL_127;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 == 2)
      {
LABEL_56:
      }

      else if (v72 <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
LABEL_40:
          v73 = sub_25268DA10();
          (*(*(v73 - 8) + 8))(v6, v73);
        }
      }

      goto LABEL_127;
    case 9u:

      v135 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

      v136 = v135 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
      v137 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        v138 = *(v137 + 20);
        v139 = sub_25268DA10();
        (*(*(v139 - 8) + 8))(v136 + v138, v139);
      }

      goto LABEL_75;
    case 0xAu:
      goto LABEL_75;
    case 0xBu:
      goto LABEL_40;
    case 0xCu:

      if (*(v6 + 48) != 1)
      {
      }

      v51 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
      v53 = v51 + *(v52 + 36);
      v54 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v55 = *(v54 + 20);
        v56 = sub_25268DA10();
        (*(*(v56 - 8) + 8))(v53 + v55, v56);
      }

      v57 = v51 + *(v52 + 40);
      v58 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      if ((*(*(v58 - 8) + 48))(v57, 1, v58))
      {
        goto LABEL_127;
      }

      v59 = (v2 + 16) & ~v2;
      v60 = v57 + *(v58 + 20);
      v61 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61))
      {
        goto LABEL_32;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v195 - 8) + 48))(v60, 1, v195))
        {
          goto LABEL_32;
        }

        v196 = *(v195 + 48);
        v197 = sub_25268D990();
        (*(*(v197 - 8) + 8))(v60 + v196, v197);
      }

      else
      {
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v195 - 8) + 48))(v60, 3, v195))
        {
          goto LABEL_32;
        }

        v215 = v2;
        v201 = *(v195 + 48);
        v202 = sub_25268D990();
        v203 = *(v202 - 8);
        if (!(*(v203 + 48))(v60 + v201, 1, v202))
        {
          (*(v203 + 8))(v60 + v201, v202);
        }

        v2 = v215;
      }

      v204 = *(v195 + 64);
      v205 = sub_25268DB10();
      (*(*(v205 - 8) + 8))(v60 + v204, v205);
LABEL_32:
      v62 = *(v58 + 24);
LABEL_71:
      v3 = v59;
      if (*(v57 + v62 + 8) >= 8uLL)
      {
LABEL_75:
      }

      goto LABEL_127;
    case 0xDu:

      v121 = type metadata accessor for IconDescriptor();
      v122 = *(v121 + 20);
      v123 = sub_25268F910();
      v124 = *(*(v123 - 8) + 8);
      v124(v6 + v122, v123);
      v125 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v124(v125 + *(v121 + 20), v123);
      type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

      goto LABEL_127;
    case 0xEu:

      v17 = type metadata accessor for IconDescriptor();
      v18 = *(v17 + 20);
      v19 = sub_25268F910();
      v20 = *(*(v19 - 8) + 8);
      v20(v6 + v18, v19);
      v21 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v20(v21 + *(v17 + 20), v19);
      type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

      v22 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
      v24 = v22 + *(v23 + 36);
      v25 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        v26 = *(v25 + 20);
        v27 = sub_25268DA10();
        (*(*(v27 - 8) + 8))(v24 + v26, v27);
      }

      v28 = v22 + *(v23 + 40);
      v29 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
      if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
      {
        v30 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
        if (!(*(*(v30 - 8) + 48))(v28, 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if (!(*(*(v31 - 8) + 48))(v28, 3, v31))
          {
            v32 = *(v31 + 48);
            v33 = sub_25268D990();
            v34 = *(v33 - 8);
            if (!(*(v34 + 48))(v28 + v32, 1, v33))
            {
              (*(v34 + 8))(v28 + v32, v33);
            }

            v35 = *(v31 + 64);
            v36 = sub_25268DB10();
LABEL_93:
            (*(*(v36 - 8) + 8))(v28 + v35, v36);
          }
        }
      }

      goto LABEL_127;
    default:
      goto LABEL_127;
  }
}

uint64_t sub_2523354E4()
{
  v1 = v0;
  v2 = _s10ThermostatV16StateControlViewVMa(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64) + v4 + 7;
  v6 = v1 + v4;
  type metadata accessor for AccessoryControl.ElementIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  v9 = v5 & 0xFFFFFFFFFFFFFFF8;
  v10 = v6 + *(type metadata accessor for AccessoryControl(0) + 20);
  type metadata accessor for AccessoryControl.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v224 = v1;
      v230 = v5 & 0xFFFFFFFFFFFFFFF8;

      v11 = type metadata accessor for IconDescriptor();
      v12 = *(v11 + 20);
      v13 = sub_25268F910();
      v14 = *(*(v13 - 8) + 8);
      v14(v10 + v12, v13);
      v15 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v14(v15 + *(v11 + 20), v13);
      v16 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v17 = v10 + v16[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 == 1)
      {
      }

      else if (!v18)
      {
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v20 = sub_25268D990();
        (*(*(v20 - 8) + 8))(v17 + v19, v20);
      }

      v171 = v10 + v16[7];
      v172 = *(v171 + 32);
      if (v172 != 255)
      {
        sub_252376DBC(*v171, *(v171 + 8), *(v171 + 16), *(v171 + 24), v172);
      }

      v173 = v10 + v16[8];
      v174 = *(v173 + 32);
      if (v174 != 255)
      {
        sub_252376DBC(*v173, *(v173 + 8), *(v173 + 16), *(v173 + 24), v174);
      }

      v175 = v10 + v16[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v176 = swift_getEnumCaseMultiPayload();
      if (v176 <= 3)
      {
        if (v176 == 1 || v176 == 3)
        {
          goto LABEL_105;
        }
      }

      else if (v176 == 4)
      {
        v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v201 = sub_25268D990();
        v202 = *(v201 - 8);
        if (!(*(v202 + 48))(v175 + v200, 1, v201))
        {
          (*(v202 + 8))(v175 + v200, v201);
        }
      }

      else if (v176 == 5 || v176 == 7)
      {
LABEL_105:
      }

      v177 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v179 = v177 + *(v178 + 36);
      v180 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v180 - 8) + 48))(v179, 1, v180))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v181 = *(v180 + 20);
        v182 = sub_25268DA10();
        (*(*(v182 - 8) + 8))(v179 + v181, v182);
      }

      v1 = v224;
      v9 = v230;
      if (*(v177 + *(v178 + 40) + 32) != 1)
      {
        goto LABEL_75;
      }

      goto LABEL_126;
    case 1u:
      v227 = v1;
      v234 = v5 & 0xFFFFFFFFFFFFFFF8;

      v108 = type metadata accessor for IconDescriptor();
      v109 = *(v108 + 20);
      v110 = sub_25268F910();
      v111 = *(*(v110 - 8) + 8);
      v111(v10 + v109, v110);
      v112 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v111(v112 + *(v108 + 20), v110);
      v113 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v114 = v10 + v113[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v115 = swift_getEnumCaseMultiPayload();
      if (v115 == 1)
      {
      }

      else if (!v115)
      {
        v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v117 = sub_25268D990();
        (*(*(v117 - 8) + 8))(v114 + v116, v117);
      }

      v183 = v10 + v113[7];
      v184 = *(v183 + 32);
      if (v184 != 255)
      {
        sub_252376DBC(*v183, *(v183 + 8), *(v183 + 16), *(v183 + 24), v184);
      }

      v185 = v10 + v113[8];
      v186 = *(v185 + 32);
      if (v186 != 255)
      {
        sub_252376DBC(*v185, *(v185 + 8), *(v185 + 16), *(v185 + 24), v186);
      }

      v187 = v10 + v113[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v188 = swift_getEnumCaseMultiPayload();
      if (v188 <= 3)
      {
        if (v188 == 1 || v188 == 3)
        {
          goto LABEL_122;
        }
      }

      else if (v188 == 4)
      {
        v203 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v204 = sub_25268D990();
        v205 = *(v204 - 8);
        if (!(*(v205 + 48))(v187 + v203, 1, v204))
        {
          (*(v205 + 8))(v187 + v203, v204);
        }
      }

      else if (v188 == 5 || v188 == 7)
      {
LABEL_122:
      }

      v189 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

      v190 = v189 + *(type metadata accessor for ControlAction(0) + 20);
      v191 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v191 - 8) + 48))(v190, 1, v191))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v190);
        v192 = *(v191 + 20);
        v193 = sub_25268DA10();
        (*(*(v193 - 8) + 8))(v190 + v192, v193);
      }

      v1 = v227;
      v9 = v234;
      goto LABEL_126;
    case 2u:
      v232 = v5 & 0xFFFFFFFFFFFFFFF8;

      v80 = type metadata accessor for IconDescriptor();
      v81 = *(v80 + 20);
      v82 = sub_25268F910();
      v83 = *(*(v82 - 8) + 8);
      v83(v10 + v81, v82);
      v84 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v83(v84 + *(v80 + 20), v82);
      v85 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v86 = *(v85 + 28);
      v87 = sub_25268EEA0();
      (*(*(v87 - 8) + 8))(v10 + v86, v87);

      v88 = v10 + *(v85 + 56);
      type metadata accessor for AccessoryControl.StatusProvider();
      v89 = swift_getEnumCaseMultiPayload();
      v225 = v1;
      if (v89 <= 3)
      {
        if (v89 == 1 || v89 == 3)
        {
          goto LABEL_78;
        }
      }

      else if (v89 == 4)
      {
        v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v195 = sub_25268D990();
        v196 = *(v195 - 8);
        if (!(*(v196 + 48))(v88 + v194, 1, v195))
        {
          (*(v196 + 8))(v88 + v194, v195);
        }
      }

      else if (v89 == 5 || v89 == 7)
      {
LABEL_78:
      }

      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v149 = v10 + *(v148 + 48);

      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
      v151 = v149 + *(v150 + 36);
      v152 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v153 = *(*(v152 - 8) + 48);
      if (!v153(v151, 1, v152))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        v154 = v153;
        v155 = *(v152 + 20);
        v156 = sub_25268DA10();
        v157 = v151 + v155;
        v153 = v154;
        (*(*(v156 - 8) + 8))(v157, v156);
      }

      v158 = *(v150 + 40);
      v159 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v159 - 8) + 48))(v149 + v158, 1, v159))
      {
        v160 = sub_25268ED70();
        (*(*(v160 - 8) + 8))(v149 + v158, v160);
      }

      v161 = v10 + *(v148 + 64);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v1 = v225;
      v9 = v232;
      if (!(*(*(v162 - 8) + 48))(v161, 1, v162))
      {

        v163 = v161 + *(v162 + 36);
        if (!v153(v163, 1, v152))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v163);
          v164 = *(v152 + 20);
          v165 = sub_25268DA10();
          (*(*(v165 - 8) + 8))(v163 + v164, v165);
        }

        v9 = v232;
        if (*(v161 + *(v162 + 40) + 32) != 1)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_126;
    case 3u:
      v233 = v5 & 0xFFFFFFFFFFFFFFF8;

      v90 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      v91 = v10 + *(v90 + 24);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
      {

        v93 = v1;
        v94 = type metadata accessor for IconDescriptor();
        v95 = *(v94 + 20);
        v226 = v93;
        v96 = sub_25268F910();
        v97 = *(*(v96 - 8) + 8);
        v97(v91 + v95, v96);
        v98 = v91 + *(v92 + 28);

        v99 = v98 + *(v94 + 20);
        v1 = v226;
        v97(v99, v96);
      }

      v100 = v10 + *(v90 + 40);
      type metadata accessor for AccessoryControl.StatusProvider();
      v101 = swift_getEnumCaseMultiPayload();
      if (v101 <= 3)
      {
        if (v101 == 1 || v101 == 3)
        {
          goto LABEL_90;
        }
      }

      else if (v101 == 4)
      {
        v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v198 = sub_25268D990();
        v199 = *(v198 - 8);
        if (!(*(v199 + 48))(v100 + v197, 1, v198))
        {
          (*(v199 + 8))(v100 + v197, v198);
        }
      }

      else if (v101 == 5 || v101 == 7)
      {
LABEL_90:
      }

      v166 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

      v167 = v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
      v168 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v9 = v233;
      if (!(*(*(v168 - 8) + 48))(v167, 1, v168))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v167);
        v169 = *(v168 + 20);
        v170 = sub_25268DA10();
        (*(*(v170 - 8) + 8))(v167 + v169, v170);
      }

LABEL_126:

      if (*(v1 + v9 + 48) != 1)
      {
      }

      return MEMORY[0x2821FE8E8](v1, v9 + 56, v3 | 7);
    case 4u:

      v42 = v10 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
      {

        v44 = type metadata accessor for IconDescriptor();
        v45 = *(v44 + 20);
        v46 = v1;
        v47 = sub_25268F910();
        v223 = v3;
        v48 = *(*(v47 - 8) + 8);
        v48(v42 + v45, v47);
        v49 = v42 + *(v43 + 28);

        v50 = *(v44 + 20);
        v9 = v5 & 0xFFFFFFFFFFFFFFF8;
        v51 = v47;
        v1 = v46;
        v48(v49 + v50, v51);
        v3 = v223;
      }

      v52 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

      v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
      v54 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v55 = *(v54 + 20);
        v56 = sub_25268DA10();
        (*(*(v56 - 8) + 8))(v53 + v55, v56);
      }

      goto LABEL_75;
    case 5u:

      v118 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
      v120 = v118 + *(v119 + 36);
      v121 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v121 - 8) + 48))(v120, 1, v121))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        v122 = *(v121 + 20);
        v123 = sub_25268DA10();
        (*(*(v123 - 8) + 8))(v120 + v122, v123);
      }

      v124 = *(v119 + 40);
      v125 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v125 - 8) + 48))(v118 + v124, 1, v125))
      {
        v126 = sub_25268ED20();
        v127 = *(v126 - 8);
        if (!(*(v127 + 48))(v118 + v124, 1, v126))
        {
          (*(v127 + 8))(v118 + v124, v126);
        }
      }

      goto LABEL_126;
    case 6u:

      v134 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
      v136 = v134 + *(v135 + 36);
      v137 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        v138 = *(v137 + 20);
        v139 = sub_25268DA10();
        (*(*(v139 - 8) + 8))(v136 + v138, v139);
      }

      v63 = v134 + *(v135 + 40);
      v140 = type metadata accessor for AccessoryControl.ThermostatState(0);
      if ((*(*(v140 - 8) + 48))(v63, 1, v140))
      {
        goto LABEL_126;
      }

      v65 = v9;
      v141 = v63 + *(v140 + 32);
      v142 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      if ((*(*(v142 - 8) + 48))(v141, 1, v142))
      {
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v209 - 8) + 48))(v141, 1, v209))
        {
          goto LABEL_70;
        }

        v210 = *(v209 + 48);
        v211 = sub_25268D990();
        (*(*(v211 - 8) + 8))(v141 + v210, v211);
      }

      else
      {
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v209 - 8) + 48))(v141, 3, v209))
        {
          goto LABEL_70;
        }

        v229 = v1;
        v217 = *(v209 + 48);
        v218 = sub_25268D990();
        v219 = *(v218 - 8);
        if (!(*(v219 + 48))(v141 + v217, 1, v218))
        {
          (*(v219 + 8))(v141 + v217, v218);
        }

        v1 = v229;
      }

      v220 = *(v209 + 64);
      v221 = sub_25268DB10();
      (*(*(v221 - 8) + 8))(v141 + v220, v221);
LABEL_70:
      v68 = *(v140 + 36);
      goto LABEL_71;
    case 7u:

      v102 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
      v104 = v102 + *(v103 + 36);
      v105 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v105 - 8) + 48))(v104, 1, v105))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        v106 = *(v105 + 20);
        v107 = sub_25268DA10();
        (*(*(v107 - 8) + 8))(v104 + v106, v107);
      }

      if (*(v102 + *(v103 + 40) + 8))
      {
        goto LABEL_56;
      }

      goto LABEL_126;
    case 8u:

      v69 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
      v71 = v69 + *(v70 + 36);
      v72 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v73 = *(v72 + 20);
        v74 = sub_25268DA10();
        (*(*(v74 - 8) + 8))(v71 + v73, v74);
      }

      v75 = v69 + *(v70 + 40);
      v76 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if ((*(*(v76 - 8) + 48))(v75, 1, v76))
      {
        goto LABEL_126;
      }

      v10 = v75 + *(v76 + 24);
      v77 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      if ((*(*(v77 - 8) + 48))(v10, 1, v77))
      {
        goto LABEL_126;
      }

      v78 = swift_getEnumCaseMultiPayload();
      if (v78 == 2)
      {
LABEL_56:
      }

      else if (v78 <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
LABEL_40:
          v79 = sub_25268DA10();
          (*(*(v79 - 8) + 8))(v10, v79);
        }
      }

      goto LABEL_126;
    case 9u:

      v143 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

      v144 = v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
      v145 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v144);
        v146 = *(v145 + 20);
        v147 = sub_25268DA10();
        (*(*(v147 - 8) + 8))(v144 + v146, v147);
      }

      goto LABEL_75;
    case 0xAu:
      goto LABEL_75;
    case 0xBu:
      goto LABEL_40;
    case 0xCu:

      if (*(v10 + 48) != 1)
      {
      }

      v57 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
      v59 = v57 + *(v58 + 36);
      v60 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v61 = *(v60 + 20);
        v62 = sub_25268DA10();
        (*(*(v62 - 8) + 8))(v59 + v61, v62);
      }

      v63 = v57 + *(v58 + 40);
      v64 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      if ((*(*(v64 - 8) + 48))(v63, 1, v64))
      {
        goto LABEL_126;
      }

      v65 = v9;
      v66 = v63 + *(v64 + 20);
      v67 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      if ((*(*(v67 - 8) + 48))(v66, 1, v67))
      {
        goto LABEL_32;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v206 - 8) + 48))(v66, 1, v206))
        {
          goto LABEL_32;
        }

        v207 = *(v206 + 48);
        v208 = sub_25268D990();
        (*(*(v208 - 8) + 8))(v66 + v207, v208);
      }

      else
      {
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v206 - 8) + 48))(v66, 3, v206))
        {
          goto LABEL_32;
        }

        v228 = v1;
        v212 = *(v206 + 48);
        v213 = sub_25268D990();
        v214 = *(v213 - 8);
        if (!(*(v214 + 48))(v66 + v212, 1, v213))
        {
          (*(v214 + 8))(v66 + v212, v213);
        }

        v1 = v228;
      }

      v215 = *(v206 + 64);
      v216 = sub_25268DB10();
      (*(*(v216 - 8) + 8))(v66 + v215, v216);
LABEL_32:
      v68 = *(v64 + 24);
LABEL_71:
      v9 = v65;
      if (*(v63 + v68 + 8) >= 8uLL)
      {
LABEL_75:
      }

      goto LABEL_126;
    case 0xDu:

      v128 = type metadata accessor for IconDescriptor();
      v129 = *(v128 + 20);
      v130 = sub_25268F910();
      v131 = v3;
      v132 = *(*(v130 - 8) + 8);
      v132(v10 + v129, v130);
      v133 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v132(v133 + *(v128 + 20), v130);
      v3 = v131;
      v9 = v5 & 0xFFFFFFFFFFFFFFF8;
      type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

      goto LABEL_126;
    case 0xEu:
      v231 = v5 & 0xFFFFFFFFFFFFFFF8;
      v21 = v3;

      v22 = type metadata accessor for IconDescriptor();
      v23 = *(v22 + 20);
      v24 = sub_25268F910();
      v25 = *(*(v24 - 8) + 8);
      v25(v10 + v23, v24);
      v26 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v25(v26 + *(v22 + 20), v24);
      type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

      v27 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
      v29 = v27 + *(v28 + 36);
      v30 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        v31 = *(v30 + 20);
        v32 = sub_25268DA10();
        (*(*(v32 - 8) + 8))(v29 + v31, v32);
      }

      v33 = v27 + *(v28 + 40);
      v34 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
      v3 = v21;
      v9 = v231;
      if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
      {
        v35 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
        if (!(*(*(v35 - 8) + 48))(v33, 1, v35))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if (!(*(*(v36 - 8) + 48))(v33, 3, v36))
          {
            v37 = *(v36 + 48);
            v38 = sub_25268D990();
            v39 = *(v38 - 8);
            if (!(*(v39 + 48))(v33 + v37, 1, v38))
            {
              (*(v39 + 8))(v33 + v37, v38);
            }

            v40 = *(v36 + 64);
            v41 = sub_25268DB10();
            (*(*(v41 - 8) + 8))(v33 + v40, v41);
            v9 = v231;
          }
        }
      }

      goto LABEL_126;
    default:
      goto LABEL_126;
  }
}

uint64_t sub_2523377E8()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252337870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v0 + v3 + *(v1 + 40);
  v10 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9 + *(v10 + 32);
    v12 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_5;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v13 - 8) + 48))(v11, 1, v13))
      {
        goto LABEL_5;
      }

      v14 = *(v13 + 48);
      v15 = sub_25268D990();
      (*(*(v15 - 8) + 8))(v11 + v14, v15);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v13 - 8) + 48))(v11, 3, v13))
      {
        goto LABEL_5;
      }

      v16 = *(v13 + 48);
      v17 = sub_25268D990();
      v21 = *(v17 - 8);
      if (!(*(v21 + 48))(v11 + v16, 1, v17))
      {
        (*(v21 + 8))(v11 + v16, v17);
      }
    }

    v18 = *(v13 + 64);
    v19 = sub_25268DB10();
    (*(*(v19 - 8) + 8))(v11 + v18, v19);
LABEL_5:
    if (*(v9 + *(v10 + 36) + 8) >= 8uLL)
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252337C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  v11 = v5 + *(v1 + 40);
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11 + *(v12 + 32);
    v14 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      goto LABEL_5;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v15 - 8) + 48))(v13, 1, v15))
      {
        goto LABEL_5;
      }

      v16 = *(v15 + 48);
      v17 = sub_25268D990();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v15 - 8) + 48))(v13, 3, v15))
      {
        goto LABEL_5;
      }

      v18 = *(v15 + 48);
      v19 = sub_25268D990();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v13 + v18, 1, v19))
      {
        (*(v20 + 8))(v13 + v18, v19);
      }
    }

    v21 = *(v15 + 64);
    v22 = sub_25268DB10();
    (*(*(v22 - 8) + 8))(v13 + v21, v22);
LABEL_5:
    if (*(v11 + *(v12 + 36) + 8) >= 8uLL)
    {
    }
  }

  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_252338068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252338124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2523381DC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarControlView(0);
  v219 = *(*(v2 - 8) + 80);
  v3 = (v219 + 16) & ~v219;
  v218 = *(*(v2 - 8) + 64);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v5 = sub_25268DA10();
    (*(*(v5 - 8) + 8))(v1 + v3, v5);
  }

  v6 = v1 + v3 + *(type metadata accessor for AccessoryControl(0) + 20);
  type metadata accessor for AccessoryControl.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v7 = type metadata accessor for IconDescriptor();
      v8 = *(v7 + 20);
      v9 = sub_25268F910();
      v10 = *(*(v9 - 8) + 8);
      v10(v6 + v8, v9);
      v11 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v10(v11 + *(v7 + 20), v9);
      v12 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v13 = v6 + v12[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 == 1)
      {
      }

      else if (!v14)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v16 = sub_25268D990();
        (*(*(v16 - 8) + 8))(v13 + v15, v16);
      }

      v162 = v6 + v12[7];
      v163 = *(v162 + 32);
      if (v163 != 255)
      {
        sub_252376DBC(*v162, *(v162 + 8), *(v162 + 16), *(v162 + 24), v163);
      }

      v164 = v6 + v12[8];
      v165 = *(v164 + 32);
      if (v165 != 255)
      {
        sub_252376DBC(*v164, *(v164 + 8), *(v164 + 16), *(v164 + 24), v165);
      }

      v166 = v6 + v12[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v167 = swift_getEnumCaseMultiPayload();
      if (v167 <= 3)
      {
        if (v167 == 1 || v167 == 3)
        {
          goto LABEL_105;
        }
      }

      else if (v167 == 4)
      {
        v191 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v192 = sub_25268D990();
        v193 = *(v192 - 8);
        if (!(*(v193 + 48))(v166 + v191, 1, v192))
        {
          (*(v193 + 8))(v166 + v191, v192);
        }
      }

      else if (v167 == 5 || v167 == 7)
      {
LABEL_105:
      }

      v168 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v170 = v168 + *(v169 + 36);
      v171 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v171 - 8) + 48))(v170, 1, v171))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        v172 = *(v171 + 20);
        v173 = sub_25268DA10();
        (*(*(v173 - 8) + 8))(v170 + v172, v173);
      }

      v3 = (v219 + 16) & ~v219;
      if (*(v168 + *(v169 + 40) + 32) != 1)
      {
        goto LABEL_75;
      }

      goto LABEL_126;
    case 1u:

      v100 = type metadata accessor for IconDescriptor();
      v101 = *(v100 + 20);
      v102 = sub_25268F910();
      v103 = *(*(v102 - 8) + 8);
      v103(v6 + v101, v102);
      v104 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v103(v104 + *(v100 + 20), v102);
      v105 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v106 = v6 + v105[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v107 = swift_getEnumCaseMultiPayload();
      if (v107 == 1)
      {
      }

      else if (!v107)
      {
        v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v109 = sub_25268D990();
        (*(*(v109 - 8) + 8))(v106 + v108, v109);
      }

      v174 = v6 + v105[7];
      v175 = *(v174 + 32);
      if (v175 != 255)
      {
        sub_252376DBC(*v174, *(v174 + 8), *(v174 + 16), *(v174 + 24), v175);
      }

      v176 = v6 + v105[8];
      v177 = *(v176 + 32);
      if (v177 != 255)
      {
        sub_252376DBC(*v176, *(v176 + 8), *(v176 + 16), *(v176 + 24), v177);
      }

      v178 = v6 + v105[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v179 = swift_getEnumCaseMultiPayload();
      if (v179 <= 3)
      {
        if (v179 == 1 || v179 == 3)
        {
          goto LABEL_122;
        }
      }

      else if (v179 == 4)
      {
        v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v195 = sub_25268D990();
        v196 = *(v195 - 8);
        if (!(*(v196 + 48))(v178 + v194, 1, v195))
        {
          (*(v196 + 8))(v178 + v194, v195);
        }
      }

      else if (v179 == 5 || v179 == 7)
      {
LABEL_122:
      }

      v180 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

      v181 = v180 + *(type metadata accessor for ControlAction(0) + 20);
      v182 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v182 - 8) + 48))(v181, 1, v182))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v181);
        v183 = *(v182 + 20);
        v184 = sub_25268DA10();
        (*(*(v184 - 8) + 8))(v181 + v183, v184);
      }

      v3 = (v219 + 16) & ~v219;
      goto LABEL_126;
    case 2u:

      v73 = type metadata accessor for IconDescriptor();
      v74 = *(v73 + 20);
      v75 = sub_25268F910();
      v76 = *(*(v75 - 8) + 8);
      v76(v6 + v74, v75);
      v77 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v76(v77 + *(v73 + 20), v75);
      v78 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v79 = *(v78 + 28);
      v80 = sub_25268EEA0();
      (*(*(v80 - 8) + 8))(v6 + v79, v80);

      v81 = v6 + *(v78 + 56);
      type metadata accessor for AccessoryControl.StatusProvider();
      v82 = swift_getEnumCaseMultiPayload();
      v214 = v1;
      if (v82 <= 3)
      {
        if (v82 == 1 || v82 == 3)
        {
          goto LABEL_78;
        }
      }

      else if (v82 == 4)
      {
        v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v186 = sub_25268D990();
        v187 = *(v186 - 8);
        if (!(*(v187 + 48))(v81 + v185, 1, v186))
        {
          (*(v187 + 8))(v81 + v185, v186);
        }
      }

      else if (v82 == 5 || v82 == 7)
      {
LABEL_78:
      }

      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v140 = v6 + *(v139 + 48);

      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
      v142 = v140 + *(v141 + 36);
      v143 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v144 = *(*(v143 - 8) + 48);
      if (!v144(v142, 1, v143))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v142);
        v145 = v144;
        v146 = *(v143 + 20);
        v147 = sub_25268DA10();
        v148 = v142 + v146;
        v144 = v145;
        (*(*(v147 - 8) + 8))(v148, v147);
      }

      v149 = *(v141 + 40);
      v150 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v150 - 8) + 48))(v140 + v149, 1, v150))
      {
        v151 = sub_25268ED70();
        (*(*(v151 - 8) + 8))(v140 + v149, v151);
      }

      v152 = v6 + *(v139 + 64);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v1 = v214;
      v3 = (v219 + 16) & ~v219;
      if (!(*(*(v153 - 8) + 48))(v152, 1, v153))
      {

        v154 = v152 + *(v153 + 36);
        if (!v144(v154, 1, v143))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v154);
          v155 = *(v143 + 20);
          v156 = sub_25268DA10();
          (*(*(v156 - 8) + 8))(v154 + v155, v156);
        }

        v3 = (v219 + 16) & ~v219;
        if (*(v152 + *(v153 + 40) + 32) != 1)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_126;
    case 3u:

      v83 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      v84 = v6 + *(v83 + 24);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {

        v86 = type metadata accessor for IconDescriptor();
        v87 = *(v86 + 20);
        v215 = v1;
        v88 = sub_25268F910();
        v89 = *(*(v88 - 8) + 8);
        v89(v84 + v87, v88);
        v90 = v84 + *(v85 + 28);

        v91 = v88;
        v1 = v215;
        v89(v90 + *(v86 + 20), v91);
      }

      v92 = v6 + *(v83 + 40);
      type metadata accessor for AccessoryControl.StatusProvider();
      v93 = swift_getEnumCaseMultiPayload();
      if (v93 <= 3)
      {
        if (v93 == 1 || v93 == 3)
        {
          goto LABEL_90;
        }
      }

      else if (v93 == 4)
      {
        v188 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v189 = sub_25268D990();
        v190 = *(v189 - 8);
        if (!(*(v190 + 48))(v92 + v188, 1, v189))
        {
          (*(v190 + 8))(v92 + v188, v189);
        }
      }

      else if (v93 == 5 || v93 == 7)
      {
LABEL_90:
      }

      v157 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

      v158 = v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
      v159 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v3 = (v219 + 16) & ~v219;
      if (!(*(*(v159 - 8) + 48))(v158, 1, v159))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        v160 = *(v159 + 20);
        v161 = sub_25268DA10();
        (*(*(v161 - 8) + 8))(v158 + v160, v161);
      }

LABEL_126:

      return MEMORY[0x2821FE8E8](v1, v3 + v218, v219 | 7);
    case 4u:

      v37 = v6 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
      {

        v39 = type metadata accessor for IconDescriptor();
        v40 = *(v39 + 20);
        v41 = sub_25268F910();
        v42 = *(*(v41 - 8) + 8);
        v42(v37 + v40, v41);
        v43 = v37 + *(v38 + 28);

        v44 = *(v39 + 20);
        v3 = (v219 + 16) & ~v219;
        v42(v43 + v44, v41);
      }

      v45 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

      v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
      v47 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v48 = *(v47 + 20);
        v49 = sub_25268DA10();
        (*(*(v49 - 8) + 8))(v46 + v48, v49);
      }

      goto LABEL_75;
    case 5u:

      v110 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
      v112 = v110 + *(v111 + 36);
      v113 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v113 - 8) + 48))(v112, 1, v113))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
        v114 = *(v113 + 20);
        v115 = sub_25268DA10();
        (*(*(v115 - 8) + 8))(v112 + v114, v115);
      }

      v116 = *(v111 + 40);
      v117 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v117 - 8) + 48))(v110 + v116, 1, v117))
      {
        v118 = sub_25268ED20();
        v119 = *(v118 - 8);
        if (!(*(v119 + 48))(v110 + v116, 1, v118))
        {
          (*(v119 + 8))(v110 + v116, v118);
        }
      }

      goto LABEL_126;
    case 6u:

      v125 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
      v127 = v125 + *(v126 + 36);
      v128 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v128 - 8) + 48))(v127, 1, v128))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        v129 = *(v128 + 20);
        v130 = sub_25268DA10();
        (*(*(v130 - 8) + 8))(v127 + v129, v130);
      }

      v56 = v125 + *(v126 + 40);
      v131 = type metadata accessor for AccessoryControl.ThermostatState(0);
      if ((*(*(v131 - 8) + 48))(v56, 1, v131))
      {
        goto LABEL_126;
      }

      v58 = (v219 + 16) & ~v219;
      v132 = v56 + *(v131 + 32);
      v133 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      if ((*(*(v133 - 8) + 48))(v132, 1, v133))
      {
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v200 - 8) + 48))(v132, 1, v200))
        {
          goto LABEL_70;
        }

        v201 = *(v200 + 48);
        v202 = sub_25268D990();
        (*(*(v202 - 8) + 8))(v132 + v201, v202);
      }

      else
      {
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v200 - 8) + 48))(v132, 3, v200))
        {
          goto LABEL_70;
        }

        v217 = v1;
        v208 = *(v200 + 48);
        v209 = sub_25268D990();
        v210 = *(v209 - 8);
        if (!(*(v210 + 48))(v132 + v208, 1, v209))
        {
          (*(v210 + 8))(v132 + v208, v209);
        }

        v1 = v217;
      }

      v211 = *(v200 + 64);
      v212 = sub_25268DB10();
      (*(*(v212 - 8) + 8))(v132 + v211, v212);
LABEL_70:
      v61 = *(v131 + 36);
      goto LABEL_71;
    case 7u:

      v94 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
      v96 = v94 + *(v95 + 36);
      v97 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        v98 = *(v97 + 20);
        v99 = sub_25268DA10();
        (*(*(v99 - 8) + 8))(v96 + v98, v99);
      }

      if (*(v94 + *(v95 + 40) + 8))
      {
        goto LABEL_56;
      }

      goto LABEL_126;
    case 8u:

      v62 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
      v64 = v62 + *(v63 + 36);
      v65 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        v66 = *(v65 + 20);
        v67 = sub_25268DA10();
        (*(*(v67 - 8) + 8))(v64 + v66, v67);
      }

      v68 = v62 + *(v63 + 40);
      v69 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_126;
      }

      v6 = v68 + *(v69 + 24);
      v70 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      if ((*(*(v70 - 8) + 48))(v6, 1, v70))
      {
        goto LABEL_126;
      }

      v71 = swift_getEnumCaseMultiPayload();
      if (v71 == 2)
      {
LABEL_56:
      }

      else if (v71 <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
LABEL_40:
          v72 = sub_25268DA10();
          (*(*(v72 - 8) + 8))(v6, v72);
        }
      }

      goto LABEL_126;
    case 9u:

      v134 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

      v135 = v134 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
      v136 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        v137 = *(v136 + 20);
        v138 = sub_25268DA10();
        (*(*(v138 - 8) + 8))(v135 + v137, v138);
      }

      goto LABEL_75;
    case 0xAu:
      goto LABEL_75;
    case 0xBu:
      goto LABEL_40;
    case 0xCu:

      if (*(v6 + 48) != 1)
      {
      }

      v50 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
      v52 = v50 + *(v51 + 36);
      v53 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v54 = *(v53 + 20);
        v55 = sub_25268DA10();
        (*(*(v55 - 8) + 8))(v52 + v54, v55);
      }

      v56 = v50 + *(v51 + 40);
      v57 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      if ((*(*(v57 - 8) + 48))(v56, 1, v57))
      {
        goto LABEL_126;
      }

      v58 = (v219 + 16) & ~v219;
      v59 = v56 + *(v57 + 20);
      v60 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      if ((*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        goto LABEL_32;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v197 - 8) + 48))(v59, 1, v197))
        {
          goto LABEL_32;
        }

        v198 = *(v197 + 48);
        v199 = sub_25268D990();
        (*(*(v199 - 8) + 8))(v59 + v198, v199);
      }

      else
      {
        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v197 - 8) + 48))(v59, 3, v197))
        {
          goto LABEL_32;
        }

        v216 = v1;
        v203 = *(v197 + 48);
        v204 = sub_25268D990();
        v205 = *(v204 - 8);
        if (!(*(v205 + 48))(v59 + v203, 1, v204))
        {
          (*(v205 + 8))(v59 + v203, v204);
        }

        v1 = v216;
      }

      v206 = *(v197 + 64);
      v207 = sub_25268DB10();
      (*(*(v207 - 8) + 8))(v59 + v206, v207);
LABEL_32:
      v61 = *(v57 + 24);
LABEL_71:
      v3 = v58;
      if (*(v56 + v61 + 8) >= 8uLL)
      {
LABEL_75:
      }

      goto LABEL_126;
    case 0xDu:

      v120 = type metadata accessor for IconDescriptor();
      v121 = *(v120 + 20);
      v122 = sub_25268F910();
      v123 = *(*(v122 - 8) + 8);
      v123(v6 + v121, v122);
      v124 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v123(v124 + *(v120 + 20), v122);
      v3 = (v219 + 16) & ~v219;
      type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

      goto LABEL_126;
    case 0xEu:

      v17 = type metadata accessor for IconDescriptor();
      v18 = *(v17 + 20);
      v19 = sub_25268F910();
      v20 = *(*(v19 - 8) + 8);
      v20(v6 + v18, v19);
      v21 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v20(v21 + *(v17 + 20), v19);
      type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

      v22 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
      v24 = v22 + *(v23 + 36);
      v25 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        v26 = *(v25 + 20);
        v27 = sub_25268DA10();
        (*(*(v27 - 8) + 8))(v24 + v26, v27);
      }

      v28 = v22 + *(v23 + 40);
      v29 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
      v3 = (v219 + 16) & ~v219;
      if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
      {
        v30 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
        if (!(*(*(v30 - 8) + 48))(v28, 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if (!(*(*(v31 - 8) + 48))(v28, 3, v31))
          {
            v32 = *(v31 + 48);
            v33 = sub_25268D990();
            v34 = *(v33 - 8);
            if (!(*(v34 + 48))(v28 + v32, 1, v33))
            {
              (*(v34 + 8))(v28 + v32, v33);
            }

            v35 = *(v31 + 64);
            v36 = sub_25268DB10();
            (*(*(v36 - 8) + 8))(v28 + v35, v36);
            v3 = (v219 + 16) & ~v219;
          }
        }
      }

      goto LABEL_126;
    default:
      goto LABEL_126;
  }
}

uint64_t sub_25233A438()
{
  v1 = type metadata accessor for ControlAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25233A590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v2 = *(v1 - 8);
  v230 = *(v2 + 80);
  v3 = (v230 + 16) & ~v230;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ToolbarControlView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 8) + 64);
  v231 = v0;
  v9 = v0 + v3;

  v10 = v0 + v3 + *(v1 + 36);
  v11 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v227 = *(*(v11 - 8) + 48);
  if (!v227(v10, 1, v11))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v12 = v8;
    v13 = *(v11 + 20);
    v14 = sub_25268DA10();
    v15 = v10 + v13;
    v8 = v12;
    (*(*(v14 - 8) + 8))(v15, v14);
  }

  if (*(v9 + *(v1 + 40) + 32) != 1)
  {
  }

  v16 = v231 + (v7 & ~v6);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v229 = v6;
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v18 = sub_25268DA10();
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  v228 = v7 & ~v6;
  v19 = v16 + *(type metadata accessor for AccessoryControl(0) + 20);
  type metadata accessor for AccessoryControl.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v20 = v11;
      v222 = v8;

      v21 = type metadata accessor for IconDescriptor();
      v22 = *(v21 + 20);
      v23 = sub_25268F910();
      v24 = *(*(v23 - 8) + 8);
      v24(v19 + v22, v23);
      v25 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v24(v25 + *(v21 + 20), v23);
      v26 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v27 = v19 + v26[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v28 = swift_getEnumCaseMultiPayload();
      if (v28 == 1)
      {
      }

      else if (!v28)
      {
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v30 = sub_25268D990();
        (*(*(v30 - 8) + 8))(v27 + v29, v30);
      }

      v172 = v19 + v26[7];
      v173 = *(v172 + 32);
      if (v173 != 255)
      {
        sub_252376DBC(*v172, *(v172 + 8), *(v172 + 16), *(v172 + 24), v173);
      }

      v174 = v19 + v26[8];
      v175 = *(v174 + 32);
      if (v175 != 255)
      {
        sub_252376DBC(*v174, *(v174 + 8), *(v174 + 16), *(v174 + 24), v175);
      }

      v176 = v19 + v26[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v177 = swift_getEnumCaseMultiPayload();
      if (v177 <= 3)
      {
        if (v177 == 1 || v177 == 3)
        {
          goto LABEL_111;
        }
      }

      else if (v177 == 4)
      {
        v198 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v199 = sub_25268D990();
        v200 = *(v199 - 8);
        if (!(*(v200 + 48))(v176 + v198, 1, v199))
        {
          (*(v200 + 8))(v176 + v198, v199);
        }
      }

      else if (v177 == 5 || v177 == 7)
      {
LABEL_111:
      }

      v178 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

      v179 = v178 + *(v1 + 36);
      if (!v227(v179, 1, v20))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v180 = *(v20 + 20);
        v181 = sub_25268DA10();
        (*(*(v181 - 8) + 8))(v179 + v180, v181);
      }

      v8 = v222;
      if (*(v178 + *(v1 + 40) + 32) != 1)
      {
        goto LABEL_115;
      }

      goto LABEL_132;
    case 1u:
      v109 = v11;
      v226 = v8;

      v110 = type metadata accessor for IconDescriptor();
      v111 = *(v110 + 20);
      v112 = sub_25268F910();
      v113 = *(*(v112 - 8) + 8);
      v113(v19 + v111, v112);
      v114 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v113(v114 + *(v110 + 20), v112);
      v115 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v116 = v19 + v115[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v117 = swift_getEnumCaseMultiPayload();
      if (v117 == 1)
      {
      }

      else if (!v117)
      {
        v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v119 = sub_25268D990();
        (*(*(v119 - 8) + 8))(v116 + v118, v119);
      }

      v182 = v19 + v115[7];
      v183 = *(v182 + 32);
      if (v183 != 255)
      {
        sub_252376DBC(*v182, *(v182 + 8), *(v182 + 16), *(v182 + 24), v183);
      }

      v184 = v19 + v115[8];
      v185 = *(v184 + 32);
      if (v185 != 255)
      {
        sub_252376DBC(*v184, *(v184 + 8), *(v184 + 16), *(v184 + 24), v185);
      }

      v186 = v19 + v115[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v187 = swift_getEnumCaseMultiPayload();
      if (v187 <= 3)
      {
        if (v187 == 1 || v187 == 3)
        {
          goto LABEL_128;
        }
      }

      else if (v187 == 4)
      {
        v201 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v202 = sub_25268D990();
        v203 = *(v202 - 8);
        if (!(*(v203 + 48))(v186 + v201, 1, v202))
        {
          (*(v203 + 8))(v186 + v201, v202);
        }
      }

      else if (v187 == 5 || v187 == 7)
      {
LABEL_128:
      }

      v188 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

      v189 = v188 + *(type metadata accessor for ControlAction(0) + 20);
      if (!v227(v189, 1, v109))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        v190 = *(v109 + 20);
        v191 = sub_25268DA10();
        (*(*(v191 - 8) + 8))(v189 + v190, v191);
      }

      v8 = v226;
      goto LABEL_132;
    case 2u:
      v81 = v11;
      v224 = v8;

      v82 = type metadata accessor for IconDescriptor();
      v83 = *(v82 + 20);
      v84 = sub_25268F910();
      v85 = *(*(v84 - 8) + 8);
      v85(v19 + v83, v84);
      v86 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v85(v86 + *(v82 + 20), v84);
      v87 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v88 = *(v87 + 28);
      v89 = sub_25268EEA0();
      (*(*(v89 - 8) + 8))(v19 + v88, v89);

      v90 = v19 + *(v87 + 56);
      type metadata accessor for AccessoryControl.StatusProvider();
      v91 = swift_getEnumCaseMultiPayload();
      if (v91 <= 3)
      {
        if (v91 == 1 || v91 == 3)
        {
          goto LABEL_83;
        }
      }

      else if (v91 == 4)
      {
        v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v193 = sub_25268D990();
        v194 = *(v193 - 8);
        if (!(*(v194 + 48))(v90 + v192, 1, v193))
        {
          (*(v194 + 8))(v90 + v192, v193);
        }
      }

      else if (v91 == 5 || v91 == 7)
      {
LABEL_83:
      }

      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v156 = v19 + *(v155 + 48);

      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
      v158 = v156 + *(v157 + 36);
      if (!v227(v158, 1, v81))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        v159 = *(v81 + 20);
        v160 = sub_25268DA10();
        (*(*(v160 - 8) + 8))(v158 + v159, v160);
      }

      v161 = *(v157 + 40);
      v162 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v162 - 8) + 48))(v156 + v161, 1, v162))
      {
        v163 = sub_25268ED70();
        (*(*(v163 - 8) + 8))(v156 + v161, v163);
      }

      v164 = v19 + *(v155 + 64);
      v8 = v224;
      if (!(*(v2 + 48))(v164, 1, v1))
      {

        v165 = v164 + *(v1 + 36);
        if (!v227(v165, 1, v81))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v165);
          v166 = *(v81 + 20);
          v167 = sub_25268DA10();
          (*(*(v167 - 8) + 8))(v165 + v166, v167);
        }

        v8 = v224;
        if (*(v164 + *(v1 + 40) + 32) != 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_132;
    case 3u:
      v225 = v8;

      v92 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      v93 = v19 + *(v92 + 24);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {

        v95 = type metadata accessor for IconDescriptor();
        v221 = *(v95 + 20);
        v96 = sub_25268F910();
        v97 = v11;
        v98 = *(*(v96 - 8) + 8);
        v98(v93 + v221, v96);
        v99 = v93 + *(v94 + 28);

        v98(v99 + *(v95 + 20), v96);
        v11 = v97;
      }

      v100 = v19 + *(v92 + 40);
      type metadata accessor for AccessoryControl.StatusProvider();
      v101 = swift_getEnumCaseMultiPayload();
      v102 = v11;
      if (v101 <= 3)
      {
        if (v101 == 1 || v101 == 3)
        {
          goto LABEL_95;
        }
      }

      else if (v101 == 4)
      {
        v195 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v196 = sub_25268D990();
        v197 = *(v196 - 8);
        if (!(*(v197 + 48))(v100 + v195, 1, v196))
        {
          (*(v197 + 8))(v100 + v195, v196);
        }
      }

      else if (v101 == 5 || v101 == 7)
      {
LABEL_95:
      }

      v168 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

      v169 = v168 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
      v8 = v225;
      if (!v227(v169, 1, v102))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v169);
        v170 = *(v102 + 20);
        v171 = sub_25268DA10();
        (*(*(v171 - 8) + 8))(v169 + v170, v171);
      }

LABEL_132:

      return MEMORY[0x2821FE8E8](v231, v228 + v8, v230 | v229 | 7);
    case 4u:
      v52 = v11;
      v223 = v8;

      v53 = v19 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
      {

        v55 = type metadata accessor for IconDescriptor();
        v56 = *(v55 + 20);
        v57 = sub_25268F910();
        v58 = *(*(v57 - 8) + 8);
        v58(v53 + v56, v57);
        v59 = v53 + *(v54 + 28);

        v58(v59 + *(v55 + 20), v57);
      }

      v60 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

      v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
      v8 = v223;
      if (!v227(v61, 1, v52))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v62 = *(v52 + 20);
        v63 = sub_25268DA10();
        (*(*(v63 - 8) + 8))(v61 + v62, v63);
      }

      goto LABEL_115;
    case 5u:

      v120 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
      v122 = v120 + *(v121 + 36);
      if (!v227(v122, 1, v11))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
        v123 = *(v11 + 20);
        v124 = sub_25268DA10();
        (*(*(v124 - 8) + 8))(v122 + v123, v124);
      }

      v125 = *(v121 + 40);
      v126 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v126 - 8) + 48))(v120 + v125, 1, v126))
      {
        v127 = sub_25268ED20();
        v128 = *(v127 - 8);
        if (!(*(v128 + 48))(v120 + v125, 1, v127))
        {
          (*(v128 + 8))(v120 + v125, v127);
        }
      }

      goto LABEL_132;
    case 6u:

      v134 = v11;
      v135 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
      v137 = v135 + *(v136 + 36);
      if (!v227(v137, 1, v134))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
        v138 = *(v134 + 20);
        v139 = sub_25268DA10();
        (*(*(v139 - 8) + 8))(v137 + v138, v139);
      }

      v70 = v135 + *(v136 + 40);
      v140 = type metadata accessor for AccessoryControl.ThermostatState(0);
      if ((*(*(v140 - 8) + 48))(v70, 1, v140))
      {
        goto LABEL_132;
      }

      v72 = v8;
      v141 = v70 + *(v140 + 32);
      v142 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      if ((*(*(v142 - 8) + 48))(v141, 1, v142))
      {
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v207 - 8) + 48))(v141, 1, v207))
        {
          goto LABEL_70;
        }

        v208 = *(v207 + 48);
        v209 = sub_25268D990();
        (*(*(v209 - 8) + 8))(v141 + v208, v209);
      }

      else
      {
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v207 - 8) + 48))(v141, 3, v207))
        {
          goto LABEL_70;
        }

        v215 = *(v207 + 48);
        v216 = sub_25268D990();
        v217 = *(v216 - 8);
        if (!(*(v217 + 48))(v141 + v215, 1, v216))
        {
          (*(v217 + 8))(v141 + v215, v216);
        }
      }

      v218 = *(v207 + 64);
      v219 = sub_25268DB10();
      (*(*(v219 - 8) + 8))(v141 + v218, v219);
LABEL_70:
      v75 = *(v140 + 36);
      goto LABEL_71;
    case 7u:

      v103 = v11;
      v104 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
      v106 = v104 + *(v105 + 36);
      if (!v227(v106, 1, v103))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        v107 = *(v103 + 20);
        v108 = sub_25268DA10();
        (*(*(v108 - 8) + 8))(v106 + v107, v108);
      }

      if (*(v104 + *(v105 + 40) + 8))
      {
        goto LABEL_56;
      }

      goto LABEL_132;
    case 8u:

      v143 = v11;
      v144 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
      v146 = v144 + *(v145 + 36);
      if (!v227(v146, 1, v143))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v146);
        v147 = *(v143 + 20);
        v148 = sub_25268DA10();
        (*(*(v148 - 8) + 8))(v146 + v147, v148);
      }

      v149 = v144 + *(v145 + 40);
      v150 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if ((*(*(v150 - 8) + 48))(v149, 1, v150))
      {
        goto LABEL_132;
      }

      v151 = v149 + *(v150 + 24);
      v152 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      if ((*(*(v152 - 8) + 48))(v151, 1, v152))
      {
        goto LABEL_132;
      }

      v153 = swift_getEnumCaseMultiPayload();
      if (v153 == 2)
      {
LABEL_56:
      }

      else if (v153 <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v154 = sub_25268DA10();
          (*(*(v154 - 8) + 8))(v151, v154);
        }
      }

      goto LABEL_132;
    case 9u:

      v76 = v11;
      v77 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

      v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
      if (!v227(v78, 1, v76))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        v79 = *(v76 + 20);
        v80 = sub_25268DA10();
        (*(*(v80 - 8) + 8))(v78 + v79, v80);
      }

      goto LABEL_115;
    case 0xAu:
      goto LABEL_115;
    case 0xBu:
      v51 = sub_25268DA10();
      (*(*(v51 - 8) + 8))(v19, v51);
      goto LABEL_132;
    case 0xCu:
      v64 = v11;

      if (*(v19 + 48) != 1)
      {
      }

      v65 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
      v67 = v65 + *(v66 + 36);
      if (!v227(v67, 1, v64))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        v68 = *(v64 + 20);
        v69 = sub_25268DA10();
        (*(*(v69 - 8) + 8))(v67 + v68, v69);
      }

      v70 = v65 + *(v66 + 40);
      v71 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      if ((*(*(v71 - 8) + 48))(v70, 1, v71))
      {
        goto LABEL_132;
      }

      v72 = v8;
      v73 = v70 + *(v71 + 20);
      v74 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      if ((*(*(v74 - 8) + 48))(v73, 1, v74))
      {
        goto LABEL_37;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v204 - 8) + 48))(v73, 1, v204))
        {
          goto LABEL_37;
        }

        v205 = *(v204 + 48);
        v206 = sub_25268D990();
        (*(*(v206 - 8) + 8))(v73 + v205, v206);
      }

      else
      {
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v204 - 8) + 48))(v73, 3, v204))
        {
          goto LABEL_37;
        }

        v210 = *(v204 + 48);
        v211 = sub_25268D990();
        v212 = *(v211 - 8);
        if (!(*(v212 + 48))(v73 + v210, 1, v211))
        {
          (*(v212 + 8))(v73 + v210, v211);
        }
      }

      v213 = *(v204 + 64);
      v214 = sub_25268DB10();
      (*(*(v214 - 8) + 8))(v73 + v213, v214);
LABEL_37:
      v75 = *(v71 + 24);
LABEL_71:
      v8 = v72;
      if (*(v70 + v75 + 8) >= 8uLL)
      {
LABEL_115:
      }

      goto LABEL_132;
    case 0xDu:

      v129 = type metadata accessor for IconDescriptor();
      v130 = *(v129 + 20);
      v131 = sub_25268F910();
      v132 = *(*(v131 - 8) + 8);
      v132(v19 + v130, v131);
      v133 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v132(v133 + *(v129 + 20), v131);
      type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

      goto LABEL_132;
    case 0xEu:

      v31 = type metadata accessor for IconDescriptor();
      v32 = *(v31 + 20);
      v33 = sub_25268F910();
      v34 = v11;
      v35 = *(*(v33 - 8) + 8);
      v35(v19 + v32, v33);
      v36 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v35(v36 + *(v31 + 20), v33);
      type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

      v37 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
      v39 = v37 + *(v38 + 36);
      if (!v227(v39, 1, v34))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        v40 = *(v34 + 20);
        v41 = sub_25268DA10();
        (*(*(v41 - 8) + 8))(v39 + v40, v41);
      }

      v42 = v37 + *(v38 + 40);
      v43 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
      if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
      {
        v44 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
        if (!(*(*(v44 - 8) + 48))(v42, 1, v44))
        {
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if (!(*(*(v45 - 8) + 48))(v42, 3, v45))
          {
            v46 = *(v45 + 48);
            v47 = sub_25268D990();
            v48 = *(v47 - 8);
            if (!(*(v48 + 48))(v42 + v46, 1, v47))
            {
              (*(v48 + 8))(v42 + v46, v47);
            }

            v49 = *(v45 + 64);
            v50 = sub_25268DB10();
            (*(*(v50 - 8) + 8))(v42 + v49, v50);
          }
        }
      }

      goto LABEL_132;
    default:
      goto LABEL_132;
  }
}

uint64_t sub_25233C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25233C854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_25233C9CC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;

  v7 = v1 + v4 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = type metadata accessor for IconDescriptor();
    v10 = *(v9 + 20);
    v11 = sub_25268F910();
    v22 = v5;
    v12 = *(*(v11 - 8) + 8);
    v13 = v7 + v10;
    v4 = (v3 + 16) & ~v3;
    v12(v13, v11);
    v14 = v7 + *(v8 + 28);

    v12(v14 + *(v9 + 20), v11);
    v5 = v22;
  }

  v15 = v6 + *(v2 + 20);

  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
  v17 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v23 = v5;
    v18 = *(v17 + 20);
    v19 = sub_25268DA10();
    v20 = v16 + v18;
    v5 = v23;
    (*(*(v19 - 8) + 8))(v20, v19);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_25233CCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25233CDF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25233CF04()
{
  v1 = (_s21AutoClimatePickerViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v25 = *(*v1 + 64);

  v4 = type metadata accessor for IconDescriptor();
  v5 = *(v4 + 20);
  v6 = sub_25268F910();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v7(v8 + *(v4 + 20), v6);
  type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

  v9 = v0 + v3 + v1[7];

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  v11 = v9 + *(v10 + 36);
  v12 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v13 = *(v12 + 20);
    v14 = sub_25268DA10();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  v15 = v9 + *(v10 + 40);
  v16 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
    if (!(*(*(v17 - 8) + 48))(v15, 1, v17))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if (!(*(*(v18 - 8) + 48))(v15, 3, v18))
      {
        v19 = *(v18 + 48);
        v20 = sub_25268D990();
        v21 = *(v20 - 8);
        if (!(*(v21 + 48))(v15 + v19, 1, v20))
        {
          (*(v21 + 8))(v15 + v19, v20);
        }

        v22 = *(v18 + 64);
        v23 = sub_25268DB10();
        (*(*(v23 - 8) + 8))(v15 + v22, v23);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v25, v2 | 7);
}

uint64_t sub_25233D338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AccessoryControl(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25233D42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for AccessoryControl(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_25233D52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 65);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25233D5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 65) = -a2;
  }

  return result;
}

uint64_t sub_25233D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_25233D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_25233D7B0()
{
  v1 = type metadata accessor for HeaderView.TitleDescriptionHeader(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4 + *(v1 + 24);

  v6 = v5 + *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v7 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      v9 = *(type metadata accessor for IconDescriptor() + 20);
      v10 = sub_25268F910();
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898);
    }
  }

  v11 = v0 + v4 + *(v1 + 32);
  sub_25235E264(*v11, *(v11 + 8));

  return MEMORY[0x2821FE8E8](v0, ((((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25233D988()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25233DAD8()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_25268DA10();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25233DC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25233DDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25233DEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 65);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25233DF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 65) = -a2;
  }

  return result;
}

uint64_t sub_25233E090()
{
  v1 = sub_2526909E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25233E118()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25233E1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25233E280(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2;
  }

  return result;
}

uint64_t sub_25233E33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessoryControlsHeaderConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25233E3E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControlsHeaderConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25233E4A0()
{
  v1 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v18 = sub_252690A20();
  v5 = *(v18 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + v3;

  v8 = v0 + v3 + v1[6];

  v9 = v8 + *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v10 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      v12 = *(type metadata accessor for IconDescriptor() + 20);
      v13 = sub_25268F910();
      (*(*(v13 - 8) + 8))(v9 + v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898);
    }
  }

  v14 = (v3 + v4 + v6) & ~v6;
  v15 = v7 + v1[7];
  sub_252457A80(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 65));
  sub_25235E264(*(v7 + v1[8]), *(v7 + v1[8] + 8));
  (*(v5 + 8))(v0 + v14, v18);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v2 | v6 | 7);
}

uint64_t sub_25233E734()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2940);
  sub_2525688DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25233E7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Device();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25233E850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Device();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25233E8F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_25233E994()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25233EA28()
{
  v1 = type metadata accessor for AccessoryControlContainerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3 + v1[6];
  v6 = sub_25268DA10();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for Device();

  v8 = v5 + *(v7 + 24);

  v9 = *(type metadata accessor for IconDescriptor() + 20);
  v10 = sub_25268F910();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v11 = v0 + v3 + v1[8];
  if (*(v11 + 56))
  {

    if (*(v11 + 96))
    {
    }

    v12 = *(v11 + 184);
    if (v12)
    {
    }

    v13 = *(v11 + 344);
    if (v13)
    {
    }

    if (*(v11 + 384))
    {
    }
  }

  v14 = v0 + v3 + v1[9];
  sub_252457A80(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 65));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25233ED24()
{
  v1 = type metadata accessor for AccessoryControlContainerView(0);
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v20 = sub_252690A20();
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v5 + v1[6];
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for Device();

  v9 = v6 + *(v8 + 24);

  v10 = *(type metadata accessor for IconDescriptor() + 20);
  v11 = sub_25268F910();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  v12 = v5 + v1[8];
  if (*(v12 + 56))
  {

    if (*(v12 + 96))
    {
    }

    v13 = *(v12 + 184);
    if (v13)
    {
    }

    v14 = *(v12 + 344);
    if (v14)
    {
    }

    if (*(v12 + 384))
    {
    }
  }

  v15 = (((v2 + 16) & ~v2) + v18 + v4) & ~v4;
  v16 = v5 + v1[9];
  sub_252457A80(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 65));

  (*(v3 + 8))(v0 + v15, v20);

  return MEMORY[0x2821FE8E8](v0, v15 + v19, v2 | v4 | 7);
}

uint64_t sub_25233F0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25233F174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25233F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25233F388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25233F448()
{
  v1 = type metadata accessor for AccessoryControlHorizontalSheetView();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = v0 + v4 + *(v1 + 20);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for Device();

  v9 = v6 + *(v8 + 24);

  v10 = *(type metadata accessor for IconDescriptor() + 20);
  v11 = sub_25268F910();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  v12 = v0 + v4 + *(v2 + 40);
  sub_252457A80(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 65));

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25233F674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25233F740()
{
  v1 = (type metadata accessor for AccessoryControlModelView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = v1[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v5 + v6, AssociatedTypeWitness);

  __swift_destroy_boxed_opaque_existential_1Tm(v5 + v1[13]);

  swift_unknownObjectRelease();

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25233F8C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25233F900()
{
  v1 = type metadata accessor for AccessoryControlModelView();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v6 + v7, AssociatedTypeWitness);

  __swift_destroy_boxed_opaque_existential_1Tm(v6 + *(v2 + 52));

  swift_unknownObjectRelease();

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25233FB00()
{
  v1 = type metadata accessor for AccessoryControlSheetView(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = v0 + v4 + *(v1 + 20);
  v8 = sub_25268DA10();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for Device();

  v10 = v7 + *(v9 + 24);

  v11 = *(type metadata accessor for IconDescriptor() + 20);
  v12 = sub_25268F910();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v6 + *(v2 + 44);
  sub_252457A80(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 65));

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25233FD78@<X0>(void *a1@<X8>)
{
  sub_252582F34();
  result = sub_252691100();
  *a1 = v3;
  return result;
}

uint64_t sub_25233FE38()
{
  v1 = (type metadata accessor for AccessoryControlSheetView(0) - 8);
  v99 = *(*v1 + 80);
  v2 = (v99 + 16) & ~v99;
  v3 = v2 + *(*v1 + 64);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v97 = *(*v4 + 80);
  v101 = (v3 + v97) & ~v97;
  v98 = *(*v4 + 64);
  v5 = v0 + v2;
  v6 = v0 + v2 + v1[7];
  v7 = sub_25268DA10();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for Device();

  v10 = v6 + *(v9 + 24);

  v96 = type metadata accessor for IconDescriptor();
  v11 = *(v96 + 20);
  v12 = sub_25268F910();
  v13 = v10 + v11;
  v14 = *(*(v12 - 8) + 8);
  v95 = v12;
  v14(v13, v12);

  v15 = v8;

  v16 = v5 + v1[11];
  sub_252457A80(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 65));

  v17 = v100 + v101 + v4[10];
  v8(v17, v7);
  v18 = type metadata accessor for Device.Control(0);
  v19 = v17 + *(v18 + 20);
  type metadata accessor for Device.Control.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (*(v19 + 8))
        {
        }

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v50 = type metadata accessor for AccessoryControl.StatusButtonState(0);
        if (!(*(*(v50 - 8) + 48))(v19, 1, v50))
        {

          v51 = v19 + *(v50 + 24);
          v52 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
          {
            v88 = swift_getEnumCaseMultiPayload();
            if (v88 == 2)
            {
            }

            else if (v88 <= 1)
            {
              type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v15(v51, v7);
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_49;
      }

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v8(v19, v7);
      goto LABEL_49;
    }

    v36 = type metadata accessor for AccessoryControl.ThermostatState(0);
    if ((*(*(v36 - 8) + 48))(v19, 1, v36))
    {
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);
LABEL_48:

      goto LABEL_49;
    }

    v37 = v19 + *(v36 + 32);
    v38 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v85 - 8) + 48))(v37, 1, v85))
        {
          goto LABEL_25;
        }

        v86 = *(v85 + 48);
        v87 = sub_25268D990();
        (*(*(v87 - 8) + 8))(v37 + v86, v87);
      }

      else
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v85 - 8) + 48))(v37, 3, v85))
        {
          goto LABEL_25;
        }

        v89 = *(v85 + 48);
        v90 = sub_25268D990();
        v91 = *(v90 - 8);
        if (!(*(v91 + 48))(v37 + v89, 1, v90))
        {
          (*(v91 + 8))(v37 + v89, v90);
        }
      }

      v92 = *(v85 + 64);
      v93 = sub_25268DB10();
      (*(*(v93 - 8) + 8))(v37 + v92, v93);
    }

LABEL_25:
    if (*(v19 + *(v36 + 36) + 8) >= 8uLL)
    {
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_49;
      }

      v21 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v21 - 8) + 48))(v19, 1, v21))
      {
        v22 = sub_25268ED70();
        (*(*(v22 - 8) + 8))(v19, v22);
      }

      v23 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);

      v14(v23 + *(v96 + 20), v95);
      v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v14(v24 + *(v96 + 20), v95);
      v25 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v26 = *(v25 + 28);
      v27 = sub_25268EEA0();
      (*(*(v27 - 8) + 8))(v23 + v26, v27);

      v28 = *(v25 + 56);
      goto LABEL_31;
    }

    if (*(v19 + 32) != 1)
    {
    }

    v29 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);

    v14(v29 + *(v96 + 20), v95);
    v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

    v14(v30 + *(v96 + 20), v95);
    v31 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

    v32 = v29 + v31[6];
    type metadata accessor for ControlTextModifier.Config(0);
    v33 = swift_getEnumCaseMultiPayload();
    if (v33 == 1)
    {
    }

    else if (!v33)
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
      v35 = sub_25268D990();
      (*(*(v35 - 8) + 8))(v32 + v34, v35);
    }

    v76 = v29 + v31[7];
    v77 = *(v76 + 32);
    if (v77 != 255)
    {
      sub_252376DBC(*v76, *(v76 + 8), *(v76 + 16), *(v76 + 24), v77);
    }

    v78 = v29 + v31[8];
    v79 = *(v78 + 32);
    if (v79 != 255)
    {
      sub_252376DBC(*v78, *(v78 + 8), *(v78 + 16), *(v78 + 24), v79);
    }

    v80 = v29 + v31[11];
    type metadata accessor for AccessoryControl.StatusProvider();
    v81 = swift_getEnumCaseMultiPayload();
    if (v81 <= 3)
    {
      if (v81 != 1 && v81 != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_87;
    }

    if (v81 == 4)
    {
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
      v83 = sub_25268D990();
      v84 = *(v83 - 8);
      if (!(*(v84 + 48))(v80 + v82, 1, v83))
      {
        (*(v84 + 8))(v80 + v82, v83);
      }

      goto LABEL_10;
    }

    if (v81 == 5 || v81 == 7)
    {
LABEL_87:
    }

LABEL_10:

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v47 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v47 - 8) + 48))(v19, 1, v47))
      {
        v48 = sub_25268ED20();
        v49 = *(v48 - 8);
        if (!(*(v49 + 48))(v19, 1, v48))
        {
          (*(v49 + 8))(v19, v48);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);
    }

    goto LABEL_48;
  }

  v23 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);

  v39 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v40 = v23 + *(v39 + 24);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
  {

    v14(v40 + *(v96 + 20), v95);
    v42 = *(v41 + 28);
    v43 = v14;
    v44 = v40 + v42;

    v43(v44 + *(v96 + 20), v95);
  }

  v28 = *(v39 + 40);
LABEL_31:
  v45 = v23 + v28;
  type metadata accessor for AccessoryControl.StatusProvider();
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 <= 3)
  {
    if (v46 == 1 || v46 == 3)
    {
      goto LABEL_48;
    }
  }

  else if (v46 == 4)
  {
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v74 = sub_25268D990();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v45 + v73, 1, v74))
    {
      (*(v75 + 8))(v45 + v73, v74);
    }
  }

  else if (v46 == 5 || v46 == 7)
  {
    goto LABEL_48;
  }

LABEL_49:
  v53 = v17 + *(v18 + 24);
  type metadata accessor for Device.Control.Source(0);
  v54 = swift_getEnumCaseMultiPayload();
  if (v54 <= 2)
  {
    if (v54)
    {
      if (v54 == 1)
      {
        v58 = sub_25268E710();
        (*(*(v58 - 8) + 8))(v53, v58);
        v59 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
        v60 = sub_25268E310();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(v53 + v59, 1, v60))
        {
          (*(v61 + 8))(v53 + v59, v60);
        }

        v62 = type metadata accessor for MatterControlSolver.Source(0);

        v63 = v62[6];
        v64 = sub_25268F130();
        v65 = *(v64 - 8);
        if (!(*(v65 + 48))(v53 + v63, 1, v64))
        {
          (*(v65 + 8))(v53 + v63, v64);
        }

        v66 = v62[8];
        v67 = sub_25268F8E0();
        (*(*(v67 - 8) + 8))(v53 + v66, v67);
        v68 = v62[11];
        v69 = sub_25268EDA0();
        v70 = *(v69 - 8);
        if (!(*(v70 + 48))(v53 + v68, 1, v69))
        {
          (*(v70 + 8))(v53 + v68, v69);
        }

        v71 = v62[13];
        v72 = sub_25268E2F0();
        (*(*(v72 - 8) + 8))(v53 + v71, v72);
      }

      else if (v54 != 2)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v55 = sub_25268F4D0();
      (*(*(v55 - 8) + 8))(v53, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
    }
  }

  else if (v54 > 4)
  {
    if (v54 == 5 || v54 == 6)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v54 != 3)
    {
LABEL_59:

      goto LABEL_70;
    }

    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090) + 48);
    v57 = sub_25268E530();
    (*(*(v57 - 8) + 8))(v53 + v56, v57);
  }

LABEL_70:

  return MEMORY[0x2821FE8E8](v100, v101 + v98, v99 | v97 | 7);
}

uint64_t sub_25234105C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523410E8()
{
  v1 = type metadata accessor for AccessoryControlSheetView.ControlsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3 + *(v1 + 20);
  v6 = sub_25268DA10();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for Device();

  v8 = v5 + *(v7 + 24);

  v9 = *(type metadata accessor for IconDescriptor() + 20);
  v10 = sub_25268F910();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523412F0()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2523413A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2523413E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_252341484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_252341490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252586474();
  *a1 = result;
  return result;
}

__n128 sub_2523414F4@<Q0>(uint64_t a1@<X8>)
{
  sub_2525867D4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252341578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252586B2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2523415DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252586C98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_252341608(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  sub_252586E04(v1, v2);
}

uint64_t sub_252341650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252587128();
  *a1 = result;
  return result;
}

uint64_t sub_25234167C()
{

  sub_2525891E4(v0);
}

uint64_t sub_2523416E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_25268E530();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3468);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = sub_25268E2F0();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_5;
    }

    v18 = sub_25268FEB0();
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[19];
      goto LABEL_5;
    }

    v19 = sub_25268F1A0();
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[20];
      goto LABEL_5;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[21];
      goto LABEL_5;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v8 = v21;
      v12 = *(v21 - 8);
      v13 = a3[22];
      goto LABEL_5;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
    if (*(*(v22 - 8) + 84) == a2)
    {
      v8 = v22;
      v12 = *(v22 - 8);
      v13 = a3[23];
      goto LABEL_5;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
    v24 = *(*(v23 - 8) + 48);
    v25 = a1 + a3[24];

    return v24(v25, a2, v23);
  }
}

uint64_t sub_252341A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25268DA10();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_25268E530();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3468);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_25268E2F0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  v18 = sub_25268FEB0();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[19];
    goto LABEL_5;
  }

  v19 = sub_25268F1A0();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[20];
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[21];
    goto LABEL_5;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[22];
    goto LABEL_5;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[23];
    goto LABEL_5;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[24];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_252341E48()
{
  v1 = sub_25268E0A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for DataModel.ObjectIdentifier() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  if (swift_getEnumCaseMultiPayload() <= 4)
  {
    v10 = sub_25268DA10();
    v11 = *(*(v10 - 8) + 8);
    v11(v0 + v8, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60);
    v11(v0 + v8 + *(v12 + 48), v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252342008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268E710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 9)
      {
        return v14 - 8;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25234211C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25268E710();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 8;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252342230(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_25268F8E0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB448);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = sub_25268E2F0();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[13];

  return v19(v20, a2, v18);
}

uint64_t sub_252342450(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for MatterControlSolver.SourcePath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_25268F8E0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB448);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = sub_25268E2F0();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_252342670()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2523426B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2523427E4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_252342918()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252342950()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252342A7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Device.Control.Kind(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Device.Control.Source(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_252342BE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25268DA10();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Device.Control.Kind(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for Device.Control.Source(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252342D34@<X0>(uint64_t *a1@<X8>)
{
  result = Device.ControlGroup.controls.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252342D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.ControlGroup.LayoutType(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252342E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device.ControlGroup.LayoutType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_252342F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252342FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2523430C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for IconDescriptor();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2523431E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268DA10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for IconDescriptor();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_252343314(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Device();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_252343438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Device();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25235A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.ControlModule(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25235A19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device.ControlModule(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25235A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25235A310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device.Control(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_25235A3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.ControlGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_25235A4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Device.ControlGroup(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DisplayControlGroup.LayoutType(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25235A5FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25235A634()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25235A66C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_25235A6DC@<D0>(_OWORD *a1@<X8>)
{
  sub_2526798C4();
  sub_252691100();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25235A730@<X0>(_BYTE *a1@<X8>)
{
  sub_252679870();
  result = sub_252691100();
  *a1 = v3;
  return result;
}

uint64_t sub_25235A7CC()
{
  if (*(v0 + 24))
  {

    if (*(v0 + 64) != 1)
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

__n128 sub_25235A824@<Q0>(uint64_t a1@<X8>)
{
  sub_252431FB4();
  sub_252691100();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_25235A92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25235A998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25235AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25235AB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268DA10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25235AC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25235AD34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268DA10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25235ADEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 16);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25235AF58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 16) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25235B0C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_25235B254(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25235B3D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_25235B568(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25235B734()
{
  v1 = type metadata accessor for AccessoryControlDecorationButton.TextButtonContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);
  v132 = (v2 + 16) & ~v2;
  v133 = v0;
  v3 = v0 + v132;
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v132, v4);
  v6 = type metadata accessor for AccessoryControlDecorationButton.Config(0);

  v7 = v0 + v132 + *(v6 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = v7 + *(v8 + 32);
    v5(v9, v4);
    v10 = type metadata accessor for Device.Control(0);
    v11 = v9 + *(v10 + 20);
    type metadata accessor for Device.Control.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_20:

            goto LABEL_69;
          }

          v51 = type metadata accessor for AccessoryControl.ColorState(0);
          if (!(*(*(v51 - 8) + 48))(v11, 1, v51))
          {
            v52 = sub_25268ED20();
            v53 = *(v52 - 8);
            if (!(*(v53 + 48))(v11, 1, v52))
            {
              (*(v53 + 8))(v11, v52);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

LABEL_69:
          v63 = v9 + *(v10 + 24);
          type metadata accessor for Device.Control.Source(0);
          v64 = swift_getEnumCaseMultiPayload();
          if (v64 <= 2)
          {
            if (v64)
            {
              if (v64 == 1)
              {
                v68 = sub_25268E710();
                (*(*(v68 - 8) + 8))(v63, v68);
                v69 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
                v70 = sub_25268E310();
                v71 = *(v70 - 8);
                if (!(*(v71 + 48))(v63 + v69, 1, v70))
                {
                  (*(v71 + 8))(v63 + v69, v70);
                }

                v72 = type metadata accessor for MatterControlSolver.Source(0);

                v73 = v72[6];
                v74 = sub_25268F130();
                v75 = *(v74 - 8);
                if (!(*(v75 + 48))(v63 + v73, 1, v74))
                {
                  (*(v75 + 8))(v63 + v73, v74);
                }

                v76 = v72[8];
                v77 = sub_25268F8E0();
                (*(*(v77 - 8) + 8))(v63 + v76, v77);
                v78 = v72[11];
                v79 = sub_25268EDA0();
                v80 = *(v79 - 8);
                if (!(*(v80 + 48))(v63 + v78, 1, v79))
                {
                  (*(v80 + 8))(v63 + v78, v79);
                }

                v81 = v72[13];
                v82 = sub_25268E2F0();
                (*(*(v82 - 8) + 8))(v63 + v81, v82);
              }

              else if (v64 == 2)
              {
              }
            }

            else
            {
              v65 = sub_25268F4D0();
              (*(*(v65 - 8) + 8))(v63, v65);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
            }

            goto LABEL_89;
          }

          if (v64 > 4)
          {
            if (v64 != 5 && v64 != 6)
            {
              goto LABEL_89;
            }
          }

          else if (v64 == 3)
          {

            v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090) + 48);
            v67 = sub_25268E530();
            (*(*(v67 - 8) + 8))(v63 + v66, v67);
            goto LABEL_89;
          }

LABEL_89:

          goto LABEL_90;
        }

        v129 = v10;
        v41 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);

        v42 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
        v43 = v41 + *(v42 + 24);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
        if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
        {

          v125 = type metadata accessor for IconDescriptor();
          v124 = *(v125 + 20);
          v45 = sub_25268F910();
          v46 = *(*(v45 - 8) + 8);
          v46(v43 + v124, v45);
          v47 = v43 + *(v44 + 28);

          v46(v47 + *(v125 + 20), v45);
        }

        v24 = v41 + *(v42 + 40);
        type metadata accessor for AccessoryControl.StatusProvider();
        v25 = swift_getEnumCaseMultiPayload();
        v10 = v129;
        if (v25 > 3)
        {
          if (v25 == 4)
          {
LABEL_37:
            v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v49 = sub_25268D990();
            v50 = *(v49 - 8);
            if (!(*(v50 + 48))(v24 + v48, 1, v49))
            {
              (*(v50 + 8))(v24 + v48, v49);
            }

            goto LABEL_69;
          }

LABEL_18:
          if (v25 == 5 || v25 == 7)
          {
            goto LABEL_20;
          }

          goto LABEL_69;
        }

        if (v25 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_52;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_69;
        }

        v127 = v10;
        v13 = type metadata accessor for AccessoryControl.IncrementalState(0);
        if (!(*(*(v13 - 8) + 48))(v11, 1, v13))
        {
          v14 = sub_25268ED70();
          (*(*(v14 - 8) + 8))(v11, v14);
        }

        v15 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);

        v16 = type metadata accessor for IconDescriptor();
        v17 = *(v16 + 20);
        v18 = sub_25268F910();
        v19 = *(*(v18 - 8) + 8);
        v19(v15 + v17, v18);
        v20 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

        v19(v20 + *(v16 + 20), v18);
        v21 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

        v22 = *(v21 + 28);
        v23 = sub_25268EEA0();
        (*(*(v23 - 8) + 8))(v15 + v22, v23);

        v24 = v15 + *(v21 + 56);
        type metadata accessor for AccessoryControl.StatusProvider();
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 > 3)
        {
          v10 = v127;
          if (v25 == 4)
          {
            goto LABEL_37;
          }

          goto LABEL_18;
        }

        v10 = v127;
        if (v25 == 1)
        {
          goto LABEL_20;
        }

LABEL_52:
        if (v25 == 3)
        {
          goto LABEL_20;
        }

        goto LABEL_69;
      }

      v128 = v10;
      if (*(v11 + 32) != 1)
      {
      }

      v26 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);

      v27 = type metadata accessor for IconDescriptor();
      v28 = *(v27 + 20);
      v29 = sub_25268F910();
      v30 = *(*(v29 - 8) + 8);
      v30(v26 + v28, v29);
      v31 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v30(v31 + *(v27 + 20), v29);
      v32 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v33 = v26 + v32[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 == 1)
      {
      }

      else if (!v34)
      {
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v36 = sub_25268D990();
        (*(*(v36 - 8) + 8))(v33 + v35, v36);
      }

      v57 = v26 + v32[7];
      v58 = *(v57 + 32);
      if (v58 != 255)
      {
        sub_252376DBC(*v57, *(v57 + 8), *(v57 + 16), *(v57 + 24), v58);
      }

      v59 = v26 + v32[8];
      v60 = *(v59 + 32);
      if (v60 != 255)
      {
        sub_252376DBC(*v59, *(v59 + 8), *(v59 + 16), *(v59 + 24), v60);
      }

      v61 = v26 + v32[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v62 = swift_getEnumCaseMultiPayload();
      if (v62 <= 3)
      {
        if (v62 != 1 && v62 != 3)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v62 == 4)
        {
          v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
          v109 = sub_25268D990();
          v110 = *(v109 - 8);
          if (!(*(v110 + 48))(v61 + v108, 1, v109))
          {
            (*(v110 + 8))(v61 + v108, v109);
          }

          goto LABEL_67;
        }

        if (v62 != 5 && v62 != 7)
        {
LABEL_67:

          goto LABEL_68;
        }
      }

      goto LABEL_67;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (*(v11 + 8))
        {
        }

        goto LABEL_69;
      }

      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload == 9)
        {
        }

        goto LABEL_69;
      }

      v128 = v10;
      v54 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if (!(*(*(v54 - 8) + 48))(v11, 1, v54))
      {

        v55 = v11 + *(v54 + 24);
        v56 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
        if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
        {
          v114 = swift_getEnumCaseMultiPayload();
          if (v114 == 2)
          {
          }

          else if (v114 <= 1)
          {
            type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v5(v55, v4);
            }
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

LABEL_68:
      v10 = v128;
      goto LABEL_69;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v5(v11, v4);
      goto LABEL_69;
    }

    v37 = type metadata accessor for AccessoryControl.ThermostatState(0);
    if ((*(*(v37 - 8) + 48))(v11, 1, v37))
    {
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

      goto LABEL_69;
    }

    v38 = v10;
    v39 = v11 + *(v37 + 32);
    v40 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v111 - 8) + 48))(v39, 1, v111))
        {
          goto LABEL_30;
        }

        v112 = *(v111 + 48);
        v113 = sub_25268D990();
        (*(*(v113 - 8) + 8))(v39 + v112, v113);
      }

      else
      {
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v115 - 8) + 48))(v39, 3, v115))
        {
          goto LABEL_30;
        }

        v130 = v115;
        v116 = *(v115 + 48);
        v117 = sub_25268D990();
        v118 = v39;
        v119 = *(v117 - 8);
        v120 = v118;
        v126 = v117;
        if (!(*(v119 + 48))(v118 + v116, 1))
        {
          (*(v119 + 8))(v120 + v116, v126);
        }

        v39 = v120;
        v111 = v130;
      }

      v121 = *(v111 + 64);
      v122 = sub_25268DB10();
      (*(*(v122 - 8) + 8))(v39 + v121, v122);
    }

LABEL_30:
    v10 = v38;
    if (*(v11 + *(v37 + 36) + 8) >= 8uLL)
    {
    }

    goto LABEL_32;
  }

LABEL_90:
  v83 = v3 + v1[5];
  if (*(v83 + 8))
  {

    if (*(v83 + 48) != 1)
    {
    }
  }

  v84 = v3 + v1[6];

  v85 = type metadata accessor for IconDescriptor();
  v86 = *(v85 + 20);
  v87 = sub_25268F910();
  v88 = *(*(v87 - 8) + 8);
  v88(v84 + v86, v87);
  v89 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v88(v89 + *(v85 + 20), v87);
  v90 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v91 = v84 + v90[6];
  type metadata accessor for ControlTextModifier.Config(0);
  v92 = swift_getEnumCaseMultiPayload();
  if (v92 == 1)
  {
  }

  else if (!v92)
  {
    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
    v94 = sub_25268D990();
    (*(*(v94 - 8) + 8))(v91 + v93, v94);
  }

  v95 = v84 + v90[7];
  v96 = *(v95 + 32);
  if (v96 != 255)
  {
    sub_252376DBC(*v95, *(v95 + 8), *(v95 + 16), *(v95 + 24), v96);
  }

  v97 = v84 + v90[8];
  v98 = *(v97 + 32);
  if (v98 != 255)
  {
    sub_252376DBC(*v97, *(v97 + 8), *(v97 + 16), *(v97 + 24), v98);
  }

  v99 = v84 + v90[11];
  type metadata accessor for AccessoryControl.StatusProvider();
  v100 = swift_getEnumCaseMultiPayload();
  if (v100 <= 3)
  {
    if (v100 == 1 || v100 == 3)
    {
      goto LABEL_108;
    }
  }

  else if (v100 == 4)
  {
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v106 = sub_25268D990();
    v107 = *(v106 - 8);
    if (!(*(v107 + 48))(v99 + v105, 1, v106))
    {
      (*(v107 + 8))(v99 + v105, v106);
    }
  }

  else if (v100 == 5 || v100 == 7)
  {
LABEL_108:
  }

  v101 = v3 + v1[7];
  sub_252457A80(*v101, *(v101 + 8), *(v101 + 16), *(v101 + 24), *(v101 + 32), *(v101 + 40), *(v101 + 48), *(v101 + 56), *(v101 + 64), *(v101 + 65));
  v102 = v1[8];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  v104 = *(*(v103 - 8) + 8);
  v104(v3 + v102, v103);
  v104(v3 + v1[9], v103);
  v104(v3 + v1[10], v103);

  return MEMORY[0x2821FE8E8](v133, v132 + v131, v2 | 7);
}

uint64_t sub_25235CC94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252691080();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25235CCEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252690FD0();
  *a1 = result;
  return result;
}

uint64_t sub_25235CD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252691030();
  *a1 = result;
  return result;
}

uint64_t sub_25235CDA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2526910A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25235CE04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252690FF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25235CE34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252691000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25235CE74()
{
  v1 = sub_2526909E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25235CEFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25235CF38()
{
  v1 = *(type metadata accessor for AccessoryControlDecorationButton.OverlayModifier.ButtonAlignmentGroup(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25268DA10();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25235D0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25235D184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25235D278()
{
  sub_252692630();
  sub_2526925C0();
  sub_252691480();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25235D398()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25235D3D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2526905A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_25235D47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2526905A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25235D558()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E08B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E49D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E49E0);
  sub_252400FC8(&qword_27F4E08C0, &qword_27F4E08B0);
  sub_25268221C();
  swift_getOpaqueTypeConformance2();
  sub_252682270();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

double sub_25235D704@<D0>(double *a1@<X8>)
{
  sub_2526838B8();
  sub_252691100();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25235D7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC1A0);
  sub_252690C30();
  sub_25268390C();
  return swift_getWitnessTable();
}

uint64_t sub_25235D818()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25235D850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25268F910();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25235D8FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25268F910();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25235D9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252691080();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25235D9FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25235DA34()
{
  sub_252690C30();
  sub_2526914B0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC1A0);
  sub_252690C30();
  sub_252691480();
  sub_25249A86C();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25235DBD8()
{
  sub_252690C30();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC1A0);
  sub_252690C30();
  sub_252691480();
  sub_25249A86C();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25235DD54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6F0);
  sub_252690C30();
  sub_252400FC8(&qword_27F4DE6E8, &qword_27F4DE6F0);
  return swift_getWitnessTable();
}

uint64_t sub_25235DE00()
{

  sub_25235E264(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25235DE5C()
{
  v1 = sub_2526909E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25235DEE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25235DF20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Device();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25235E050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Device();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25235E190(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_25235E1A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_25235E20C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25235E21C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25235E264(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_25235E284(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_25235E298(uint64_t a1, unint64_t a2)
{
  if (a2 != 7)
  {
    return sub_25235E190(a1, a2);
  }

  return a1;
}

uint64_t sub_25235E2A8(uint64_t a1, unint64_t a2)
{
  if (a2 != 7)
  {
    return sub_25235E284(a1, a2);
  }

  return a1;
}

uint64_t sub_25235E2B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t default argument 1 of static MatterControlSolver.controlModules(with:valueDestination:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25235E380@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v2 = sub_2526905A0();
  v3 = __swift_project_value_buffer(v2, qword_27F4E4B18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25235E46C()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t sub_25235E4B4()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t sub_25235E4F8()
{
  v0 = sub_252692BD0();
  v1 = MEMORY[0x2530A4860](v0);

  return v1;
}

uint64_t sub_25235E534()
{
  sub_252692BD0();
  sub_252692C80();
}

uint64_t sub_25235E588()
{
  sub_252692BD0();
  sub_252693460();
  sub_252692C80();
  v0 = sub_2526934C0();

  return v0;
}

uint64_t sub_25235E604(uint64_t a1, id *a2)
{
  result = sub_252692BB0();
  *a2 = 0;
  return result;
}

uint64_t sub_25235E67C(uint64_t a1, id *a2)
{
  v3 = sub_252692BC0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25235E6FC@<X0>(uint64_t *a1@<X8>)
{
  sub_252692BD0();
  v2 = sub_252692BA0();

  *a1 = v2;
  return result;
}

void *sub_25235E768@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_25235E794@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25235E844()
{
  v0 = sub_252692BD0();
  v2 = v1;
  if (v0 == sub_252692BD0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2526933B0();
  }

  return v5 & 1;
}

uint64_t sub_25235E8CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25235EA3C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25235E90C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252692BA0();

  *a1 = v2;
  return result;
}

uint64_t sub_25235E954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252692BD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25235E980(uint64_t a1)
{
  v2 = sub_25235EC9C(&qword_27F4DAD40, type metadata accessor for Key);
  v3 = sub_25235EC9C(&qword_27F4DAD48, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25235EA3C(uint64_t a1)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25235EABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_25235EB48(uint64_t a1, int a2)
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

uint64_t sub_25235EB68(uint64_t result, int a2, int a3)
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

uint64_t sub_25235EC9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25235F00C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AccessoryControlSolver.HAP.controlModules(with:endpoint:staticHome:)(char *a1, uint64_t a2, char *a3)
{
  v129 = a2;
  v130 = a3;
  v133 = a1;
  v132 = sub_25268EE60();
  v126 = *(v132 - 8);
  v3 = MEMORY[0x28223BE20](v132);
  v105[0] = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v113 = v105 - v6;
  MEMORY[0x28223BE20](v5);
  v107 = v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v111 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v112 = v105 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v131 = v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v121 = v105 - v16;
  MEMORY[0x28223BE20](v15);
  v118 = (v105 - v17);
  v18 = sub_25268E040();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v124 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v128 = v105 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v105 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v119 = (v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v123 = v105 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v105 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v105 - v34;
  v36 = sub_25268EBE0();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v122 = v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v127 = v105 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = v105 - v42;
  v44 = type metadata accessor for HAPControlSolver.Source();
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v110 = v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v115 = v105 - v47;
  v137 = v37;
  v49 = *(v37 + 16);
  v48 = v37 + 16;
  v114 = v43;
  v50 = v43;
  v51 = v126;
  v136 = v49;
  v49(v50, v133, v36);
  sub_25237153C(v129, v35, &qword_27F4DAD58);
  v138 = v19;
  v52 = *(v19 + 16);
  v116 = v25;
  v120 = v18;
  v134 = v52;
  v135 = v19 + 16;
  v52(v25, v130, v18);
  v117 = v35;
  v53 = v132;
  sub_25237153C(v35, v33, &qword_27F4DAD58);
  v54 = *(v51 + 48);
  v109 = v51 + 48;
  v108 = v54;
  if (v54(v33, 1, v53) == 1)
  {
    sub_252372288(v33, &qword_27F4DAD58);
    v55 = 1;
    v56 = v121;
  }

  else
  {
    v57 = v107;
    (*(v51 + 32))(v107, v33, v53);
    v58 = v113;
    (*(v51 + 16))(v113, v57, v53);
    v56 = v121;
    MatterControlSolver.Source.init(with:)(v58, v121);
    (*(v51 + 8))(v57, v53);
    v55 = 0;
  }

  v59 = type metadata accessor for MatterControlSolver.Source(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v107 = v59;
  v106 = v61;
  v105[1] = v60 + 56;
  (v61)(v56, v55, 1);
  v62 = v56;
  v63 = v118;
  sub_2523714D4(v62, v118, &qword_27F4DAD50);
  v64 = v127;
  v65 = v114;
  v121 = v48;
  v136(v127, v114, v36);
  v66 = v131;
  sub_25237153C(v63, v131, &qword_27F4DAD50);
  v67 = v36;
  v68 = v128;
  v69 = v116;
  v70 = v120;
  v134(v128, v116, v120);
  v71 = v115;
  v72 = v68;
  v73 = v67;
  sub_25259AF74(v64, v66, v72, v115);
  sub_252372288(v63, &qword_27F4DAD50);
  v74 = *(v138 + 8);
  v138 += 8;
  v74(v69, v70);
  sub_252372288(v117, &qword_27F4DAD58);
  v75 = v137 + 8;
  v76 = *(v137 + 8);
  v76(v65, v67);
  if (sub_252366DF4(v71))
  {
    v78 = (*(v77 + 32))(v71, v125);
    sub_252372228(v71, type metadata accessor for HAPControlSolver.Source);
    v79 = v119;
    if (v78)
    {
      return v78;
    }
  }

  else
  {
    sub_252372228(v71, type metadata accessor for HAPControlSolver.Source);
    v79 = v119;
  }

  v137 = v75;
  v119 = v74;
  v136(v122, v133, v73);
  v81 = v123;
  sub_25237153C(v129, v123, &qword_27F4DAD58);
  v134(v124, v130, v70);
  sub_25237153C(v81, v79, &qword_27F4DAD58);
  v82 = v132;
  v83 = v108(v79, 1, v132);
  v118 = v76;
  if (v83 == 1)
  {
    sub_252372288(v79, &qword_27F4DAD58);
    v84 = 1;
    v85 = v111;
  }

  else
  {
    v86 = v126;
    v87 = v105[0];
    (*(v126 + 32))(v105[0], v79, v82);
    v88 = v113;
    (*(v86 + 16))(v113, v87, v82);
    v85 = v111;
    MatterControlSolver.Source.init(with:)(v88, v111);
    (*(v86 + 8))(v87, v82);
    v84 = 0;
  }

  v106(v85, v84, 1, v107);
  v89 = v112;
  sub_2523714D4(v85, v112, &qword_27F4DAD50);
  v90 = v127;
  v91 = v122;
  v136(v127, v122, v73);
  v92 = v131;
  sub_25237153C(v89, v131, &qword_27F4DAD50);
  v93 = v73;
  v94 = v128;
  v95 = v124;
  v134(v128, v124, v70);
  v96 = v70;
  v97 = v110;
  sub_25259AF74(v90, v92, v94, v110);
  sub_252372288(v89, &qword_27F4DAD50);
  v119(v95, v96);
  sub_252372288(v123, &qword_27F4DAD58);
  v118(v91, v93);
  v98 = sub_25235FDB8(v97, 0);
  sub_252372228(v97, type metadata accessor for HAPControlSolver.Source);
  if (*(v98 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
    v99 = (type metadata accessor for AccessoryControlModule(0) - 8);
    v100 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_252694E90;
    v102 = v101 + v100;
    sub_25268EB50();
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v103 = (v102 + v99[7]);
    v104 = (v102 + v99[9]);
    *v104 = 0;
    v104[1] = 0;
    *(v102 + v99[8]) = v98;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    result = v101;
    *v103 = 0;
    v103[1] = 0;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

size_t sub_25235FDB8(uint64_t a1, char a2)
{
  v6 = a1;
  if (!sub_252366DF4(a1))
  {
    return MEMORY[0x277D84F90];
  }

  v8 = (*(v7 + 24))(v6, v2);
  v9 = v8[2];
  if (v9)
  {
    v10 = type metadata accessor for HAPControlSolver.Source();
    v11 = 0;
    v12 = *(v6 + v10[10]);
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_25261EF24(v8);
      }

      if (v11 >= v8[2])
      {
        __break(1u);
        goto LABEL_19;
      }

      v3 = type metadata accessor for AccessoryControlGroup(0);
      v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
      AccessoryControlGroup.setControls(enabled:)(v12);
      ++v11;
    }

    while (v9 != v11);
    if (v8[2] == 1 && (a2 & 1) != 0)
    {
      v13 = (v6 + v10[8]);
      if (v13[1])
      {
        v6 = *v13;
        v11 = v13[1];
      }

      else
      {
        v14 = (v6 + v10[7]);
        v6 = *v14;
        v11 = v14[1];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (v8[2])
        {
LABEL_16:
          v16 = (v8 + v4 + *(v3 + 24));
          *v16 = v6;
          v16[1] = v11;

          return v8;
        }

        goto LABEL_20;
      }

LABEL_19:
      result = sub_25261EF24(v8);
      v8 = result;
      if (*(result + 16))
      {
        goto LABEL_16;
      }

LABEL_20:
      __break(1u);
      return result;
    }
  }

  return v8;
}

uint64_t AccessoryControlSolver.HAP.controlModules(with:matterDevice:staticHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v229 = a3;
  v227 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v4 - 8);
  v260 = &v219 - v5;
  v259 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v259);
  v258 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70);
  MEMORY[0x28223BE20](v7 - 8);
  v257 = &v219 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v9 - 8);
  v256 = &v219 - v10;
  v11 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v11 - 8);
  v255 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  MEMORY[0x28223BE20](v13 - 8);
  v254 = &v219 - v14;
  v15 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v15 - 8);
  v253 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v268);
  *&v271 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v222 = *(v261 - 8);
  v18 = MEMORY[0x28223BE20](v261 - 8);
  v270 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v264 = &v219 - v20;
  v267 = type metadata accessor for AccessoryControl(0);
  v240 = *(v267 - 8);
  v21 = MEMORY[0x28223BE20](v267);
  v263 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v269 = &v219 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v231 = &v219 - v26;
  MEMORY[0x28223BE20](v25);
  v233 = &v219 - v27;
  v236 = type metadata accessor for AccessoryControlGroup.Layout(0);
  v28 = MEMORY[0x28223BE20](v236);
  v242 = (&v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v226 = (&v219 - v30);
  v224 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v224);
  v225 = &v219 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for AccessoryControlGroup(0);
  v237 = *(v230 - 1);
  v32 = MEMORY[0x28223BE20](v230);
  v219 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v220 = &v219 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v221 = &v219 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v223 = &v219 - v39;
  MEMORY[0x28223BE20](v38);
  v241 = &v219 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v44 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v219 - v45;
  v47 = sub_25268E530();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v219 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v266 = &v219 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v262 = &v219 - v55;
  MEMORY[0x28223BE20](v54);
  v248 = &v219 - v56;
  v57 = sub_25268EBE0();
  v58 = *(v57 - 1);
  v59 = MEMORY[0x28223BE20](v57);
  v265 = &v219 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v247 = (&v219 - v61);
  v62 = sub_25268EF80();
  v250 = v46;
  v252 = v47;
  v251 = v57;
  v238 = v58;
  v232 = a1;
  v249 = v51;
  v239 = v48;
  if (v62)
  {
    v63 = sub_25268EEC0();
    v64 = 0;
    v246 = *(v63 + 16);
    v245 = (v58 + 16);
    LODWORD(v244) = *MEMORY[0x277D15870];
    *&v243 = v48 + 104;
    v65 = (v48 + 8);
    v66 = (v58 + 8);
    v67 = v48;
    do
    {
      v234 = v246 == v64;
      if (v246 == v64)
      {
        break;
      }

      if (v64 >= *(v63 + 16))
      {
        goto LABEL_100;
      }

      v71 = v63;
      (*(v58 + 16))(v247, v63 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v64, v57);
      sub_25268E970();
      (*v243)(v262, v244, v47);
      sub_252371884(&qword_27F4DADD8, MEMORY[0x277D158E0]);
      sub_252692D40();
      sub_252692D40();
      if (v274[0] == v272 && v274[1] == v273)
      {
        v68 = 1;
      }

      else
      {
        v68 = sub_2526933B0();
      }

      v69 = *v65;
      v70 = v252;
      (*v65)(v262, v252);
      v69(v248, v70);
      v57 = v251;
      (*v66)(v247, v251);
      v47 = v70;

      ++v64;
      v67 = v239;
      v58 = v238;
      v63 = v71;
    }

    while ((v68 & 1) != 0);

    v46 = v250;
    v48 = v67;
  }

  else
  {
    v234 = 0;
  }

  v72 = sub_25268EEC0();
  v73 = v72;
  v248 = *(v72 + 16);
  if (!v248)
  {
    v75 = MEMORY[0x277D84F98];
LABEL_41:

    v274[0] = sub_25268EF40();

    sub_25236DD88(v274);

    v98 = v274[0];
    MEMORY[0x28223BE20](v97);
    v99 = v227;
    *(&v219 - 4) = v75;
    *(&v219 - 3) = v99;
    v100 = v229;
    *(&v219 - 2) = v228;
    *(&v219 - 1) = v100;
    v101 = sub_252362C38(sub_25236DE30, (&v219 - 6), v98);

    v57 = v101[2];
    v102 = v237;
    if (v234)
    {
      v103 = MEMORY[0x277D84F90];
      if (v57)
      {
        v104 = 0;
        v248 = v101 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
        v247 = v230[5];
        LODWORD(v262) = *MEMORY[0x277D16578];
        v252 = (v222 + 56);
        v244 = xmmword_252694E90;
        v243 = xmmword_252694EA0;
        v245 = v101;
        v246 = v57;
        v105 = v261;
        do
        {
          if (v104 >= v101[2])
          {
            goto LABEL_97;
          }

          v106 = v241;
          sub_2523721C0(&v248[*(v102 + 72) * v104], v241, type metadata accessor for AccessoryControlGroup);
          sub_2523721C0(v247 + v106, v242, type metadata accessor for AccessoryControlGroup.Layout);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v250 = v104;
          v251 = v103;
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v112 = *v242;
              goto LABEL_55;
            }

            v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
            v124 = v242;
            v125 = v233;
            sub_2523722E8(v242, v233, type metadata accessor for AccessoryControl);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
            v126 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v127 = swift_allocObject();
            *(v127 + 16) = v244;
            v128 = v127 + v126;
            v112 = v127;
            sub_2523722E8(v125, v128, type metadata accessor for AccessoryControl);
            v121 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig;
            v122 = v124 + v123;
          }

          else
          {
            if (!EnumCaseMultiPayload)
            {
              v108 = v233;
              sub_2523722E8(v242, v233, type metadata accessor for AccessoryControl);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
              v109 = (*(v240 + 80) + 32) & ~*(v240 + 80);
              v110 = swift_allocObject();
              *(v110 + 16) = v244;
              v111 = v108;
              v112 = v110;
              sub_2523722E8(v111, v110 + v109, type metadata accessor for AccessoryControl);
              goto LABEL_55;
            }

            v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
            v114 = v242;
            v115 = v233;
            sub_2523722E8(v242, v233, type metadata accessor for AccessoryControl);
            v116 = v231;
            sub_2523722E8(v114 + v113, v231, type metadata accessor for AccessoryControl);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA8);
            v117 = *(v240 + 72);
            v118 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v119 = swift_allocObject();
            *(v119 + 16) = v243;
            v120 = v119 + v118;
            v112 = v119;
            sub_2523721C0(v115, v120, type metadata accessor for AccessoryControl);
            sub_2523722E8(v116, v120 + v117, type metadata accessor for AccessoryControl);
            v121 = type metadata accessor for AccessoryControl;
            v122 = v115;
            v101 = v245;
          }

          sub_252372228(v122, v121);
LABEL_55:
          v129 = MEMORY[0x277D84F90];
          v130 = *(v112 + 2);
          if (v130)
          {
            v274[0] = MEMORY[0x277D84F90];
            sub_252370130(0, v130, 0);
            v131 = v274[0];
            v132 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v249 = v112;
            v266 = v132;
            v133 = &v112[v132];
            v265 = *(v240 + 72);
            do
            {
              v134 = v263;
              sub_2523721C0(v133, v263, type metadata accessor for AccessoryControl);
              v135 = v269;
              sub_2523721C0(v134, v269, type metadata accessor for AccessoryControl);
              v136 = v267;
              *(v135 + *(v267 + 32)) = 514;
              *(v135 + *(v136 + 36)) = 2;
              sub_252372228(v134, type metadata accessor for AccessoryControl);
              v137 = v264;
              v138 = &v264[*(v105 + 28)];
              v139 = type metadata accessor for IconDescriptor();
              v140 = *(v139 + 20);
              v141 = sub_25268F910();
              (*(*(v141 - 8) + 104))(&v138[v140], v262, v141);
              *v138 = 0x7265776F70;
              *(v138 + 1) = 0xE500000000000000;
              v138[*(v139 + 24)] = 0;
              sub_2523721C0(v138, v137, type metadata accessor for IconDescriptor);
              sub_2523714D4(v137, v270, &qword_27F4DAD88);
              v142 = v135 + *(v136 + 20);
              sub_2523721C0(v142, v271, type metadata accessor for AccessoryControl.State);
              v143 = swift_getEnumCaseMultiPayload();
              if (v143 == 3)
              {
                v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0);
                v164 = *(v163 + 48);
                v165 = v271;
                v166 = v258;
                sub_2523722E8(v271, v258, type metadata accessor for AccessoryControl.PickerViewConfig);
                v167 = v105;
                v168 = v260;
                sub_2523714D4(v165 + v164, v260, &qword_27F4DAD68);
                v169 = *(v259 + 24);
                sub_252372288(v166 + v169, &qword_27F4DADB8);
                sub_2523714D4(v270, v166 + v169, &qword_27F4DAD88);
                (*v252)(v166 + v169, 0, 1, v167);
                sub_252372228(v142, type metadata accessor for AccessoryControl.State);
                v170 = *(v163 + 48);
                sub_2523721C0(v166, v142, type metadata accessor for AccessoryControl.PickerViewConfig);
                v171 = v168;
                v105 = v167;
                sub_2523714D4(v171, v142 + v170, &qword_27F4DAD68);
                swift_storeEnumTagMultiPayload();
                v152 = type metadata accessor for AccessoryControl.PickerViewConfig;
                v153 = v166;
              }

              else if (v143 == 2)
              {
                v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
                v155 = *(v154 + 48);
                v156 = *(v154 + 64);
                v157 = v131;
                v158 = v255;
                sub_2523722E8(v271, v255, type metadata accessor for AccessoryControl.IncrementalConfig);
                v159 = v256;
                sub_2523714D4(v271 + v155, v256, &qword_27F4DAD78);
                v160 = v257;
                sub_2523714D4(v271 + v156, v257, &qword_27F4DAD70);
                sub_252370174(v270, v158);
                sub_252372228(v142, type metadata accessor for AccessoryControl.State);
                v161 = *(v154 + 48);
                v162 = *(v154 + 64);
                sub_2523721C0(v158, v142, type metadata accessor for AccessoryControl.IncrementalConfig);
                sub_2523714D4(v159, v142 + v161, &qword_27F4DAD78);
                sub_2523714D4(v160, v142 + v162, &qword_27F4DAD70);
                swift_storeEnumTagMultiPayload();
                v152 = type metadata accessor for AccessoryControl.IncrementalConfig;
                v153 = v158;
                v131 = v157;
                v105 = v261;
              }

              else if (v143)
              {
                sub_252372288(v270, &qword_27F4DAD88);
                v152 = type metadata accessor for AccessoryControl.State;
                v153 = v271;
              }

              else
              {
                v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8);
                v145 = *(v144 + 48);
                v146 = v271;
                v147 = v131;
                v148 = v253;
                sub_2523722E8(v271, v253, type metadata accessor for AccessoryControl.BinaryViewConfig);
                v149 = v146 + v145;
                v150 = v254;
                sub_2523714D4(v149, v254, &qword_27F4DAD80);
                sub_252370174(v270, v148);
                sub_252372228(v142, type metadata accessor for AccessoryControl.State);
                v151 = *(v144 + 48);
                sub_2523721C0(v148, v142, type metadata accessor for AccessoryControl.BinaryViewConfig);
                sub_2523714D4(v150, v142 + v151, &qword_27F4DAD80);
                swift_storeEnumTagMultiPayload();
                v152 = type metadata accessor for AccessoryControl.BinaryViewConfig;
                v153 = v148;
                v131 = v147;
                v105 = v261;
              }

              sub_252372228(v153, v152);
              v274[0] = v131;
              v173 = v131[2];
              v172 = v131[3];
              if (v173 >= v172 >> 1)
              {
                sub_252370130(v172 > 1, v173 + 1, 1);
                v131 = v274[0];
              }

              v131[2] = v173 + 1;
              v174 = v265;
              sub_2523722E8(v269, v131 + v266 + v173 * v265, type metadata accessor for AccessoryControl);
              v133 += v174;
              --v130;
            }

            while (v130);
            sub_252372228(v241, type metadata accessor for AccessoryControlGroup);

            v101 = v245;
          }

          else
          {

            sub_252372228(v241, type metadata accessor for AccessoryControlGroup);
            v131 = v129;
          }

          v175 = v131;
          v176 = v131[2];
          v103 = v251;
          v177 = *(v251 + 2);
          v57 = (v177 + v176);
          if (__OFADD__(v177, v176))
          {
            goto LABEL_98;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = v237;
          if (!isUniquelyReferenced_nonNull_native || v57 > *(v103 + 3) >> 1)
          {
            if (v177 <= v57)
            {
              v179 = v177 + v176;
            }

            else
            {
              v179 = v177;
            }

            v103 = sub_252369CFC(isUniquelyReferenced_nonNull_native, v179, 1, v103, &qword_27F4DADA8, &unk_252694EC0, type metadata accessor for AccessoryControl);
          }

          v57 = v246;
          if (v175[2])
          {
            if ((*(v103 + 3) >> 1) - *(v103 + 2) < v176)
            {
              goto LABEL_101;
            }

            swift_arrayInitWithCopy();

            if (v176)
            {
              v180 = *(v103 + 2);
              v87 = __OFADD__(v180, v176);
              v181 = v180 + v176;
              if (v87)
              {
                goto LABEL_102;
              }

              *(v103 + 2) = v181;
            }
          }

          else
          {

            if (v176)
            {
              goto LABEL_99;
            }
          }

          v104 = v250 + 1;
        }

        while (v250 + 1 != v57);
      }

      sub_25268F030();
      swift_storeEnumTagMultiPayload();
      *v226 = v103;
      swift_storeEnumTagMultiPayload();
      v196 = sub_25268F050();
      v198 = v197;
      if (v57)
      {
        if (!v101[2])
        {
          goto LABEL_103;
        }

        v199 = v221;
        sub_2523721C0(v101 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v221, type metadata accessor for AccessoryControlGroup);

        v200 = v230;
        v201 = (v199 + v230[7]);
        v202 = v102;
        v203 = *v201;
        v57 = v201[1];

        sub_252372228(v199, type metadata accessor for AccessoryControlGroup);
      }

      else
      {

        v202 = v102;
        v203 = 0;
        v200 = v230;
      }

      v184 = v223;
      v204 = (v223 + v200[7]);
      sub_2523722E8(v225, v223, type metadata accessor for AccessoryControl.ElementIdentifier);
      sub_2523722E8(v226, v184 + v200[5], type metadata accessor for AccessoryControlGroup.Layout);
      v205 = (v184 + v200[6]);
      *v205 = v196;
      v205[1] = v198;
      *v204 = v203;
      v204[1] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
      v206 = (type metadata accessor for AccessoryControlModule(0) - 8);
      v207 = (*(*v206 + 80) + 32) & ~*(*v206 + 80);
      v191 = swift_allocObject();
      v271 = xmmword_252694E90;
      *(v191 + 16) = xmmword_252694E90;
      v208 = v191 + v207;
      sub_25268F030();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v209 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v210 = swift_allocObject();
      *(v210 + 16) = v271;
      sub_2523721C0(v184, v210 + v209, type metadata accessor for AccessoryControlGroup);
      v211 = (v208 + v206[7]);
      v212 = (v208 + v206[9]);
      *v212 = 0;
      v212[1] = 0;
      *(v208 + v206[8]) = v210;
      type metadata accessor for AccessoryControlModule.Layout(0);
      swift_storeEnumTagMultiPayload();
      *v211 = 0;
      v211[1] = 0;
    }

    else
    {
      if (!v57)
      {

        return MEMORY[0x277D84F90];
      }

      if (v57 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
        v213 = (type metadata accessor for AccessoryControlModule(0) - 8);
        v214 = (*(*v213 + 80) + 32) & ~*(*v213 + 80);
        v191 = swift_allocObject();
        *(v191 + 16) = xmmword_252694E90;
        v215 = v191 + v214;
        sub_25268F030();
        swift_storeEnumTagMultiPayload();
        v216 = (v191 + v214 + v213[7]);
        v217 = (v215 + v213[9]);
        *v217 = 0;
        v217[1] = 0;
        *(v215 + v213[8]) = v101;
        type metadata accessor for AccessoryControlModule.Layout(0);
        swift_storeEnumTagMultiPayload();
        *v216 = 0;
        v216[1] = 0;
        return v191;
      }

      v182 = v219;
      v183 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      sub_2523721C0(v101 + v183, v219, type metadata accessor for AccessoryControlGroup);

      v184 = v220;
      sub_2523722E8(v182, v220, type metadata accessor for AccessoryControlGroup);
      v185 = sub_25268F050();
      v187 = v186;
      v188 = (v184 + v230[6]);

      *v188 = v185;
      v188[1] = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
      v189 = (type metadata accessor for AccessoryControlModule(0) - 8);
      v190 = (*(*v189 + 80) + 32) & ~*(*v189 + 80);
      v191 = swift_allocObject();
      v271 = xmmword_252694E90;
      *(v191 + 16) = xmmword_252694E90;
      v192 = v191 + v190;
      sub_25268F030();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v193 = swift_allocObject();
      *(v193 + 16) = v271;
      sub_2523721C0(v184, v193 + v183, type metadata accessor for AccessoryControlGroup);
      v194 = (v192 + v189[7]);
      v195 = (v192 + v189[9]);
      *v195 = 0;
      v195[1] = 0;
      *(v192 + v189[8]) = v193;
      type metadata accessor for AccessoryControlModule.Layout(0);
      swift_storeEnumTagMultiPayload();
      *v194 = 0;
      v194[1] = 0;
    }

    sub_252372228(v184, type metadata accessor for AccessoryControlGroup);
    return v191;
  }

  v74 = 0;
  v246 = (v72 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
  v245 = (v58 + 16);
  *&v244 = v48 + 48;
  v247 = (v48 + 32);
  v262 = (v48 + 8);
  v235 = v48 + 16;
  v75 = MEMORY[0x277D84F98];
  *&v243 = v58 + 8;
  while (v74 < *(v73 + 16))
  {
    (*(v58 + 16))();
    sub_25268E8F0();
    v76 = *v244;
    if ((*v244)(v46, 1, v47) == 1)
    {
      sub_25268E970();
      if (v76(v46, 1, v47) != 1)
      {
        sub_252372288(v46, &qword_27F4DAD90);
      }
    }

    else
    {
      (*v247)(v266, v46, v47);
    }

    sub_25268E8F0();
    if (v76(v44, 1, v47) == 1)
    {
      v77 = v249;
      sub_25268E970();
      if (v76(v44, 1, v47) != 1)
      {
        sub_252372288(v44, &qword_27F4DAD90);
      }

      if (!v75[2])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v77 = v249;
      (*v247)(v249, v44, v47);
      if (!v75[2])
      {
        goto LABEL_29;
      }
    }

    v78 = sub_2523675BC(v77);
    if (v79)
    {
      v80 = *(v75[7] + 8 * v78);
      goto LABEL_30;
    }

LABEL_29:
    v80 = 0;
LABEL_30:
    v81 = *v262;
    (*v262)(v77, v47);
    v57 = (v80 + 1);
    if (__OFADD__(v80, 1))
    {
      goto LABEL_94;
    }

    v82 = swift_isUniquelyReferenced_nonNull_native();
    v274[0] = v75;
    v83 = sub_2523675BC(v266);
    v85 = v75[2];
    v86 = (v84 & 1) == 0;
    v87 = __OFADD__(v85, v86);
    v88 = v85 + v86;
    if (v87)
    {
      goto LABEL_95;
    }

    v89 = v84;
    if (v75[3] >= v88)
    {
      if ((v82 & 1) == 0)
      {
        v96 = v83;
        sub_25236C78C();
        v83 = v96;
      }
    }

    else
    {
      sub_25236A13C(v88, v82);
      v83 = sub_2523675BC(v266);
      if ((v89 & 1) != (v90 & 1))
      {
        goto LABEL_104;
      }
    }

    v46 = v250;
    v75 = v274[0];
    if (v89)
    {
      *(v274[0][7] + 8 * v83) = v57;
      v47 = v252;
      v81(v266, v252);
      v57 = v251;
      (*v243)(v265, v251);
    }

    else
    {
      v91 = v44;
      v274[0][(v83 >> 6) + 8] |= 1 << v83;
      v92 = v83;
      v93 = v266;
      v47 = v252;
      (*(v239 + 16))(v75[6] + *(v239 + 72) * v83, v266, v252);
      *(v75[7] + 8 * v92) = v57;
      v81(v93, v47);
      v57 = v251;
      (*v243)(v265, v251);
      v94 = v75[2];
      v87 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v87)
      {
        goto LABEL_96;
      }

      v75[2] = v95;
      v44 = v91;
      v58 = v238;
    }

    if (v248 == ++v74)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  sub_2526933E0();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2523620C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, size_t *a6@<X8>)
{
  v99 = a5;
  v108 = a4;
  v93 = a3;
  v97 = a2;
  v109 = a6;
  v7 = sub_25268EE60();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v95 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v107 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v103 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v106 = &v91 - v16;
  v117 = sub_25268E040();
  v116 = *(v117 - 8);
  v17 = MEMORY[0x28223BE20](v117);
  v102 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v91 - v19;
  v20 = sub_25268EBE0();
  v114 = *(v20 - 8);
  v115 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v100 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = &v91 - v23;
  v24 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v24 - 8);
  v101 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v26 - 8);
  v92 = &v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v98 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v110 = &v91 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v96 = &v91 - v37;
  MEMORY[0x28223BE20](v36);
  v111 = &v91 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v91 - v40;
  v42 = sub_25268E530();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268E8F0();
  v46 = *(v43 + 48);
  if (v46(v41, 1, v42) == 1)
  {
    v47 = a1;
    sub_25268E970();
    if (v46(v41, 1, v42) != 1)
    {
      sub_252372288(v41, &qword_27F4DAD90);
    }
  }

  else
  {
    v47 = a1;
    (*(v43 + 32))(v45, v41, v42);
  }

  v48 = v97;
  v49 = v105;
  if (*(v97 + 16) && (v50 = sub_2523675BC(v45), (v51 & 1) != 0))
  {
    v52 = *(*(v48 + 56) + 8 * v50);
    (*(v43 + 8))(v45, v42);
    LODWORD(v97) = v52 > 1;
  }

  else
  {
    (*(v43 + 8))(v45, v42);
    LODWORD(v97) = 0;
  }

  v53 = v47;
  sub_25268EA40();
  v54 = sub_25268E710();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v30, 1, v54) == 1)
  {
    v56 = &qword_27F4DB058;
    v57 = v30;
LABEL_13:
    sub_252372288(v57, v56);
    v62 = 1;
    v63 = v117;
    v64 = v104;
    goto LABEL_14;
  }

  v58 = sub_25268E320();
  (*(v55 + 8))(v30, v54);
  v59 = v92;
  sub_25237153C(v93, v92, &qword_27F4DB070);
  v60 = sub_25268F610();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    v56 = &qword_27F4DB070;
    v57 = v59;
    goto LABEL_13;
  }

  v88 = sub_25268F600();
  (*(v61 + 8))(v59, v60);
  v63 = v117;
  v64 = v104;
  if (*(v88 + 16))
  {
    v89 = sub_252367690(v58);
    v65 = v96;
    v66 = v49;
    if (v90)
    {
      v64[2](v96, *(v88 + 56) + v64[9] * v89, v49);

      v62 = 0;
    }

    else
    {

      v62 = 1;
    }

    goto LABEL_15;
  }

  v62 = 1;
LABEL_14:
  v65 = v96;
  v66 = v49;
LABEL_15:
  (v64[7])(v65, v62, 1, v66);
  v67 = v111;
  sub_2523714D4(v65, v111, &qword_27F4DAD58);
  v68 = *(v114 + 16);
  v68(v112, v53, v115);
  v69 = v110;
  sub_25237153C(v67, v110, &qword_27F4DAD58);
  v104 = *(v116 + 16);
  (v104)(v113, v99, v63);
  v70 = v69;
  v71 = v98;
  sub_25237153C(v70, v98, &qword_27F4DAD58);
  if ((v64[6])(v71, 1, v66) == 1)
  {
    sub_252372288(v71, &qword_27F4DAD58);
    v72 = 1;
    v73 = v103;
  }

  else
  {
    v74 = v94;
    v64[4](v94, v71, v66);
    v75 = v95;
    v64[2](v95, v74, v66);
    v73 = v103;
    MatterControlSolver.Source.init(with:)(v75, v103);
    (v64[1])(v74, v66);
    v72 = 0;
  }

  v76 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v76 - 8) + 56))(v73, v72, 1, v76);
  v77 = v106;
  sub_2523714D4(v73, v106, &qword_27F4DAD50);
  v78 = v100;
  v79 = v112;
  v80 = v115;
  v68(v100, v112, v115);
  v81 = v107;
  sub_25237153C(v77, v107, &qword_27F4DAD50);
  v82 = v102;
  v83 = v113;
  v84 = v117;
  (v104)(v102, v113, v117);
  v85 = v101;
  sub_25259AF74(v78, v81, v82, v101);
  sub_252372288(v77, &qword_27F4DAD50);
  (*(v116 + 8))(v83, v84);
  sub_252372288(v110, &qword_27F4DAD58);
  (*(v114 + 8))(v79, v80);
  v86 = sub_25235FDB8(v85, v97);
  sub_252372228(v85, type metadata accessor for HAPControlSolver.Source);
  result = sub_252372288(v111, &qword_27F4DAD58);
  *v109 = v86;
  return result;
}

void *sub_252362C38(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(sub_25268EBE0() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_252369CFC(isUniquelyReferenced_nonNull_native, v15, 1, v8, &qword_27F4DAD98, &unk_252694EB8, type metadata accessor for AccessoryControlGroup);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for AccessoryControlGroup(0);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_252362E90(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v6 = sub_25268ECE0();
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v7;
  v31 = v7 + 16;
  v32 = (v7 + 8);
  v36 = a3;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v29 = v6;
  for (i = v9; ; v9 = i)
  {
    v38 = v17;
    if (!v13)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v18);
        ++v16;
        if (v13)
        {
          v16 = v18;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v33 + 16))(v9, *(v36 + 56) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v6);
    v34(&v39, v9);
    if (v4)
    {
      break;
    }

    v37 = 0;
    result = (*v32)(v9, v6);
    v19 = v39;
    v20 = *(v39 + 16);
    v17 = v38;
    v21 = v38[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= v17[3] >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_252369CFC(isUniquelyReferenced_nonNull_native, v24, 1, v17, &qword_27F4DAE30, &unk_2526A8D50, type metadata accessor for Device.ControlModule);
      if (!*(v19 + 16))
      {
LABEL_4:

        if (v20)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v25 = (v17[3] >> 1) - v17[2];
    result = type metadata accessor for Device.ControlModule(0);
    if (v25 < v20)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v26 = v17[2];
      v27 = __OFADD__(v26, v20);
      v28 = v26 + v20;
      if (v27)
      {
        goto LABEL_31;
      }

      v17[2] = v28;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v37;
    v6 = v29;
  }

  (*v32)(v9, v6);

LABEL_26:

  return v38;
}

uint64_t sub_2523631F4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v35 = a1;
  v36 = a2;
  v7 = a4(0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v8;
  v32 = v8 + 16;
  v33 = (v8 + 8);
  v37 = a3;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v30 = v7;
  for (i = v10; ; v10 = i)
  {
    v39 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v34 + 16))(v10, *(v37 + 56) + *(v34 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v7);
    v35(&v40, v10);
    if (v5)
    {
      break;
    }

    v38 = 0;
    result = (*v33)(v10, v7);
    v20 = v40;
    v21 = *(v40 + 16);
    v18 = v39;
    v22 = v39[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_252369CFC(isUniquelyReferenced_nonNull_native, v25, 1, v18, &qword_27F4DAD98, &unk_252694EB8, type metadata accessor for AccessoryControlGroup);
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v26 = (v18[3] >> 1) - v18[2];
    result = type metadata accessor for AccessoryControlGroup(0);
    if (v26 < v21)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v21)
    {
      v27 = v18[2];
      v28 = __OFADD__(v27, v21);
      v29 = v27 + v21;
      if (v28)
      {
        goto LABEL_31;
      }

      v18[2] = v29;
    }

LABEL_5:
    v14 &= v14 - 1;
    v5 = v38;
    v7 = v30;
  }

  (*v33)(v10, v7);

LABEL_26:

  return v39;
}