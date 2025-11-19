uint64_t sub_22DE4B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38338, &qword_22DECA280);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37BC0, &qword_22DEC7350);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37BC0, &qword_22DEC7350);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE4633C(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v28, &qword_27DA38338, &qword_22DECA280);
      v35 = v44;
      sub_22DE4633C(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
      sub_22DE4633C(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE58C34(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38338, &qword_22DECA280);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38338, &qword_22DECA280);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38338, &qword_22DECA280);
    return sub_22DDEF284(v36, &qword_27DA38338, &qword_22DECA280);
  }

  else
  {
    v39 = v43;
    sub_22DE4633C(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38338, &qword_22DECA280);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE4BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38340, &qword_22DECA288);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_22DDF0028(a1, v14, &qword_27DA37BC0, &qword_22DEC7350);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_22DDEF284(v14, &qword_27DA37BC0, &qword_22DEC7350);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_22DE4633C(v14, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v22, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22DDEF284(v28, &qword_27DA38340, &qword_22DECA288);
      v35 = v44;
      sub_22DE4633C(v20, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
      sub_22DE4633C(v35, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_22DE58C34(v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  v37 = v47;
  sub_22DEC49E4();
  if (v37)
  {
    return sub_22DDEF284(v28, &qword_27DA38340, &qword_22DECA288);
  }

  sub_22DDF0028(v28, v36, &qword_27DA38340, &qword_22DECA288);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_22DDEF284(v28, &qword_27DA38340, &qword_22DECA288);
    return sub_22DDEF284(v36, &qword_27DA38340, &qword_22DECA288);
  }

  else
  {
    v39 = v43;
    sub_22DE4633C(v36, v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    if (v32 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v28, &qword_27DA38340, &qword_22DECA288);
    v40 = v42;
    sub_22DDEF284(v42, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v39, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_22DE4C2BC()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0) + 20);
  sub_22DEC4884();
  return sub_22DEC4944();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  result = sub_22DE4C5E8(v5);
  if (!v4)
  {
    sub_22DDF0028(v5, v12, &qword_27DA37BC0, &qword_22DEC7350);
    v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_22DE4CD18(v5, a1, a2, a3);
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_22DE4CF50(v5, a1, a2, a3);
        }

        else
        {
          sub_22DE4D188(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_22DE4C8A8(v5, a1, a2, a3);
        }

        else
        {
          sub_22DE4CAE0(v5, a1, a2, a3);
        }
      }

      else
      {
        sub_22DE4C674(v5, a1, a2, a3);
      }

      sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    }

    sub_22DE4D3C0(v5);
    v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
    if (*(*(v5 + *(v16 + 20)) + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    v17 = v5 + *(v16 + 24);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4C5E8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  if (*(a1 + *(result + 28)) != 7)
  {
    v3 = *(a1 + *(result + 28));
    sub_22DE5BBFC();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE4C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  }

  result = sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4D3C0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4D484@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  *(a2 + v5) = sub_22DE0501C(MEMORY[0x277D84F90]);
  v6 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v8 = a1[8];
  *(a2 + a1[7]) = 7;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_22DE4D540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE4D5B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22DE4D658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382D0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE4D6F8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE4D764()
{
  sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return sub_22DEC4A44();
}

uint64_t sub_22DE4D800()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FB8);
  __swift_project_value_buffer(v0, qword_27DA37FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22DEC7C40;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "show_on_lock_screen";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "body";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "open_label";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 6;
  *v15 = "dismiss_label";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 20);
        sub_22DEC4974();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 28);
          goto LABEL_3;
        case 5:
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 32);
LABEL_3:
          v0 = 0;
          sub_22DEC49C4();
          break;
        case 6:
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE4DCEC(v3);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    sub_22DE4DDE8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    sub_22DE547CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4DCEC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4DEB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22DE4DF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE4E000(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE4E06C()
{
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return sub_22DEC4A44();
}

uint64_t sub_22DE4E108()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FD0);
  __swift_project_value_buffer(v0, qword_27DA37FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22DEC8200;
  v4 = v33 + v3;
  v5 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v5 = "follow_up_id";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "target_app";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title_when_in_group";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "singular_content";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "plural_content";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "group_title";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "group_content";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "expiration_epoch";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "serial_number";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "show_badge";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "notification_data";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "action_data";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE4E5A4()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22DE4E5E4();
  qword_27DA37FE8 = result;
  return result;
}

uint64_t sub_22DE4E5E4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  v1 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_22DE4E6D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v49 - v8;
  *(v1 + 16) = 0;
  *(v1 + 32) = 2;
  *(v1 + 136) = 0;
  v52 = (v1 + 136);
  *(v1 + 120) = 0u;
  v51 = (v1 + 120);
  *(v1 + 104) = 0u;
  v50 = (v1 + 104);
  *(v1 + 88) = 0u;
  v49 = (v1 + 88);
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  v53 = (v1 + 152);
  *(v1 + 160) = 0;
  *(v1 + 168) = 2;
  v9 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v54 = (v1 + 168);
  v55 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v56 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v13;
  swift_beginAccess();
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v16;
  *(v1 + 48) = v15;
  swift_beginAccess();
  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v19 = *(v1 + 64);
  *(v1 + 56) = v18;
  *(v1 + 64) = v17;

  swift_beginAccess();
  v21 = *(a1 + 72);
  v20 = *(a1 + 80);
  swift_beginAccess();
  v22 = *(v1 + 80);
  *(v1 + 72) = v21;
  *(v1 + 80) = v20;

  swift_beginAccess();
  v24 = *(a1 + 88);
  v23 = *(a1 + 96);
  v25 = v49;
  swift_beginAccess();
  v26 = *(v1 + 96);
  *v25 = v24;
  *(v1 + 96) = v23;

  swift_beginAccess();
  v28 = *(a1 + 104);
  v27 = *(a1 + 112);
  v29 = v50;
  swift_beginAccess();
  v30 = *(v1 + 112);
  *v29 = v28;
  *(v1 + 112) = v27;

  swift_beginAccess();
  v32 = *(a1 + 120);
  v31 = *(a1 + 128);
  v33 = v51;
  swift_beginAccess();
  v34 = *(v1 + 128);
  *v33 = v32;
  *(v1 + 128) = v31;

  swift_beginAccess();
  v35 = *(a1 + 136);
  LOBYTE(v34) = *(a1 + 144);
  v36 = v52;
  swift_beginAccess();
  *v36 = v35;
  *(v1 + 144) = v34;
  swift_beginAccess();
  v38 = *(a1 + 152);
  v37 = *(a1 + 160);
  v39 = v53;
  swift_beginAccess();
  v40 = *(v1 + 160);
  *v39 = v38;
  *(v1 + 160) = v37;

  swift_beginAccess();
  LOBYTE(v37) = *(a1 + 168);
  v41 = v54;
  swift_beginAccess();
  *v41 = v37;
  v42 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  v43 = v57;
  sub_22DDF0028(a1 + v42, v57, &qword_27DA37D70, &qword_22DEC7958);
  v44 = v55;
  swift_beginAccess();
  sub_22DDF0208(v43, v1 + v44, &qword_27DA37D70, &qword_22DEC7958);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v46 = v58;
  sub_22DDF0028(a1 + v45, v58, &qword_27DA37D90, &unk_22DEC7970);

  v47 = v56;
  swift_beginAccess();
  sub_22DDF0208(v46, v1 + v47, &qword_27DA37D90, &unk_22DEC7970);
  swift_endAccess();
  return v1;
}

void *sub_22DE4ECAC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[20];

  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData, &qword_27DA37D70, &qword_22DEC7958);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData, &qword_27DA37D90, &unk_22DEC7970);
  return v0;
}

uint64_t sub_22DE4ED44()
{
  v0 = sub_22DE4ECAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DE4EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_22DE4EED0()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22DDF03C8();
        break;
      case 2:
        sub_22DE4F0B4();
        break;
      case 3:
        sub_22DE4F148();
        break;
      case 4:
        sub_22DE4F1CC();
        break;
      case 5:
        sub_22DE4F250();
        break;
      case 6:
        sub_22DE4F2D4();
        break;
      case 7:
        sub_22DE4F358();
        break;
      case 8:
        sub_22DE4F3DC();
        break;
      case 9:
        sub_22DE4F460();
        break;
      case 10:
        sub_22DE4F4E4();
        break;
      case 11:
        sub_22DE4F568();
        break;
      case 12:
        sub_22DE4F5EC();
        break;
      case 13:
        sub_22DE4F6C8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22DE4F0B4()
{
  swift_beginAccess();
  sub_22DE5BCF8();
  sub_22DEC4984();
  return swift_endAccess();
}

uint64_t sub_22DE4F148()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F1CC()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F250()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F2D4()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F358()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F3DC()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F460()
{
  swift_beginAccess();
  sub_22DEC49A4();
  return swift_endAccess();
}

uint64_t sub_22DE4F4E4()
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F568()
{
  swift_beginAccess();
  sub_22DEC4974();
  return swift_endAccess();
}

uint64_t sub_22DE4F5EC()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE4F6C8()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE4F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1);
  if (!v4)
  {
    sub_22DE4F9BC(a1);
    sub_22DE4FA5C(a1);
    sub_22DE4FAF8(a1);
    sub_22DE4FB94(a1);
    sub_22DE4FC30(a1);
    sub_22DE4FCCC(a1);
    sub_22DE4FD68(a1);
    sub_22DE4FE04(a1);
    sub_22DE4FE88(a1);
    sub_22DE4FF24(a1);
    sub_22DE4FFAC(a1, a2, a3, a4);
    return sub_22DE501D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE4F9BC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32) != 2)
  {
    sub_22DE5BCF8();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE4FA5C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FAF8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FB94(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FC30(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 96);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FCCC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 112);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FD68(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 128))
  {
    v3 = *(a1 + 120);
    v4 = *(a1 + 128);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FE04(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE4FE88(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FF24(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 168) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37D70, &qword_22DEC7958);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D70, &qword_22DEC7958);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
}

uint64_t sub_22DE501D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37D90, &unk_22DEC7970);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D90, &unk_22DEC7970);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
}

BOOL sub_22DE503FC(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v90 = *(v93 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38378, &qword_22DECA2C0);
  v6 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v95 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v86 - v12;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38380, &qword_22DECA2C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v96 = &v86 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  swift_beginAccess();
  v29 = *(a2 + 24);
  if (v28)
  {
    if (!v29 || (v27 != *(a2 + 16) || v28 != v29) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  swift_beginAccess();
  v31 = *(a2 + 32);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  swift_beginAccess();
  v34 = *(a2 + 48);
  if (v33)
  {
    if (!v34 || (v32 != *(a2 + 40) || v33 != v34) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 56);
  v36 = *(a1 + 64);
  swift_beginAccess();
  v37 = *(a2 + 64);
  if (v36)
  {
    if (!v37 || (v35 != *(a2 + 56) || v36 != v37) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 72);
  v39 = *(a1 + 80);
  swift_beginAccess();
  v40 = *(a2 + 80);
  if (v39)
  {
    if (!v40 || (v38 != *(a2 + 72) || v39 != v40) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 88);
  v42 = *(a1 + 96);
  swift_beginAccess();
  v43 = *(a2 + 96);
  if (v42)
  {
    if (!v43 || (v41 != *(a2 + 88) || v42 != v43) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 104);
  v45 = *(a1 + 112);
  swift_beginAccess();
  v46 = *(a2 + 112);
  if (v45)
  {
    if (!v46 || (v44 != *(a2 + 104) || v45 != v46) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 120);
  v48 = *(a1 + 128);
  swift_beginAccess();
  v49 = *(a2 + 128);
  if (v48)
  {
    if (!v49 || (v47 != *(a2 + 120) || v48 != v49) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 136);
  v51 = *(a1 + 144);
  swift_beginAccess();
  v52 = *(a2 + 144);
  if (v51)
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v50 != *(a2 + 136))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v53 = *(a1 + 152);
  v54 = *(a1 + 160);
  swift_beginAccess();
  v55 = *(a2 + 160);
  if (v54)
  {
    if (!v55 || (v53 != *(a2 + 152) || v54 != v55) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 168);
  swift_beginAccess();
  v57 = *(a2 + 168);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    return 0;
  }

  v58 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v58, v26, &qword_27DA37D70, &qword_22DEC7958);
  v59 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  v60 = *(v17 + 48);
  v61 = v96;
  sub_22DDF0028(v26, v96, &qword_27DA37D70, &qword_22DEC7958);
  v87 = v60;
  sub_22DDF0028(a2 + v59, v61 + v60, &qword_27DA37D70, &qword_22DEC7958);
  v62 = *(v94 + 48);
  if (v62(v61, 1, v13) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37D70, &qword_22DEC7958);
    if (v62(v61 + v87, 1, v13) == 1)
    {
      sub_22DDEF284(v96, &qword_27DA37D70, &qword_22DEC7958);
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  sub_22DDF0028(v61, v24, &qword_27DA37D70, &qword_22DEC7958);
  if (v62(v61 + v87, 1, v13) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37D70, &qword_22DEC7958);
    sub_22DE58C34(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
LABEL_78:
    sub_22DDEF284(v96, &qword_27DA38380, &qword_22DECA2C8);
LABEL_79:

    return 0;
  }

  v63 = v96;
  sub_22DE4633C(v96 + v87, v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  v64 = _s6NDOAPI50Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetailsV2eeoiySbAC_ACtFZ_0(v24, v16);
  sub_22DE58C34(v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDEF284(v26, &qword_27DA37D70, &qword_22DEC7958);
  sub_22DE58C34(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDEF284(v63, &qword_27DA37D70, &qword_22DEC7958);
  if ((v64 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_81:
  v65 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v66 = v92;
  sub_22DDF0028(a1 + v65, v92, &qword_27DA37D90, &unk_22DEC7970);
  v67 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v68 = *(v89 + 48);
  v69 = v66;
  v70 = v95;
  sub_22DDF0028(v69, v95, &qword_27DA37D90, &unk_22DEC7970);
  sub_22DDF0028(a2 + v67, v70 + v68, &qword_27DA37D90, &unk_22DEC7970);
  v71 = *(v90 + 48);
  if (v71(v70, 1, v93) != 1)
  {
    v72 = v95;
    sub_22DDF0028(v95, v91, &qword_27DA37D90, &unk_22DEC7970);
    if (v71(v72 + v68, 1, v93) == 1)
    {

      sub_22DDEF284(v92, &qword_27DA37D90, &unk_22DEC7970);
      sub_22DE58C34(v91, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
      goto LABEL_86;
    }

    v77 = v88;
    sub_22DE4633C(v95 + v68, v88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v78 = *(v93 + 20);
    v79 = *(v91 + v78);
    v80 = *(v77 + v78);
    if (v79 != v80)
    {
      v81 = *(v91 + v78);

      v82 = sub_22DE527E8(v79, v80);

      if (!v82)
      {

        sub_22DE58C34(v88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
        sub_22DDEF284(v92, &qword_27DA37D90, &unk_22DEC7970);
        sub_22DE58C34(v91, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
        v75 = v95;
        v73 = &qword_27DA37D90;
        v74 = &unk_22DEC7970;
        goto LABEL_87;
      }
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v83 = v91;
    v84 = v88;
    v85 = sub_22DEC4BF4();

    sub_22DE58C34(v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    sub_22DDEF284(v92, &qword_27DA37D90, &unk_22DEC7970);
    sub_22DE58C34(v83, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    sub_22DDEF284(v95, &qword_27DA37D90, &unk_22DEC7970);
    return (v85 & 1) != 0;
  }

  sub_22DDEF284(v92, &qword_27DA37D90, &unk_22DEC7970);
  if (v71(v95 + v68, 1, v93) != 1)
  {
LABEL_86:
    v73 = &qword_27DA38378;
    v74 = &qword_22DECA2C0;
    v75 = v95;
LABEL_87:
    sub_22DDEF284(v75, v73, v74);
    return 0;
  }

  sub_22DDEF284(v95, &qword_27DA37D90, &unk_22DEC7970);
  return 1;
}

uint64_t sub_22DE511C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE51264(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE512D0()
{
  sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE513AC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FF0);
  __swift_project_value_buffer(v0, qword_27DA37FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dismiss_sheet_title";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dismiss_sheet_content";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accept_action";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dismiss_action";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "reject_action";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE51664()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v4 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, 1, 1, v5);
  qword_27DA38008 = v3;
  return result;
}

uint64_t sub_22DE5174C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  v9(v1 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, 1, 1, v8);
  v20 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  v9(v1 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, 1, 1, v8);
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v12;
  swift_beginAccess();
  v13 = a1[4];
  v14 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v13;
  *(v1 + 40) = v14;
  v15 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v15, v6, &qword_27DA37D88, &unk_22DEC8210);
  swift_beginAccess();

  sub_22DDF0208(v6, v1 + v7, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v16, v6, &qword_27DA37D88, &unk_22DEC8210);
  swift_beginAccess();
  sub_22DDF0208(v6, v1 + v10, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v17, v6, &qword_27DA37D88, &unk_22DEC8210);

  v18 = v20;
  swift_beginAccess();
  sub_22DDF0208(v6, v1 + v18, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE51A4C()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, &qword_27DA37D88, &unk_22DEC8210);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22DE51B80()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22DDF03C8();
      }

      else if (result == 2)
      {
        sub_22DDF044C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_22DE51C88();
          break;
        case 4:
          sub_22DE51D64();
          break;
        case 5:
          sub_22DE51E40();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DE51C88()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51D64()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51E40()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1);
  if (!v4)
  {
    sub_22DE52090(a1);
    sub_22DE5212C(a1, a2, a3, a4);
    sub_22DE52354(a1, a2, a3, a4);
    return sub_22DE5257C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE51FF4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE52090(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE52354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE5257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v8, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

BOOL sub_22DE527E8(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v8 = *(*(v83 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v83);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v81 = &v73[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v73[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v78 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v73[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v80 = &v73[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v73[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v73[-v29];
  swift_beginAccess();
  v31 = a1[2];
  v32 = a1[3];
  swift_beginAccess();
  v33 = a2[3];
  if (v32)
  {
    if (!v33 || (v31 != a2[2] || v32 != v33) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = a1[4];
  v35 = a1[5];
  swift_beginAccess();
  v36 = a2[5];
  if (v35)
  {
    if (!v36 || (v34 != a2[4] || v35 != v36) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v77 = v7;
  v76 = v11;
  v37 = v4;
  v38 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v38, v30, &qword_27DA37D88, &unk_22DEC8210);
  v39 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v40 = *(v83 + 48);
  sub_22DDF0028(v30, v15, &qword_27DA37D88, &unk_22DEC8210);
  v41 = a2 + v39;
  v42 = v37;
  sub_22DDF0028(v41, &v15[v40], &qword_27DA37D88, &unk_22DEC8210);
  v44 = v84 + 48;
  v43 = *(v84 + 48);
  if (v43(v15, 1, v42) == 1)
  {

    sub_22DDEF284(v30, &qword_27DA37D88, &unk_22DEC8210);
    if (v43(&v15[v40], 1, v42) == 1)
    {
      v75 = v43;
      v84 = v44;
      sub_22DDEF284(v15, &qword_27DA37D88, &unk_22DEC8210);
      goto LABEL_22;
    }

LABEL_20:
    v47 = v15;
LABEL_28:
    sub_22DDEF284(v47, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_29;
  }

  sub_22DDF0028(v15, v28, &qword_27DA37D88, &unk_22DEC8210);
  v45 = v43(&v15[v40], 1, v42);
  v46 = v77;
  if (v45 == 1)
  {

    sub_22DDEF284(v30, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    goto LABEL_20;
  }

  v75 = v43;
  v84 = v44;
  sub_22DE4633C(&v15[v40], v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);

  v48 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v28, v46);
  sub_22DE58C34(v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v30, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE58C34(v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v15, &qword_27DA37D88, &unk_22DEC8210);
  if ((v48 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v49 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  v50 = v42;
  v51 = v82;
  sub_22DDF0028(a1 + v49, v82, &qword_27DA37D88, &unk_22DEC8210);
  v52 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  v53 = *(v83 + 48);
  v54 = v81;
  sub_22DDF0028(v51, v81, &qword_27DA37D88, &unk_22DEC8210);
  v55 = v54;
  sub_22DDF0028(a2 + v52, &v54[v53], &qword_27DA37D88, &unk_22DEC8210);
  v56 = v84;
  v57 = v75;
  if (v75(v54, 1, v50) != 1)
  {
    v61 = v80;
    sub_22DDF0028(v54, v80, &qword_27DA37D88, &unk_22DEC8210);
    v62 = v57(&v54[v53], 1, v50);
    v59 = v76;
    if (v62 == 1)
    {
      sub_22DDEF284(v82, &qword_27DA37D88, &unk_22DEC8210);
      sub_22DE58C34(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      goto LABEL_27;
    }

    v60 = v50;
    v84 = v56;
    v64 = v77;
    sub_22DE4633C(v55 + v53, v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v74 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v61, v64);
    sub_22DE58C34(v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v82, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v55, &qword_27DA37D88, &unk_22DEC8210);
    if (v74)
    {
      goto LABEL_33;
    }

LABEL_29:

    return 0;
  }

  sub_22DDEF284(v51, &qword_27DA37D88, &unk_22DEC8210);
  v58 = v57(&v54[v53], 1, v50);
  v59 = v76;
  if (v58 != 1)
  {
LABEL_27:
    v47 = v55;
    goto LABEL_28;
  }

  v60 = v50;
  v84 = v56;
  sub_22DDEF284(v55, &qword_27DA37D88, &unk_22DEC8210);
LABEL_33:
  v65 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  v66 = v79;
  sub_22DDF0028(a1 + v65, v79, &qword_27DA37D88, &unk_22DEC8210);
  v67 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  v68 = *(v83 + 48);
  sub_22DDF0028(v66, v59, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDF0028(a2 + v67, v59 + v68, &qword_27DA37D88, &unk_22DEC8210);
  v69 = v75;
  if (v75(v59, 1, v60) == 1)
  {

    sub_22DDEF284(v66, &qword_27DA37D88, &unk_22DEC8210);
    if (v69(v59 + v68, 1, v60) == 1)
    {
      sub_22DDEF284(v59, &qword_27DA37D88, &unk_22DEC8210);
      return 1;
    }

    goto LABEL_38;
  }

  v70 = v78;
  sub_22DDF0028(v59, v78, &qword_27DA37D88, &unk_22DEC8210);
  if (v69(v59 + v68, 1, v60) == 1)
  {

    sub_22DDEF284(v66, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_38:
    sub_22DDEF284(v59, &qword_27DA38310, &unk_22DECA250);
    return 0;
  }

  v71 = v77;
  sub_22DE4633C(v59 + v68, v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v72 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v70, v71);

  sub_22DE58C34(v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v66, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE58C34(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v59, &qword_27DA37D88, &unk_22DEC8210);
  return (v72 & 1) != 0;
}

uint64_t sub_22DE533A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382B8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53440(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE534AC()
{
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE53588()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38010);
  __swift_project_value_buffer(v0, qword_27DA38010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "follow_up_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "follow_up_client";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0) + 20);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        sub_22DE53860(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, sub_22DE5BCA4);
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE53860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 24);
  a6();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  if (!v4)
  {
    sub_22DE5396C(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5396C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    sub_22DE5BCA4();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE53A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_22DE53ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53B6C(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE53BD8()
{
  sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DEC49B4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22DEC4AA4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE53E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53EDC(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE53F48()
{
  sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE53FC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22DEC48B4();
  sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE54088()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38028);
  __swift_project_value_buffer(v0, qword_27DA38028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22DEC81E0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "notification_id";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "header";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "body";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "footer";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "interruption_level";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action_url";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 20);
          goto LABEL_3;
        case 2:
          v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 24);
          goto LABEL_3;
        case 3:
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22DE54508();
      }

      else if (result == 7)
      {
        v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 4)
      {
        v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 36);
      }

LABEL_3:
      v0 = 0;
      sub_22DEC49C4();
    }
  }
}

uint64_t sub_22DE54508()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 40);
  sub_22DE5BC50();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DE4DDE8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DE547CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DE54850(v3);
    sub_22DE548DC(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE54750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE547CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE54850(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    sub_22DE5BC50();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE548DC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5499C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 4;
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_22DE54A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE54AF8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE54B64()
{
  sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE54C00()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38040);
  __swift_project_value_buffer(v0, qword_27DA38040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_url";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0) + 24);
LABEL_3:
      v0 = 0;
      sub_22DEC49C4();
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE54F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DE55008(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38298, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE550A8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE55114()
{
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE551B0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38058);
  __swift_project_value_buffer(v0, qword_27DA38058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22DEC7C40;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "alert_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "message";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "default_button";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v15 = "alternate_button";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 20);
LABEL_3:
        v0 = 0;
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 28);
          goto LABEL_3;
        case 4:
          sub_22DE55584();
          break;
        case 5:
          sub_22DE55638();
          break;
      }
    }
  }
}

uint64_t sub_22DE55584()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return sub_22DEC49E4();
}

uint64_t sub_22DE55638()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DE557E4(v3, a1, a2, a3);
    sub_22DE55A00(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE557E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v14 + 32), v8, &qword_27DA37C10, &unk_22DEC7590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37C10, &unk_22DEC7590);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
}

uint64_t sub_22DE55A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v14 + 36), v8, &qword_27DA37C10, &unk_22DEC7590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37C10, &unk_22DEC7590);
  }

  sub_22DE4633C(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
}

uint64_t sub_22DE55C64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a2 + v7, 1, 1, v9);
  v10 = a2 + a1[9];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_22DE55D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38290, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE55E24(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE55E90()
{
  sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE55F44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DEC5F50;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = sub_22DEC4AE4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0) + 20);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE56214(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DDF2564(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE5629C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DE5631C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38288, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE563BC(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE56428()
{
  sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_10:
    v13 = *(v4 + 24);
    v14 = *(a1 + v13);
    v15 = *(a2 + v13);
    if (v14 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
    {
      return 0;
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_NotificationDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_22DEC50E4();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
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

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_22DEC50E4();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_22DEC50E4();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_22DEC50E4();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 4)
  {
    if (v46 != 4)
    {
      return 0;
    }
  }

  else if (v45 != v46)
  {
    return 0;
  }

  v47 = v4[11];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }

LABEL_53:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v51)
  {
    goto LABEL_53;
  }

  return 0;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 == 7 || qword_22DECA2E0[v6] != qword_22DECA2E0[v7])
  {
    return 0;
  }

  v8 = *(v4 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4;
  if (sub_22DEAFB4C(*a1, *a2))
  {
    v17 = v16;
    v18 = *(v16 + 32);
    v19 = (a1 + v18);
    v20 = *(a1 + v18 + 8);
    v21 = (a2 + v18);
    v22 = v21[1];
    if (v20)
    {
      if (!v22)
      {
        return 0;
      }

      if (*v19 != *v21 || v20 != v22)
      {
        v24 = sub_22DEC50E4();
        v17 = v16;
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_23:
      v25 = *(v17 + 20);
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
      return sub_22DEC4BF4() & 1;
    }

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (sub_22DE30B30(*a1, *a2) & 1) != 0 && (sub_22DEAFE24(a1[1], a2[1]))
  {
    v10 = *(v4 + 24);
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CIResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38348, &unk_22DECA290);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_22DDF0028(a1 + v25, v24, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v52 + v25, &v24[v26], &qword_27DA38088, &unk_22DEC8220);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_22DDF0028(v24, v19, &qword_27DA38088, &unk_22DEC8220);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_22DE4633C(&v24[v26], v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      v31 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v19, v15);
      sub_22DE58C34(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      sub_22DE58C34(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_22DE58C34(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
LABEL_6:
    v28 = &qword_27DA38350;
    v29 = &unk_22DED04F0;
    v30 = v24;
LABEL_14:
    sub_22DDEF284(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v24, &qword_27DA38088, &unk_22DEC8220);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_22DDF0028(v51 + v32, v50, &qword_27DA37BC8, qword_22DEC7358);
  sub_22DDF0028(v52 + v32, v34 + v33, &qword_27DA37BC8, qword_22DEC7358);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_22DDEF284(v34, &qword_27DA37BC8, qword_22DEC7358);
LABEL_18:
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v38 = sub_22DEC4BF4();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_22DDF0028(v34, v45, &qword_27DA37BC8, qword_22DEC7358);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_22DE58C34(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
LABEL_13:
    v28 = &qword_27DA38348;
    v29 = &unk_22DECA290;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_22DE4633C(v40, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v42 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponseV2eeoiySbAC_ACtFZ_0(v37, v41);
  sub_22DE58C34(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DE58C34(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DDEF284(v34, &qword_27DA37BC8, qword_22DEC7358);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_22DE571E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38370, &qword_22DECA2B8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v23 = v22[5];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_38;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v64 = v21;
      v29 = v22;
      v30 = sub_22DEC50E4();
      v22 = v29;
      v21 = v64;
      if ((v30 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_38;
  }

  v31 = v22[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_38;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v64 = v21;
      v36 = v22;
      v37 = sub_22DEC50E4();
      v22 = v36;
      v21 = v64;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_38;
  }

  v38 = v22[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_38;
    }

    v64 = v5;
    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v22;
      v44 = sub_22DEC50E4();
      v22 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v64 = v5;
    if (v42)
    {
      goto LABEL_38;
    }
  }

  v62 = v22;
  v45 = v22[8];
  v46 = *(v15 + 48);
  sub_22DDF0028(a1 + v45, v21, &qword_27DA37C10, &unk_22DEC7590);
  v63 = v46;
  sub_22DDF0028(a2 + v45, &v21[v46], &qword_27DA37C10, &unk_22DEC7590);
  v47 = v64 + 48;
  v48 = *(v64 + 6);
  if (v48(v21, 1, v4) != 1)
  {
    sub_22DDF0028(v21, v14, &qword_27DA37C10, &unk_22DEC7590);
    v61 = v48;
    v64 = v47;
    if (v48(&v21[v63], 1, v4) != 1)
    {
      v50 = v65;
      sub_22DE4633C(&v21[v63], v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      v51 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(v14, v50);
      sub_22DE58C34(v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      sub_22DE58C34(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      sub_22DDEF284(v21, &qword_27DA37C10, &unk_22DEC7590);
      if ((v51 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    sub_22DE58C34(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_29:
    v49 = v21;
LABEL_37:
    sub_22DDEF284(v49, &qword_27DA38370, &qword_22DECA2B8);
    goto LABEL_38;
  }

  if (v48(&v21[v63], 1, v4) != 1)
  {
    goto LABEL_29;
  }

  v61 = v48;
  sub_22DDEF284(v21, &qword_27DA37C10, &unk_22DEC7590);
LABEL_31:
  v52 = v62[9];
  v53 = *(v15 + 48);
  sub_22DDF0028(a1 + v52, v19, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DDF0028(a2 + v52, &v19[v53], &qword_27DA37C10, &unk_22DEC7590);
  v54 = v61;
  if (v61(v19, 1, v4) == 1)
  {
    if (v54(&v19[v53], 1, v4) == 1)
    {
      sub_22DDEF284(v19, &qword_27DA37C10, &unk_22DEC7590);
LABEL_41:
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v55 = sub_22DEC4BF4();
      return v55 & 1;
    }

    goto LABEL_36;
  }

  sub_22DDF0028(v19, v12, &qword_27DA37C10, &unk_22DEC7590);
  if (v54(&v19[v53], 1, v4) == 1)
  {
    sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_36:
    v49 = v19;
    goto LABEL_37;
  }

  v57 = &v19[v53];
  v58 = v65;
  sub_22DE4633C(v57, v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v59 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(v12, v58);
  sub_22DE58C34(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDEF284(v19, &qword_27DA37C10, &unk_22DEC7590);
  if (v59)
  {
    goto LABEL_41;
  }

LABEL_38:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F58, &qword_22DEC8188);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v18 = v17[7];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_11;
  }

  v21 = a1;
  v22 = *(v13 + 48);
  v31 = v21;
  sub_22DDF0028(v21, v16, &qword_27DA37BC0, &qword_22DEC7350);
  v32 = a2;
  sub_22DDF0028(a2, &v16[v22], &qword_27DA37BC0, &qword_22DEC7350);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_22DDF0028(v16, v12, &qword_27DA37BC0, &qword_22DEC7350);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      sub_22DE4633C(&v16[v22], v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v26 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV06OneOf_H4DataO2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      sub_22DDEF284(v16, &qword_27DA37BC0, &qword_22DEC7350);
      if ((v26 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
LABEL_10:
    sub_22DDEF284(v16, &qword_27DA37F58, &qword_22DEC8188);
    goto LABEL_11;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_22DDEF284(v16, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_14:
  v27 = v17[8];
  v28 = *(v31 + v27);
  v29 = *(v32 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    goto LABEL_11;
  }

  if (sub_22DEAFB4C(*(v31 + v17[5]), *(v32 + v17[5])))
  {
    v30 = v17[6];
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v24 = sub_22DEC4BF4();
    return v24 & 1;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s6NDOAPI50Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_22DEC50E4();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v30 = v4;
      v31 = sub_22DEC50E4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v32 = v4[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }

LABEL_38:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v36)
  {
    goto LABEL_38;
  }

  return 0;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV06OneOf_H4DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v86 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v2 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  v10 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v85 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v81 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v88 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v79 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v79 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38388, &unk_22DECA2D0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v79 - v39;
  v41 = *(v38 + 56);
  sub_22DE58BCC(v89, &v79 - v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  sub_22DE58BCC(v90, &v40[v41], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_22DE58BCC(v40, v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = &v40[v41];
          v44 = v82;
          sub_22DE4633C(v43, v82, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
          v45 = _s6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpDataV2eeoiySbAC_ACtFZ_0(v33, v44);
          v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData;
          sub_22DE58C34(v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
          v47 = v33;
LABEL_14:
          v49 = v46;
          goto LABEL_15;
        }

        v50 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData;
        v51 = v33;
        goto LABEL_33;
      }

      sub_22DE58BCC(v40, v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v54 = &v40[v41];
        v55 = v85;
        sub_22DE4633C(v54, v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
        if (sub_22DE2F604(*v30, *v55))
        {
          v56 = *(v80 + 20);
          sub_22DEC48B4();
          sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
          if (sub_22DEC4BF4())
          {
            v57 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
            v58 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
            v59 = v55;
LABEL_43:
            sub_22DE58C34(v59, v57);
            v73 = v30;
            goto LABEL_44;
          }
        }

        v74 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
        v75 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
        v76 = v55;
        goto LABEL_46;
      }

      v66 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
      goto LABEL_32;
    }

    sub_22DE58BCC(v40, v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (!swift_getEnumCaseMultiPayload())
    {
      v67 = v81;
      sub_22DE4633C(&v40[v41], v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v68 = *(v15 + 20);
      v69 = *&v35[v68];
      v70 = *(v67 + v68);
      if (v69 == v70 || (v71 = *&v35[v68], , , v72 = sub_22DE503FC(v69, v70), , , v72))
      {
        sub_22DEC48B4();
        sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
        if (sub_22DEC4BF4())
        {
          v58 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
          sub_22DE58C34(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
          v73 = v35;
LABEL_44:
          sub_22DE58C34(v73, v58);
          sub_22DE58C34(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
          v45 = 1;
          return v45 & 1;
        }
      }

      v75 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
      sub_22DE58C34(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v77 = v35;
LABEL_47:
      sub_22DE58C34(v77, v75);
      sub_22DE58C34(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      goto LABEL_48;
    }

    v50 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
    v51 = v35;
LABEL_33:
    sub_22DE58C34(v51, v50);
    sub_22DDEF284(v40, &qword_27DA38388, &unk_22DECA2D0);
LABEL_48:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22DE58BCC(v40, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v52 = &v40[v41];
      v53 = v83;
      sub_22DE4633C(v52, v83, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      v45 = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_NotificationDataV2eeoiySbAC_ACtFZ_0(v27, v53);
      v46 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData;
      sub_22DE58C34(v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      v47 = v27;
      goto LABEL_14;
    }

    v50 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData;
    v51 = v27;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v30 = v88;
    sub_22DE58BCC(v40, v88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v66 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
LABEL_32:
      v50 = v66;
      v51 = v30;
      goto LABEL_33;
    }

    v60 = v87;
    sub_22DE4633C(&v40[v41], v87, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    v61 = *(v86 + 20);
    v62 = (v30 + v61);
    v63 = *(v30 + v61 + 8);
    v64 = (v60 + v61);
    v65 = v64[1];
    if (v63)
    {
      if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v65)
    {
LABEL_45:
      v74 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v75 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v76 = v60;
LABEL_46:
      sub_22DE58C34(v76, v74);
      v77 = v30;
      goto LABEL_47;
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8]);
    if (sub_22DEC4BF4())
    {
      v57 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v58 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v59 = v60;
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_22DE58BCC(v40, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v50 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
    v51 = v24;
    goto LABEL_33;
  }

  v48 = v84;
  sub_22DE4633C(&v40[v41], v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v45 = _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV2eeoiySbAC_ACtFZ_0(v24, v48);
  sub_22DE58C34(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v47 = v24;
  v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
LABEL_15:
  sub_22DE58C34(v47, v49);
  sub_22DE58C34(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  return v45 & 1;
}

uint64_t sub_22DE58BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE58C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DE58CD8()
{
  result = qword_27DA38100;
  if (!qword_27DA38100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38100);
  }

  return result;
}

unint64_t sub_22DE58D30()
{
  result = qword_27DA38108;
  if (!qword_27DA38108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38108);
  }

  return result;
}

unint64_t sub_22DE58D88()
{
  result = qword_27DA38110;
  if (!qword_27DA38110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38110);
  }

  return result;
}

unint64_t sub_22DE58E10()
{
  result = qword_27DA38128;
  if (!qword_27DA38128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38128);
  }

  return result;
}

unint64_t sub_22DE58E68()
{
  result = qword_27DA38130;
  if (!qword_27DA38130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38130);
  }

  return result;
}

unint64_t sub_22DE58EC0()
{
  result = qword_27DA38138;
  if (!qword_27DA38138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38138);
  }

  return result;
}

unint64_t sub_22DE58F48()
{
  result = qword_27DA38150;
  if (!qword_27DA38150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38150);
  }

  return result;
}

unint64_t sub_22DE58FA0()
{
  result = qword_27DA38158;
  if (!qword_27DA38158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38158);
  }

  return result;
}

unint64_t sub_22DE58FF8()
{
  result = qword_27DA38160;
  if (!qword_27DA38160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38160);
  }

  return result;
}

unint64_t sub_22DE59080()
{
  result = qword_28145CBB0;
  if (!qword_28145CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBB0);
  }

  return result;
}

unint64_t sub_22DE590D8()
{
  result = qword_28145CBB8;
  if (!qword_28145CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBB8);
  }

  return result;
}

unint64_t sub_22DE59130()
{
  result = qword_28145CBA8;
  if (!qword_28145CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBA8);
  }

  return result;
}

unint64_t sub_22DE591B8()
{
  result = qword_28145C060;
  if (!qword_28145C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C060);
  }

  return result;
}

unint64_t sub_22DE59210()
{
  result = qword_28145C068;
  if (!qword_28145C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C068);
  }

  return result;
}

unint64_t sub_22DE59268()
{
  result = qword_28145C058;
  if (!qword_28145C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C058);
  }

  return result;
}

uint64_t sub_22DE592EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_22DE5A4F8()
{
  sub_22DE5A8CC(319, &qword_28145ADA0);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE5B33C(319, &qword_28145C050, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_CheckInTrigger, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE5A62C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5A728(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE5A728(319, qword_28145BD58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE5A728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DE5A7B4()
{
  sub_22DE5A728(319, &qword_28145AD80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145AD98);
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE5A8CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22DEC4BC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22DE5A94C()
{
  sub_22DE5A728(319, qword_28145D948, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145ADA0);
    if (v1 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v2 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145CBA0, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_ActionType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22DE5B33C(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22DE5AAA0()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22DE5AB8C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DE5ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22DEC48B4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_22DE5AF1C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE5B33C(319, qword_28145BE70, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_175Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_176Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22DE5B178()
{
  sub_22DE5B33C(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B248()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE5B33C(319, qword_28145AE70, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE5B33C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22DE5B3B4()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B484()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22DE5A728(319, qword_28145BE28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_245Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
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

uint64_t __swift_store_extra_inhabitant_index_246Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
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

void sub_22DE5B72C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B7DC()
{
  sub_22DE5A728(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22DE5A728(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22DE5A728(319, qword_28145C0F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DE5B978()
{
  sub_22DE5A728(319, qword_28145B140, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22DE5A728(319, qword_28145B428, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22DE5BAD8()
{
  sub_22DE5A728(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22DE5BBA8()
{
  result = qword_28145C070;
  if (!qword_28145C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C070);
  }

  return result;
}

unint64_t sub_22DE5BBFC()
{
  result = qword_28145CBC0;
  if (!qword_28145CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBC0);
  }

  return result;
}

unint64_t sub_22DE5BC50()
{
  result = qword_27DA382F8;
  if (!qword_27DA382F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA382F8);
  }

  return result;
}

unint64_t sub_22DE5BCA4()
{
  result = qword_27DA38300;
  if (!qword_27DA38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38300);
  }

  return result;
}

unint64_t sub_22DE5BCF8()
{
  result = qword_27DA38308;
  if (!qword_27DA38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38308);
  }

  return result;
}

uint64_t sub_22DE5BE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE627B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE62760();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE6270C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BFB0()
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE5C000(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE626B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5C04C()
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.style.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 20)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.style.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 20);
  return sub_22DE5C140;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.category.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 24)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.category.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 24);
  return sub_22DE62828;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.action.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 28)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.action.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 28);
  return sub_22DE62828;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(a1 + result[5]) = 1;
  *(a1 + result[6]) = 1;
  *(a1 + result[7]) = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(v1 + *(v7 + 20), v6, &qword_27DA38450, &qword_22DECA320);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE616F0(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v8[5]) = 1;
  *(a1 + v8[6]) = 1;
  *(a1 + v8[7]) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38450, &qword_22DECA320);
  }

  return result;
}

uint64_t sub_22DE5C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(a1 + *(v8 + 20), v7, &qword_27DA38450, &qword_22DECA320);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE616F0(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + v9[5]) = 1;
  *(a2 + v9[6]) = 1;
  *(a2 + v9[7]) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38450, &qword_22DECA320);
  }

  return result;
}

uint64_t sub_22DE5C698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE61758(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(a2 + v9, &qword_27DA38450, &qword_22DECA320);
  sub_22DE616F0(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38450, &qword_22DECA320);
  sub_22DE616F0(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38450, &qword_22DECA320);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + v9[5]) = 1;
    *(v14 + v9[6]) = 1;
    *(v14 + v9[7]) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38450, &qword_22DECA320);
    }
  }

  else
  {
    sub_22DE616F0(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  return sub_22DE5CAA0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.hasAlert.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(v0 + *(v5 + 20), v4, &qword_27DA38450, &qword_22DECA320);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA38450, &qword_22DECA320);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.clearAlert()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(v0 + v1, &qword_27DA38450, &qword_22DECA320);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5CD60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5CDC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.clearEventID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.clearEventEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.additionalHeaders.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v4 = a1 + v3[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = (a1 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v3[8];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(v1 + *(v7 + 24), v6, &qword_27DA38458, &qword_22DECA328);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE616F0(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38458, &qword_22DECA328);
  }

  return result;
}

uint64_t sub_22DE5D470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(a1 + *(v8 + 24), v7, &qword_27DA38458, &qword_22DECA328);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE616F0(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38458, &qword_22DECA328);
  }

  return result;
}

uint64_t sub_22DE5D60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE61758(a1, v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(a2 + v9, &qword_27DA38458, &qword_22DECA328);
  sub_22DE616F0(v8, a2 + v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA38458, &qword_22DECA328);
  sub_22DE616F0(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38458, &qword_22DECA328);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38458, &qword_22DECA328);
    }
  }

  else
  {
    sub_22DE616F0(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  return sub_22DE5DA3C;
}

void sub_22DE5DA64(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22DE61758(v11, v10, a5);
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE616F0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22DE617C0(v11, a5);
  }

  else
  {
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE616F0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.hasOps.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(v0 + *(v5 + 24), v4, &qword_27DA38458, &qword_22DECA328);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA38458, &qword_22DECA328);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearOps()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA38458, &qword_22DECA328);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

uint64_t sub_22DE5DDF0(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearCmd()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5DEC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5DF24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearAltDsid()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5E12C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5E190(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearTxnID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.appData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v3 = a1 + v2[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = (a1 + v2[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v2[9]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE5E734()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA383F0);
  __swift_project_value_buffer(v0, qword_27DA383F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "category";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DE5EB0C();
        break;
      case 2:
        sub_22DE5EA98();
        break;
      case 1:
        sub_22DE5EA24();
        break;
    }
  }

  return result;
}

uint64_t sub_22DE5EA24()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 20);
  sub_22DE627B4();
  return sub_22DEC4984();
}

uint64_t sub_22DE5EA98()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 24);
  sub_22DE62760();
  return sub_22DEC4984();
}

uint64_t sub_22DE5EB0C()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 28);
  sub_22DE6270C();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.traverse<A>(visitor:)()
{
  result = sub_22DE5EC08(v0);
  if (!v1)
  {
    sub_22DE5EC88(v0);
    sub_22DE5ED08(v0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5EC08(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 20)) & 1) == 0)
  {
    sub_22DE627B4();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5EC88(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    sub_22DE62760();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5ED08(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 28)) & 1) == 0)
  {
    sub_22DE6270C();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5EDD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 1;
  *(a2 + v5) = 1;
  *(a2 + a1[7]) = 1;
  return result;
}

uint64_t sub_22DE5EE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA38600, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5EF00(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5EF6C()
{
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE5F020(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DEC5F50;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_22DEC4AE4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE5F224();
    }
  }

  return result;
}

uint64_t sub_22DE5F224()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE5F330(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(a1 + *(v14 + 20), v8, &qword_27DA38450, &qword_22DECA320);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38450, &qword_22DECA320);
  }

  sub_22DE616F0(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DEC4AD4();
  return sub_22DE617C0(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
}

uint64_t sub_22DE5F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22DE5F650(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5F6F0(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5F75C()
{
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return sub_22DEC4A44();
}

uint64_t sub_22DE5F7F8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38420);
  __swift_project_value_buffer(v0, qword_27DA38420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event_epoch";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "body_data";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "additional_headers";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32);
        sub_22DEC49A4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.traverse<A>(visitor:)()
{
  v2 = v0;
  result = sub_22DE5FCE4(v0);
  if (!v1)
  {
    sub_22DE5FD5C(v0);
    v4 = *v0;
    if (*(*v2 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    if (*(v2[1] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    v5 = v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 24);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5FCE4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5FD5C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE5FE20@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a2[1] = sub_22DE0501C(v4);
  v5 = a2 + a1[6];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t sub_22DE5FEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5FF80(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5FFEC()
{
  sub_22DE61820(&qword_27DA38558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE60088()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38438);
  __swift_project_value_buffer(v0, qword_27DA38438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ops";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cmd";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alt_dsid";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "txn_id";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "app_data";
  *(v16 + 8) = 8;
  *(v16 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.decodeMessage<A>(decoder:)()
{
  result = sub_22DEC4954();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_22DE604B0();
        }

        else if (result == 2)
        {
          v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28);
          sub_22DEC4994();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v4 = v0;
            v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32);
LABEL_17:
            v0 = v4;
            sub_22DEC49C4();
            break;
          case 4:
            v4 = v0;
            v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36);
            goto LABEL_17;
          case 5:
            sub_22DEC4884();
            sub_22DEC4944();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE604B0()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DE60678(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE60888(v3);
    sub_22DE60900(v3);
    sub_22DE60978(v3);
    v7 = *v3;
    if (*(*v5 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE60678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(a1 + *(v14 + 24), v8, &qword_27DA38458, &qword_22DECA328);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA38458, &qword_22DECA328);
  }

  sub_22DE616F0(v8, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  sub_22DEC4AD4();
  return sub_22DE617C0(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
}

uint64_t sub_22DE60888(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DE60900(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE60978(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE60A3C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DE61820(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE60AC4@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v4 = a2 + a1[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  v9[4] = 1;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_22DE60BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385E8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE60C64(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38570, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE60CD0()
{
  sub_22DE61820(&qword_27DA38570, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (sub_22DEAFB4C(*a1, *a2) & 1) != 0 && (sub_22DEAFB4C(a1[1], a2[1]))
  {
    v16 = v4[6];
    sub_22DEC48B4();
    sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayloadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38628, &unk_22DECAFF0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v45 = a1;
  v17 = v44[6];
  v18 = *(v13 + 56);
  sub_22DDF0028(a1 + v17, v16, &qword_27DA38458, &qword_22DECA328);
  sub_22DDF0028(a2 + v17, &v16[v18], &qword_27DA38458, &qword_22DECA328);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_22DDF0028(v16, v11, &qword_27DA38458, &qword_22DECA328);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v43;
      sub_22DE616F0(&v16[v18], v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      v23 = _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOpsV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_22DE617C0(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      sub_22DDEF284(v16, &qword_27DA38458, &qword_22DECA328);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA38628, &unk_22DECAFF0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v16, &qword_27DA38458, &qword_22DECA328);
LABEL_10:
  v24 = v44;
  v25 = v45;
  v26 = v44[7];
  v27 = (v45 + v26);
  v28 = *(v45 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_7;
    }
  }

  v31 = v44[8];
  v32 = (v45 + v31);
  v33 = *(v45 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = v24[9];
  v37 = (v25 + v36);
  v38 = *(v25 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v40)
  {
    goto LABEL_7;
  }

  if (sub_22DEAFB4C(*v25, *a2))
  {
    v41 = v24[5];
    sub_22DEC48B4();
    sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8]);
    v20 = sub_22DEC4BF4();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOpsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38630, &qword_22DECB008);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_22DDF0028(a1 + v17, v16, &qword_27DA38450, &qword_22DECA320);
  sub_22DDF0028(a2 + v17, &v16[v18], &qword_27DA38450, &qword_22DECA320);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA38450, &qword_22DECA320);
LABEL_9:
      sub_22DEC48B4();
      sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8]);
      v20 = sub_22DEC4BF4();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_22DDF0028(v16, v11, &qword_27DA38450, &qword_22DECA320);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA38630, &qword_22DECB008);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_22DE616F0(&v16[v18], v24[0], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v22 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertDataV2eeoiySbAC_ACtFZ_0(v11, v21);
  sub_22DE617C0(v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DDEF284(v16, &qword_27DA38450, &qword_22DECA320);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_22DE616F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE61758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE617C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE61820(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DE6186C()
{
  result = qword_27DA38480;
  if (!qword_27DA38480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38480);
  }

  return result;
}

unint64_t sub_22DE618C4()
{
  result = qword_27DA38488;
  if (!qword_27DA38488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38488);
  }

  return result;
}

unint64_t sub_22DE6191C()
{
  result = qword_27DA38490;
  if (!qword_27DA38490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38490);
  }

  return result;
}

unint64_t sub_22DE619A4()
{
  result = qword_27DA384A8;
  if (!qword_27DA384A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384A8);
  }

  return result;
}

unint64_t sub_22DE619FC()
{
  result = qword_27DA384B0;
  if (!qword_27DA384B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384B0);
  }

  return result;
}

unint64_t sub_22DE61A54()
{
  result = qword_27DA384B8;
  if (!qword_27DA384B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384B8);
  }

  return result;
}

unint64_t sub_22DE61ADC()
{
  result = qword_27DA384D0;
  if (!qword_27DA384D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384D0);
  }

  return result;
}

unint64_t sub_22DE61B34()
{
  result = qword_27DA384D8;
  if (!qword_27DA384D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384D8);
  }

  return result;
}

unint64_t sub_22DE61B8C()
{
  result = qword_27DA384E0;
  if (!qword_27DA384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384E0);
  }

  return result;
}

unint64_t sub_22DE61C14()
{
  result = qword_27DA384F8;
  if (!qword_27DA384F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384F8);
  }

  return result;
}

unint64_t sub_22DE61C6C()
{
  result = qword_27DA38500;
  if (!qword_27DA38500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38500);
  }

  return result;
}

unint64_t sub_22DE61CC4()
{
  result = qword_27DA38508;
  if (!qword_27DA38508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38508);
  }

  return result;
}

void sub_22DE62230()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_27DA38590);
    if (v1 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA38598);
      if (v2 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_27DA385A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE6233C()
{
  sub_22DEC48B4();
  if (v0 <= 0x3F)
  {
    sub_22DE62664(319, &qword_27DA385B8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE62404()
{
  sub_22DE624D8();
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_28145AD88);
      if (v2 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD00);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE624D8()
{
  if (!qword_28145ADA0)
  {
    v0 = sub_22DEC4BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28145ADA0);
    }
  }
}

void sub_22DE6255C()
{
  sub_22DE624D8();
  if (v0 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v1 <= 0x3F)
    {
      sub_22DE62664(319, &qword_27DA385E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      if (v2 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD08);
        if (v3 <= 0x3F)
        {
          sub_22DE33AAC(319, &qword_28145AD88);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DE62664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22DEC4EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22DE626B8()
{
  result = qword_27DA38608;
  if (!qword_27DA38608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38608);
  }

  return result;
}

unint64_t sub_22DE6270C()
{
  result = qword_27DA38610;
  if (!qword_27DA38610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38610);
  }

  return result;
}

unint64_t sub_22DE62760()
{
  result = qword_27DA38618;
  if (!qword_27DA38618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38618);
  }

  return result;
}

unint64_t sub_22DE627B4()
{
  result = qword_27DA38620;
  if (!qword_27DA38620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38620);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = a1 + v2[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(v1 + v3, &qword_27DA37AD8, &qword_22DECB040);
  sub_22DE62BD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22DE62BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.init()@<X0>(uint64_t a1@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CommonHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CommonHeaders.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 0xF)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_22DECB030[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE62D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE68A24();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 0x1D)
  {
    *v1 = 16;
  }

  else
  {
    *v1 = byte_22DECBA78[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE62E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE689D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE62EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE6897C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceLanguage.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.preferredLanguages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE6311C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE63180(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearDeviceRegion()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE633A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearDeviceTimezone()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE635C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearClosestCity()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE637EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearStorefrontCountry()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.clearRequestEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE62BD4(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + v8[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v8[10]);
  *v15 = 0;
  v15[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37AD8, &qword_22DECB040);
  }

  return result;
}

uint64_t sub_22DE63E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE63E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE62BD4(v7, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + v9[5];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v9[9]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v9[10]);
  *v16 = 0;
  v16[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37AD8, &qword_22DECB040);
  }

  return result;
}

uint64_t sub_22DE64010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE64468(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(a2 + v9, &qword_27DA37AD8, &qword_22DECB040);
  sub_22DE62BD4(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  *(v5 + 12) = v15;
  sub_22DE63E20(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + v9[5];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v14 + v9[9]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[10]);
    *v22 = 0;
    v22[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37AD8, &qword_22DECB040);
    }
  }

  else
  {
    sub_22DE62BD4(v8, v14);
  }

  return sub_22DE64350;
}

void sub_22DE64350(uint64_t **a1, char a2)
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
    sub_22DE64468((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA37AD8, &qword_22DECB040);
    sub_22DE62BD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE644CC(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37AD8, &qword_22DECB040);
    sub_22DE62BD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DE64468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE644CC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.hasLocale.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22DDEF284(v4, &qword_27DA37AD8, &qword_22DECB040);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.clearLocale()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(v0 + v1, &qword_27DA37AD8, &qword_22DECB040);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22DE646E0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6473C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE647A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE64814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE64958(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE649B0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE64A0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE64A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE64AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE64C28(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE68A88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.clearResponseEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22DE64DBC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38638);
  __swift_project_value_buffer(v0, qword_27DA38638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DEC81E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "CONTENT_TYPE";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "CONTENT_ENCODING";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "CACHE_CONTROL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 12;
  *v12 = "X_APPLE_AUTH_TOKEN";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 13;
  *v14 = "X_APPLE_AUTH_TIMESTAMP";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 15;
  *v16 = "X_APPLE_REQUEST_ID";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "X_APPLE_SESSION_ID";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE65104()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38650);
  __swift_project_value_buffer(v0, qword_27DA38650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22DECB010;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "ACCEPT";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ACCEPT_LANGUAGE";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "USER_AGENT";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "RETRY_COUNT";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 10;
  *v15 = "X_APPLE_BAA";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "X_APPLE_BAA_S";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 20;
  *v19 = "X_APPLE_I_LOCALE";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 21;
  *v21 = "X_APPLE_I_IDENTITY_ID";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 22;
  *v22 = "X_APPLE_I_MD";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 23;
  *v24 = "X_APPLE_I_MD_M";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 24;
  *v26 = "X_APPLE_I_MD_RINFO";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "X_APPLE_APP_INFO";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 26;
  *v30 = "X_MME_DEVICE_ID";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 27;
  *v32 = "X_MME_CLIENT_INFO";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 28;
  *v34 = "X_APPLE_GS_TOKEN";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 30;
  *v36 = "X_APPLE_UNIVERSAL_CODE";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE6568C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38668);
  __swift_project_value_buffer(v0, qword_27DA38668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "EXPIRES";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "RETRY_AFTER";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "X_APPLE_UNIVERSAL";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE65904()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D5A8);
  __swift_project_value_buffer(v0, qword_28145D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DECB020;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "device_language";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preferred_languages";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_region";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "device_timezone";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "closest_city";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "storefront_country";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32);
          goto LABEL_3;
        case 5:
          v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36);
LABEL_3:
          v0 = 0;
          sub_22DEC49C4();
          break;
        case 6:
          v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 24);
          goto LABEL_3;
        case 2:
          sub_22DEC49B4();
          break;
        case 3:
          v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE670B4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DE65E3C(v3);
    sub_22DE65EB4(v3);
    sub_22DE65F2C(v3);
    sub_22DE65FA4(v3);
    v6 = v3 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 20);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE65E3C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65EB4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65F2C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65FA4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE66068@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + a1[10]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_22DE66124(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38738, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE661C4(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE66230()
{
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return sub_22DEC4A44();
}

uint64_t sub_22DE662CC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C758);
  __swift_project_value_buffer(v0, qword_28145C758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_epoch";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "locale";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DE665EC();
        break;
      case 2:
        v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24);
        sub_22DEC49A4();
        break;
      case 1:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 20);
        sub_22DEC49C4();
        break;
    }
  }

  return result;
}

uint64_t sub_22DE665EC()
{
  v0 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE67038(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  if (!v4)
  {
    sub_22DE6673C(v3);
    sub_22DE667B4(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE6673C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE667B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37AD8, &qword_22DECB040);
  }

  sub_22DE62BD4(v5, v10);
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  sub_22DEC4AD4();
  return sub_22DE644CC(v10);
}

uint64_t sub_22DE669E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_22DE66AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38730, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE66B60(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE66BCC()
{
  sub_22DE67B8C(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return sub_22DEC4A44();
}

uint64_t sub_22DE66C68()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C4A8);
  __swift_project_value_buffer(v0, qword_28145C4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_id";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "response_epoch";
  *(v12 + 8) = 14;
  *(v12 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28);
        sub_22DEC49A4();
        break;
      case 2:
        v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 24);
LABEL_10:
        v0 = 0;
        sub_22DEC49C4();
        break;
      case 1:
        v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE67038(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  if (!v4)
  {
    sub_22DE670B4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    sub_22DE67138(v3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE67038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE670B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE67138(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE671FC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22DEC5184();
  a1(0);
  sub_22DE67B8C(a2, a3);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE67284@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_22DE67320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38728, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE673C0(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE6742C()
{
  sub_22DE67B8C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_ResponseMetaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_22DEC50E4();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8]);
  return sub_22DEC4BF4() & 1;
}