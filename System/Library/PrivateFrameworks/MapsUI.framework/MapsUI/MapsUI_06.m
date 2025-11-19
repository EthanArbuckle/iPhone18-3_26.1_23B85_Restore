uint64_t sub_1C56B7320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB28, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B73C0()
{
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);

  return sub_1C584F160();
}

uint64_t sub_1C56B742C()
{
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);

  return sub_1C584F170();
}

uint64_t sub_1C56B74AC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCD8);
  __swift_project_value_buffer(v0, qword_1EC18FCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "menu_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "menu_item";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B76C0()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
          sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
          sub_1C584F0F0();
          break;
        case 2:
          v3 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0) + 28);
          type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
          sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
          sub_1C584F100();
          break;
        case 1:
          v4 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0) + 24);
          sub_1C584F0D0();
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
  if (v10[1])
  {
    v11 = *v10;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  sub_1C56B8058(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, 2);
  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    sub_1C584F210();
  }

  v12 = v3 + *(v9 + 20);
  return sub_1C584EFB0();
}

uint64_t sub_1C56B79A8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[5]];
  sub_1C584EFC0();
  v5 = a1[6];
  v6 = a1[7];
  v7 = &a2[v5];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v6], 1, 1, v8);
}

uint64_t sub_1C56B7A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB20, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B7B28()
{
  sub_1C56EF190(&qword_1EC16D7D0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);

  return sub_1C584F160();
}

uint64_t sub_1C56B7B94()
{
  sub_1C56EF190(&qword_1EC16D7D0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);

  return sub_1C584F170();
}

uint64_t sub_1C56B7C14()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FCF0);
  __swift_project_value_buffer(v0, qword_1EC18FCF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "bounding_box";
  *(v12 + 8) = 12;
  *(v12 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B7E30()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0) + 28);
          type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
          sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
          sub_1C584F100();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      sub_1C584F0D0();
LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B7F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v13 = (v5 + *(v10 + 24));
  if (v13[1])
  {
    v14 = *v13;
    sub_1C584F1F0();
  }

  sub_1C56B8058(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, 3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56B8058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v21[2] = a6;
  v21[3] = a3;
  v21[5] = a4;
  v21[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v21 - v11;
  v13 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5(0);
  sub_1C56466CC(a1 + *(v19 + 28), v12, &qword_1EC16EC30, &qword_1C586B0A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1C5625230(v12, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  sub_1C56EC178(v12, v18, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C584F220();
  return sub_1C56EC248(v18, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
}

uint64_t sub_1C56B827C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C56B8354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB18, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B83F4()
{
  sub_1C56EF190(&qword_1EC16F388, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56B8460()
{
  sub_1C56EF190(&qword_1EC16F388, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56B84E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD08);
  __swift_project_value_buffer(v0, qword_1EC18FD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C586AE60;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "symbol_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "interaction_type";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v7();
  v12 = (v19 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "user_interaction";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v7();
  v14 = (v19 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "menu_item";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v19 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "item_id";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56B87B0()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v7 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) + 36);
            type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
            sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
            sub_1C584F100();
            break;
          case 5:
            type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
            sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
            sub_1C584F0F0();
            break;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) + 40);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) + 24);
LABEL_5:
            v0 = v3;
            sub_1C584F0D0();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) + 28);
            goto LABEL_5;
          case 3:
            v5 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) + 32);
            sub_1C5703DDC();
            sub_1C584F090();
            break;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v9 = result;
  v10 = (v3 + *(result + 24));
  if (v10[1])
  {
    v11 = *v10;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v12 = (v3 + v9[7]);
  if (v12[1])
  {
    v13 = *v12;
    sub_1C584F1F0();
  }

  if (*(v3 + v9[8]) != 2)
  {
    sub_1C5703DDC();
    sub_1C584F1A0();
  }

  sub_1C56B8BB4(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    sub_1C584F210();
  }

  sub_1C56C17B4(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v14 = v3 + v9[5];
  return sub_1C584EFB0();
}

uint64_t sub_1C56B8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  sub_1C56466CC(a1 + *(v16 + 36), v9, &qword_1EC16EB18, &qword_1C586AF80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EB18, &qword_1C586AF80);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
}

uint64_t sub_1C56B8DD0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[5];
  sub_1C584EFC0();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[9];
  *(a2 + a1[8]) = 2;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  result = (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v11 = (a2 + a1[10]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1C56B8ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB10, type metadata accessor for WebPlacecardBridge.MUActionBarItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B8F6C()
{
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);

  return sub_1C584F160();
}

uint64_t sub_1C56B8FD8()
{
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);

  return sub_1C584F170();
}

uint64_t sub_1C56B9058()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD20);
  __swift_project_value_buffer(v0, qword_1EC18FD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACTION";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MENU";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B9244()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD38);
  __swift_project_value_buffer(v0, qword_1EC18FD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primary_action";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "secondary_actions";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B940C()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) + 24);
        type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
        sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C584F100();
      }

      else if (result == 2)
      {
        type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
        sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C584F0F0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B9560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C56B965C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
      sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
      sub_1C584F210();
    }

    v8 = v5 + *(type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) + 20);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56B965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC38, &qword_1C586B0B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  sub_1C56466CC(a1 + *(v16 + 24), v9, &qword_1EC16EC38, &qword_1C586B0B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC38, &qword_1C586B0B0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
}

uint64_t sub_1C56B9878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C56B9950(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB08, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B99F0()
{
  sub_1C56EF190(&qword_1EC16D740, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56B9A5C()
{
  sub_1C56EF190(&qword_1EC16D740, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56B9ADC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD50);
  __swift_project_value_buffer(v0, qword_1EC18FD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C586AE90;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "menu_item_id";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "display_name";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "symbol_image";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "app_artwork";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "url";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "groupData";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "action";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "attributes";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "is_inline";
  *(v23 + 8) = 9;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "icon";
  *(v25 + 1) = 4;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "item_size";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56B9ED8()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v3 = v0;
            v14 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 36);
          }

          else
          {
            v3 = v0;
            if (result == 4)
            {
              v8 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 40);
            }

            else
            {
              v5 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 44);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 28);
LABEL_5:
          v0 = v3;
          sub_1C584F0D0();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 32);
          goto LABEL_5;
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            v15 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 52);
            sub_1C584F080();
            break;
          case 10:
            v9 = v0;
            v13 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 56);
            type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
            v11 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon;
            v12 = &unk_1EC16D850;
LABEL_27:
            sub_1C56EF190(v12, v11);
            v0 = v9;
            sub_1C584F100();
            break;
          case 11:
            v6 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 60);
            sub_1C5703FD4();
            sub_1C584F090();
            break;
        }
      }

      else
      {
        if (result != 6)
        {
          if (result != 7)
          {
            sub_1C56F2204();
            sub_1C584F070();
            goto LABEL_6;
          }

          v9 = v0;
          v10 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 48);
          type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
          v11 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction;
          v12 = &qword_1EC16D5F8;
          goto LABEL_27;
        }

        type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
        sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        sub_1C584F0F0();
      }

LABEL_6:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BA200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v9 = result;
  v10 = (v3 + *(result + 28));
  if (v10[1])
  {
    v11 = *v10;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v12 = (v3 + v9[8]);
  if (v12[1])
  {
    v13 = *v12;
    sub_1C584F1F0();
  }

  v14 = (v3 + v9[9]);
  if (v14[1])
  {
    v15 = *v14;
    sub_1C584F1F0();
  }

  v16 = (v3 + v9[10]);
  if (v16[1])
  {
    v17 = *v16;
    sub_1C584F1F0();
  }

  sub_1C56E4AE0(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  if (*(*v3 + 16))
  {
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    sub_1C584F210();
  }

  sub_1C56BA480(v3, a1, a2, a3);
  if (*(v3[1] + 16))
  {
    sub_1C56F2204();
    sub_1C584F180();
  }

  sub_1C56DB148(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  sub_1C56BA69C(v3, a1, a2, a3);
  sub_1C56BA8B8(v3);
  v18 = v3 + v9[6];
  return sub_1C584EFB0();
}

uint64_t sub_1C56BA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(a1 + *(v16 + 48), v9, &qword_1EC16EB18, &qword_1C586AF80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EB18, &qword_1C586AF80);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
}

uint64_t sub_1C56BA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(a1 + *(v16 + 56), v9, &qword_1EC16EC40, &qword_1C586B0B8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC40, &qword_1C586B0B8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
}

uint64_t sub_1C56BA8B8(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  if (*(a1 + *(result + 60)) != 3)
  {
    v3 = *(a1 + *(result + 60));
    sub_1C5703FD4();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56BA944@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  sub_1C584EFC0();
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[v9];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = a1[12];
  v13 = &a2[a1[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  (*(*(v14 - 8) + 56))(&a2[v12], 1, 1, v14);
  v15 = a1[14];
  a2[a1[13]] = 2;
  v16 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  result = (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  a2[a1[15]] = 3;
  return result;
}

uint64_t sub_1C56BAA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56BAAE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C56BAB58(uint64_t a1, uint64_t a2))()
{
  result = GEOLocationCoordinate2DMake;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C56BABAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB00, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BAC4C()
{
  sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);

  return sub_1C584F160();
}

uint64_t sub_1C56BACB8()
{
  sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);

  return sub_1C584F170();
}

uint64_t sub_1C56BAD38()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD68);
  __swift_project_value_buffer(v0, qword_1EC18FD68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symbol_image";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_artwork";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "style";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAF8, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BB0A4()
{
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);

  return sub_1C584F160();
}

uint64_t sub_1C56BB110()
{
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);

  return sub_1C584F170();
}

uint64_t sub_1C56BB1BC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD80);
  __swift_project_value_buffer(v0, qword_1EC18FD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROUNDED_RECT";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "APP_CLIP";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB3F0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD98);
  __swift_project_value_buffer(v0, qword_1EC18FD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xCoordinate";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "yCoordinate";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "width";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB638()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0) + 24);
      }

      v0 = v3;
      sub_1C584F0A0();
LABEL_13:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BB724()
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = sub_1C584F1B0();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1C584F1B0();
  }

  v8 = (v0 + v3[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    sub_1C584F1B0();
  }

  v10 = (v0 + v3[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BB838@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56BB8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAF0, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BB988()
{
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);

  return sub_1C584F160();
}

uint64_t sub_1C56BB9F4()
{
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);

  return sub_1C584F170();
}

uint64_t sub_1C56BBA74()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FDB0);
  __swift_project_value_buffer(v0, qword_1EC18FDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C586AE30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "isRatingSuggestion";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isPhotoSuggestion";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "didTapSuggestion";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "didSelectDislike";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "disSelectLike";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56BBD00()
{
  result = sub_1C584F050();
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
          v3 = v0;
          v8 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      sub_1C584F080();
LABEL_15:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BBE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  return sub_1C584EFB0();
}

uint64_t sub_1C56BBF48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_1C56BBFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAE8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC080()
{
  sub_1C56EF190(&qword_1EC16F3C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);

  return sub_1C584F160();
}

uint64_t sub_1C56BC0EC()
{
  sub_1C56EF190(&qword_1EC16F3C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);

  return sub_1C584F170();
}

uint64_t sub_1C56BC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56BC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = (v4 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }

    return sub_1C584EFB0();
  }

  if (!v5)
  {
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BC32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAE0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC3CC()
{
  sub_1C56EF190(&qword_1EC16F3E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);

  return sub_1C584F160();
}

uint64_t sub_1C56BC438()
{
  sub_1C56EF190(&qword_1EC16F3E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);

  return sub_1C584F170();
}

uint64_t sub_1C56BC578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAD8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC618()
{
  sub_1C56EF190(&qword_1EC16F3F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);

  return sub_1C584F160();
}

uint64_t sub_1C56BC684()
{
  sub_1C56EF190(&qword_1EC16F3F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);

  return sub_1C584F170();
}

uint64_t sub_1C56BC7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAD0, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC864()
{
  sub_1C56EF190(&qword_1EC16F410, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);

  return sub_1C584F160();
}

uint64_t sub_1C56BC8D0()
{
  sub_1C56EF190(&qword_1EC16F410, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);

  return sub_1C584F170();
}

uint64_t sub_1C56BC97C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE10);
  __swift_project_value_buffer(v0, qword_1EC18FE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appleRatingCategory";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BCB44()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BCC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAC8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BCD1C()
{
  sub_1C56EF190(&qword_1EC16F428, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);

  return sub_1C584F160();
}

uint64_t sub_1C56BCD88()
{
  sub_1C56EF190(&qword_1EC16F428, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);

  return sub_1C584F170();
}

uint64_t sub_1C56BCE28()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v0 + *(result + 20));
    sub_1C5703E84();
    result = sub_1C584F1A0();
    if (v1)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BCEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t sub_1C56BCF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAC0, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD02C()
{
  sub_1C56EF190(&qword_1EC16D500, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);

  return sub_1C584F160();
}

uint64_t sub_1C56BD098()
{
  sub_1C56EF190(&qword_1EC16D500, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);

  return sub_1C584F170();
}

uint64_t sub_1C56BD114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56BD1C8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE40);
  __swift_project_value_buffer(v0, qword_1EC18FE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vendorId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributionType";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BD440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAB8, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD4E0()
{
  sub_1C56EF190(&qword_1EC16D6E0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56BD54C()
{
  sub_1C56EF190(&qword_1EC16D6E0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56BD5CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE58);
  __swift_project_value_buffer(v0, qword_1EC18FE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PLACE";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PUBLISHER";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BD7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56BD880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAB0, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD920()
{
  sub_1C56EF190(&qword_1EC16F450, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56BD98C()
{
  sub_1C56EF190(&qword_1EC16F450, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56BDA38()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE88);
  __swift_project_value_buffer(v0, qword_1EC18FE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "styleAttributes";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nightMode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transparent";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "icon_id";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BDC88()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v4 = v0;
          v7 = *(type metadata accessor for WebPlacecardBridge.MUIconArgument(0) + 28);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v6 = *(type metadata accessor for WebPlacecardBridge.MUIconArgument(0) + 32);
          sub_1C584F0E0();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for WebPlacecardBridge.MUIconArgument(0) + 20);
          type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
          sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
          sub_1C584F100();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridge.MUIconArgument(0) + 24);
LABEL_15:
          v0 = v4;
          sub_1C584F080();
        }
      }

LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BDDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C56BDF20(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
    if (*(v3 + v6[6]) != 2)
    {
      sub_1C584F190();
    }

    if (*(v3 + v6[7]) != 2)
    {
      sub_1C584F190();
    }

    v7 = (v3 + v6[8]);
    if ((v7[1] & 1) == 0)
    {
      v8 = *v7;
      sub_1C584F200();
    }

    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  sub_1C56466CC(a1 + *(v16 + 20), v9, &qword_1EC16EC48, &qword_1C586B0C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC48, &qword_1C586B0C0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
}

uint64_t sub_1C56BE13C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[5];
  v5 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v7) = 2;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1C56BE220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAA8, type metadata accessor for WebPlacecardBridge.MUIconArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE2C0()
{
  sub_1C56EF190(&qword_1EC16D828, type metadata accessor for WebPlacecardBridge.MUIconArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56BE32C()
{
  sub_1C56EF190(&qword_1EC16D828, type metadata accessor for WebPlacecardBridge.MUIconArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56BE3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1C56BE47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAA0, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE51C()
{
  sub_1C56EF190(&qword_1EC16D6C8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56BE588()
{
  sub_1C56EF190(&qword_1EC16D6C8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56BE654()
{
  if (!*(*v0 + 16) || (type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0), sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute), result = sub_1C584F210(), !v1))
  {
    v3 = v0 + *(type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0) + 20);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BE7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA98, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE868()
{
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);

  return sub_1C584F160();
}

uint64_t sub_1C56BE8D4()
{
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);

  return sub_1C584F170();
}

uint64_t sub_1C56BE968()
{
  result = MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C5896C20);
  qword_1EC18FEB8 = 0xD000000000000024;
  unk_1EC18FEC0 = 0x80000001C5894570;
  return result;
}

uint64_t sub_1C56BE9DC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F9C8);
  __swift_project_value_buffer(v0, qword_1EC18F9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BEBA4()
{
  result = type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = sub_1C584F200();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1C584F200();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BECE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA90, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BED84()
{
  sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);

  return sub_1C584F160();
}

uint64_t sub_1C56BEDF0()
{
  sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);

  return sub_1C584F170();
}

uint64_t sub_1C56BEE70()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEC8);
  __swift_project_value_buffer(v0, qword_1EC18FEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "photoIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "albumIndex";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF084()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0) + 28);
          sub_1C5703CE0();
          sub_1C584F090();
          goto LABEL_5;
        case 2:
          v4 = v0;
          v6 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0) + 24);
          break;
        case 1:
          v4 = v0;
          v5 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0) + 20);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v4;
      sub_1C584F0A0();
LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BF184()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = sub_1C584F1B0();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1C584F1B0();
  }

  if (*(v0 + *(v3 + 28)) != 2)
  {
    sub_1C5703CE0();
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BF294@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_1C56BF334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA88, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BF3D4()
{
  sub_1C56EF190(&qword_1EC16F488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);

  return sub_1C584F160();
}

uint64_t sub_1C56BF440()
{
  sub_1C56EF190(&qword_1EC16F488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);

  return sub_1C584F170();
}

uint64_t sub_1C56BF4C0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEE0);
  __swift_project_value_buffer(v0, qword_1EC18FEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PHOTO_TAP";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALBUM_TAP";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF6AC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEF8);
  __swift_project_value_buffer(v0, qword_1EC18FEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "listTitle";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relatedMapsId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originalMapsId";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF8C0()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0) + 28);
LABEL_10:
        v0 = 0;
        sub_1C584F0D0();
        break;
      case 2:
        sub_1C584F0C0();
        break;
      case 1:
        v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0) + 24);
        goto LABEL_10;
    }
  }
}

uint64_t sub_1C56BF984()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1C584F1D0();
  }

  v6 = (v0 + *(v3 + 28));
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  v8 = v0 + *(v3 + 20);
  return sub_1C584EFB0();
}

uint64_t sub_1C56BFA7C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[5];
  result = sub_1C584EFC0();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56BFB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA80, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BFBB8()
{
  sub_1C56EF190(&qword_1EC16F4A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);

  return sub_1C584F160();
}

uint64_t sub_1C56BFC24()
{
  sub_1C56EF190(&qword_1EC16F4A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);

  return sub_1C584F170();
}

uint64_t sub_1C56BFD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA78, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BFDD8()
{
  sub_1C56EF190(&qword_1EC16F4B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);

  return sub_1C584F160();
}

uint64_t sub_1C56BFE44()
{
  sub_1C56EF190(&qword_1EC16F4B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);

  return sub_1C584F170();
}

uint64_t sub_1C56BFEF0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF28);
  __swift_project_value_buffer(v0, qword_1EC18FF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "embedded_browser";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C00C0()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0) + 20);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0) + 24);
      sub_1C584F080();
    }
  }

  return result;
}

uint64_t sub_1C56C017C()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    sub_1C584F190();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C0288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA70, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0328()
{
  sub_1C56EF190(&qword_1EC16D5B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);

  return sub_1C584F160();
}

uint64_t sub_1C56C0394()
{
  sub_1C56EF190(&qword_1EC16D5B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);

  return sub_1C584F170();
}

uint64_t sub_1C56C0414()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF40);
  __swift_project_value_buffer(v0, qword_1EC18FF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "urls";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vendor_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C05E4()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C584F0C0();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0) + 24);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56C068C()
{
  if (!*(*v0 + 16) || (result = sub_1C584F1D0(), !v1))
  {
    result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
    v3 = result;
    v4 = (v0 + *(result + 24));
    if (v4[1])
    {
      v5 = *v4;
      result = sub_1C584F1F0();
      if (v1)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (!v1)
    {
LABEL_5:
      v6 = v0 + *(v3 + 20);
      return sub_1C584EFB0();
    }
  }

  return result;
}

uint64_t sub_1C56C07A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA68, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0844()
{
  sub_1C56EF190(&qword_1EC16F4D8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);

  return sub_1C584F160();
}

uint64_t sub_1C56C08B0()
{
  sub_1C56EF190(&qword_1EC16F4D8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);

  return sub_1C584F170();
}

uint64_t sub_1C56C0930()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF58);
  __swift_project_value_buffer(v0, qword_1EC18FF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "library_saved_state";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "show_add_to_library_modal";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C0AF8()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0) + 20);
        sub_1C57041CC();
        sub_1C584F090();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0) + 24);
        sub_1C584F080();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C0BDC()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 3)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v0 + *(result + 20));
    sub_1C57041CC();
    result = sub_1C584F1A0();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    sub_1C584F190();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 3;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1C56C0D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA60, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0DE0()
{
  sub_1C56EF190(&qword_1EC16D528, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);

  return sub_1C584F160();
}

uint64_t sub_1C56C0E4C()
{
  sub_1C56EF190(&qword_1EC16D528, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);

  return sub_1C584F170();
}

uint64_t sub_1C56C0F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA58, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1000()
{
  sub_1C56EF190(&qword_1EC16F4F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);

  return sub_1C584F160();
}

uint64_t sub_1C56C106C()
{
  sub_1C56EF190(&qword_1EC16F4F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);

  return sub_1C584F170();
}

uint64_t sub_1C56C1118()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF88);
  __swift_project_value_buffer(v0, qword_1EC18FF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "row_type";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "departure_sequence";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "departure_sequence_container";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop_info";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "transit_line";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "system";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADC8];
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "coordinate";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C1428()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v8 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 20);
            sub_1C5703F80();
            sub_1C584F090();
            break;
          case 2:
            v3 = v0;
            v10 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 24);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 28);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            v9 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 32);
          }

          else
          {
            v5 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 40);
LABEL_5:
          v0 = v3;
          sub_1C584F0D0();
          goto LABEL_6;
        }

        if (result == 7)
        {
          v7 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0) + 44);
          type metadata accessor for MULocation(0);
          sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);
          sub_1C584F100();
        }
      }

LABEL_6:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C1614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703F80();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if (v11[1])
  {
    v12 = *v11;
    sub_1C584F1F0();
  }

  v13 = (v5 + v10[7]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1C584F1F0();
  }

  v15 = (v5 + v10[8]);
  if (v15[1])
  {
    v16 = *v15;
    sub_1C584F1F0();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C56C17B4(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C56C1830(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56C1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for MULocation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  sub_1C56466CC(a1 + *(v16 + 44), v9, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for MULocation);
}

uint64_t sub_1C56C1A4C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1[11];
  v13 = type metadata accessor for MULocation(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_1C56C1B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA50, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1BEC()
{
  sub_1C56EF190(&qword_1EC16F510, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);

  return sub_1C584F160();
}

uint64_t sub_1C56C1C58()
{
  sub_1C56EF190(&qword_1EC16F510, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);

  return sub_1C584F170();
}

uint64_t sub_1C56C1CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C1DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA48, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1E94()
{
  sub_1C56EF190(&qword_1EC16F528, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);

  return sub_1C584F160();
}

uint64_t sub_1C56C1F00()
{
  sub_1C56EF190(&qword_1EC16F528, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);

  return sub_1C584F170();
}

uint64_t sub_1C56C1F7C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FFB8);
  __swift_project_value_buffer(v0, qword_1EC18FFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_collection";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attribution";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C2198()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0) + 24);
LABEL_5:
        v0 = v3;
        sub_1C584F0D0();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v5 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0) + 20);
        sub_1C5703C8C();
        sub_1C584F090();
      }

LABEL_6:
      result = sub_1C584F050();
    }

    v3 = v0;
    v6 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1C56C2298()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 4)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v8 = *(v0 + *(result + 20));
    sub_1C5703C8C();
    result = sub_1C584F1A0();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + *(v3 + 24));
  if (v4[1])
  {
    v5 = *v4;
    sub_1C584F1F0();
  }

  v6 = (v0 + *(v3 + 28));
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C239C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 4;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56C2430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA40, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C24D0()
{
  sub_1C56EF190(&qword_1EC16F540, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);

  return sub_1C584F160();
}

uint64_t sub_1C56C253C()
{
  sub_1C56EF190(&qword_1EC16F540, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);

  return sub_1C584F170();
}

uint64_t sub_1C56C25BC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FFD0);
  __swift_project_value_buffer(v0, qword_1EC18FFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOW_PUBLISHER";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ADD_GUIDE_TO_LIBRARY";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SHARE_PUBLISHER_GUIDE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_1C584F0A0();
    }
  }

  return result;
}

uint64_t sub_1C56C28D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = (v4 + *(result + 20));
  if (v7[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v8 = *v7;
    result = sub_1C584F1B0();
    if (v5)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C29E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA38, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C2A88()
{
  sub_1C56EF190(&qword_1EC16F558, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);

  return sub_1C584F160();
}

uint64_t sub_1C56C2AF4()
{
  sub_1C56EF190(&qword_1EC16F558, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);

  return sub_1C584F170();
}

uint64_t sub_1C56C2BC0()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0) + 20);
        type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
        sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  sub_1C56466CC(a1 + *(v16 + 20), v9, &qword_1EC16EC30, &qword_1C586B0A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
}

uint64_t sub_1C56C2F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA30, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C2FE0()
{
  sub_1C56EF190(&qword_1EC16F570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);

  return sub_1C584F160();
}

uint64_t sub_1C56C304C()
{
  sub_1C56EF190(&qword_1EC16F570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);

  return sub_1C584F170();
}

uint64_t sub_1C56C30CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190018);
  __swift_project_value_buffer(v0, qword_1EC190018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "bundleId";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C3354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA28, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C33F4()
{
  sub_1C56EF190(&qword_1EC16F588, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);

  return sub_1C584F160();
}

uint64_t sub_1C56C3460()
{
  sub_1C56EF190(&qword_1EC16F588, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);

  return sub_1C584F170();
}

uint64_t sub_1C56C350C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190030);
  __swift_project_value_buffer(v0, qword_1EC190030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vendor_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C36DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v11 = *(a4(0) + 24);
      a5();
      sub_1C584F090();
    }
  }

  return result;
}

uint64_t sub_1C56C37CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  result = a4(0);
  v9 = result;
  v10 = (v5 + *(result + 20));
  if (v10[1])
  {
    v11 = *v10;
    result = sub_1C584F1F0();
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

  if (*(v5 + *(v9 + 24)) != 2)
  {
    a5(result);
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C38C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1C56C39B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA20, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C3A50()
{
  sub_1C56EF190(&qword_1EC16F5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);

  return sub_1C584F160();
}

uint64_t sub_1C56C3ABC()
{
  sub_1C56EF190(&qword_1EC16F5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);

  return sub_1C584F170();
}

uint64_t sub_1C56C3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1C56C3C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA18, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C3CA4()
{
  sub_1C56EF190(&qword_1EC16D620, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56C3D10()
{
  sub_1C56EF190(&qword_1EC16D620, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56C3DBC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190060);
  __swift_project_value_buffer(v0, qword_1EC190060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "top";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t sub_1C56C40D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA10, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4170()
{
  sub_1C56EF190(&qword_1EC16D650, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);

  return sub_1C584F160();
}

uint64_t sub_1C56C41DC()
{
  sub_1C56EF190(&qword_1EC16D650, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);

  return sub_1C584F170();
}

uint64_t sub_1C56C431C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA08, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C43BC()
{
  sub_1C56EF190(&qword_1EC16F5C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);

  return sub_1C584F160();
}

uint64_t sub_1C56C4428()
{
  sub_1C56EF190(&qword_1EC16F5C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);

  return sub_1C584F170();
}

uint64_t sub_1C56C44F4()
{
  if (!*(*v0 + 16) || (type metadata accessor for MUSendToDevice(0), sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice), result = sub_1C584F210(), !v1))
  {
    v3 = v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0) + 20);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA00, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4708()
{
  sub_1C56EF190(&qword_1EC16F5E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);

  return sub_1C584F160();
}

uint64_t sub_1C56C4774()
{
  sub_1C56EF190(&qword_1EC16F5E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);

  return sub_1C584F170();
}

uint64_t sub_1C56C4808()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900A8);
  __swift_project_value_buffer(v0, qword_1EC1900A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "listTitle";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attribution";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "placeCollection";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C4A50()
{
  while (1)
  {
    result = sub_1C584F050();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_1C584F0C0();
      }
    }

    else if (result == 1)
    {
      v3 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0) + 32);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1C56C4B20()
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v3 = result;
  v4 = (v0 + *(result + 32));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v0[1] + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v0[2] + 16))
  {
    sub_1C584F1D0();
  }

  v6 = v0 + *(v3 + 28);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C4C34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  a2[2] = v4;
  v5 = a2 + *(a1 + 28);
  result = sub_1C584EFC0();
  v7 = (a2 + *(a1 + 32));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56C4C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56C4D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C56C4D84(uint64_t a1, uint64_t a2))()
{
  result = GEOLocationCoordinate2DMake;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C56C4DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4E78()
{
  sub_1C56EF190(&qword_1EC16F5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);

  return sub_1C584F160();
}

uint64_t sub_1C56C4EE4()
{
  sub_1C56EF190(&qword_1EC16F5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);

  return sub_1C584F170();
}

uint64_t sub_1C56C4F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      sub_1C584F080();
    }
  }

  return result;
}

uint64_t sub_1C56C5018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  if (*(v4 + *(result + 20)) == 2)
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v5)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C5128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9F0, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C51C8()
{
  sub_1C56EF190(&qword_1EC16D580, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);

  return sub_1C584F160();
}

uint64_t sub_1C56C5234()
{
  sub_1C56EF190(&qword_1EC16D580, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);

  return sub_1C584F170();
}

uint64_t sub_1C56C52E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900D8);
  __swift_project_value_buffer(v0, qword_1EC1900D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C54A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *v8;
    result = sub_1C584F1B0();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C5608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9E8, type metadata accessor for MULocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C56AC()
{
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);

  return sub_1C584F160();
}

uint64_t sub_1C56C571C()
{
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);

  return sub_1C584F170();
}

uint64_t sub_1C56C57CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900F0);
  __swift_project_value_buffer(v0, qword_1EC1900F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "display_name";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_connectors";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C5994()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for MUVGVehicle(0) + 24);
        sub_1C584F0D0();
      }

      else if (result == 2)
      {
        sub_1C56F4368();
        sub_1C584F070();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C5A64()
{
  result = type metadata accessor for MUVGVehicle(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1C56F4368();
    sub_1C584F180();
  }

  v6 = v0 + *(v3 + 20);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C5BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9E0, type metadata accessor for MUVGVehicle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C5C48()
{
  sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle);

  return sub_1C584F160();
}

uint64_t sub_1C56C5CB4()
{
  sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle);

  return sub_1C584F170();
}

uint64_t sub_1C56C5D40(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C584F250();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C586AE50;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "postal_addresses";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v11 = sub_1C584F230();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "phone_numbers";
  *(v13 + 8) = 13;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "email_addresses";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v12();
  v16 = (v8 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "websites";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v12();
  return sub_1C584F240();
}

uint64_t sub_1C56C5F8C()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue);
    result = sub_1C584F210();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue);
    result = sub_1C584F210();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue);
    v4 = v2;
    result = sub_1C584F210();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[3] + 16) || (type metadata accessor for MUContactLabeledValue(0), sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue), result = sub_1C584F210(), !v4))
  {
    v5 = v0 + *(type metadata accessor for MUContact(0) + 32);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t (*sub_1C56C61FC(uint64_t a1, uint64_t a2))()
{
  result = GEOLocationCoordinate2DMake;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C56C6294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9D8, type metadata accessor for MUContact);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C6334()
{
  sub_1C56EF190(&qword_1EC16F630, type metadata accessor for MUContact);

  return sub_1C584F160();
}

uint64_t sub_1C56C63A0()
{
  sub_1C56EF190(&qword_1EC16F630, type metadata accessor for MUContact);

  return sub_1C584F170();
}

uint64_t sub_1C56C6474()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190120);
  __swift_project_value_buffer(v0, qword_1EC190120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "identifier";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C6688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v10 = *(a4(0) + 28);
LABEL_3:
        v4 = 0;
        sub_1C584F0D0();
        break;
      case 2:
        v6 = *(a4(0) + 24);
        goto LABEL_3;
      case 1:
        v9 = *(a4(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_1C56C675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    v9 = *v8;
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  v10 = (v4 + *(v7 + 24));
  if (v10[1])
  {
    v11 = *v10;
    sub_1C584F1F0();
  }

  v12 = (v4 + *(v7 + 28));
  if (v12[1])
  {
    v13 = *v12;
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C68BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9D0, type metadata accessor for MUContactLabeledValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C695C()
{
  sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue);

  return sub_1C584F160();
}

uint64_t sub_1C56C69C8()
{
  sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue);

  return sub_1C584F170();
}

uint64_t sub_1C56C6A74()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190138);
  __swift_project_value_buffer(v0, qword_1EC190138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "region_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurement_system";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "temperature_unit";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "first_weekday";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "prefers_24_hour_time";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "map_style";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C6D40()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v8 = *(type metadata accessor for MUUserPreferences(0) + 32);
            sub_1C584F0B0();
            break;
          case 5:
            v9 = *(type metadata accessor for MUUserPreferences(0) + 36);
            sub_1C584F080();
            break;
          case 6:
            v3 = v0;
            v6 = *(type metadata accessor for MUUserPreferences(0) + 40);
            sub_1C5703B90();
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = *(type metadata accessor for MUUserPreferences(0) + 20);
            sub_1C584F0D0();
            break;
          case 2:
            v3 = v0;
            v4 = *(type metadata accessor for MUUserPreferences(0) + 24);
            sub_1C5703C38();
LABEL_5:
            v0 = v3;
            sub_1C584F090();
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for MUUserPreferences(0) + 28);
            sub_1C5703BE4();
            goto LABEL_5;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C6F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for MUUserPreferences(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6]) != 4)
  {
    v15 = *(v5 + v10[6]);
    sub_1C5703C38();
    sub_1C584F1A0();
  }

  if (*(v5 + v10[7]) != 3)
  {
    v16 = *(v5 + v10[7]);
    sub_1C5703BE4();
    sub_1C584F1A0();
  }

  v13 = (v5 + v10[8]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    sub_1C584F1C0();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for MUUserPreferences);
  sub_1C56C711C(v5);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56C711C(uint64_t a1)
{
  result = type metadata accessor for MUUserPreferences(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    v3 = *(a1 + *(result + 40));
    sub_1C5703B90();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56C71A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 4;
  v7 = a1[8];
  *(a2 + a1[7]) = 3;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 4;
  return result;
}

uint64_t sub_1C56C725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9C8, type metadata accessor for MUUserPreferences);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C72FC()
{
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences);

  return sub_1C584F160();
}

uint64_t sub_1C56C7368()
{
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences);

  return sub_1C584F170();
}

uint64_t sub_1C56C73E8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190150);
  __swift_project_value_buffer(v0, qword_1EC190150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEASUREMENT_SYSTEM_UNSPECIFIED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "METRIC";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "US";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UK";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7648()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190168);
  __swift_project_value_buffer(v0, qword_1EC190168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TEMPERATURE_UNIT_UNSPECIFIED";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CELSIUS";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "FAHRENHEIT";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C787C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190180);
  __swift_project_value_buffer(v0, qword_1EC190180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MAP_STYLE_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STANDARD";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SATELLITE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOOKAROUND";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7AE4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190198);
  __swift_project_value_buffer(v0, qword_1EC190198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol_name";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "device_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "model";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7D44()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for MUSendToDevice(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for MUSendToDevice(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for MUSendToDevice(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for MUSendToDevice(0) + 24);
      }

      v0 = v3;
      sub_1C584F0D0();
LABEL_13:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C7E30()
{
  result = type metadata accessor for MUSendToDevice(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_1C584F1F0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1C584F1F0();
  }

  v8 = (v0 + v3[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1C584F1F0();
  }

  v10 = (v0 + v3[8]);
  if (v10[1])
  {
    v11 = *v10;
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C7F40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
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
  return result;
}

uint64_t sub_1C56C7FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9C0, type metadata accessor for MUSendToDevice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C8084()
{
  sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice);

  return sub_1C584F160();
}

uint64_t sub_1C56C80F0()
{
  sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice);

  return sub_1C584F170();
}

uint64_t sub_1C56C8170()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901B0);
  __swift_project_value_buffer(v0, qword_1EC1901B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C586AEB0;
  v4 = v25 + v3;
  v5 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v5 = "context";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "icon";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "amp_artwork";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attribution_data";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "refreshed_map_item";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "transit_labels";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "nearby_places";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "routeSnapshot";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v23 = "method";
  *(v23 + 8) = 6;
  *(v23 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56C8508()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = (v3 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels) = MEMORY[0x1E69E7CC0];
  v13 = (v3 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  result = (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  qword_1EC177430 = v3;
  return result;
}

uint64_t sub_1C56C86F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v75 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v74 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v72 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v71 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v67 - v22;
  v24 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v67 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v28 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v68 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v30 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v69 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v32 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v70 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  *(v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels) = MEMORY[0x1E69E7CC0];
  v33 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v73 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v36 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v37, v23, &qword_1EC16EC58, &unk_1C586B0D0);
  swift_beginAccess();
  sub_1C56ECE38(v23, v1 + v24, &qword_1EC16EC58, &unk_1C586B0D0);
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  swift_beginAccess();
  v41 = v26[1];
  *v26 = v39;
  v26[1] = v40;

  v42 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  v43 = v71;
  sub_1C56466CC(a1 + v42, v71, &qword_1EC170A90, &unk_1C58783D0);
  v44 = v67;
  swift_beginAccess();
  sub_1C56ECE38(v43, v1 + v44, &qword_1EC170A90, &unk_1C58783D0);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v46 = v72;
  sub_1C56466CC(a1 + v45, v72, &unk_1EC170A60, &qword_1C586B0E0);
  v47 = v68;
  swift_beginAccess();
  sub_1C56ECE38(v46, v1 + v47, &unk_1EC170A60, &qword_1C586B0E0);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v49 = v74;
  sub_1C56466CC(a1 + v48, v74, &qword_1EC16EC60, &qword_1C586B0E8);
  v50 = v69;
  swift_beginAccess();
  sub_1C56ECE38(v49, v1 + v50, &qword_1EC16EC60, &qword_1C586B0E8);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v70;
  swift_beginAccess();
  v54 = *(v1 + v53);
  *(v1 + v53) = v52;

  v55 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  swift_beginAccess();
  v58 = v33[1];
  *v33 = v57;
  v33[1] = v56;

  v59 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  swift_beginAccess();
  v62 = v34[1];
  *v34 = v61;
  v34[1] = v60;

  v63 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  v64 = v75;
  sub_1C56466CC(a1 + v63, v75, &qword_1EC16EC68, &qword_1C586B0F0);

  v65 = v73;
  swift_beginAccess();
  sub_1C56ECE38(v64, v1 + v65, &qword_1EC16EC68, &qword_1C586B0F0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56C8E20()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context, &qword_1EC16EC58, &unk_1C586B0D0);
  v1 = *(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem, &qword_1EC16EC60, &qword_1C586B0E8);
  v2 = *(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels);

  v3 = *(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method, &qword_1EC16EC68, &qword_1C586B0F0);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56C8F60()
{
  v2 = v0;
  v3 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1C56C86F0(v6);
    *(v2 + v3) = v10;
  }

  result = sub_1C584F050();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          v13 = v1;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork;
            v15 = &unk_1EC16F708;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData;
            v15 = &unk_1EC16D300;
          }
        }

        else
        {
          if (result != 1)
          {
            if (result != 2)
            {
              goto LABEL_27;
            }

LABEL_25:
            swift_beginAccess();
            sub_1C584F0D0();
            goto LABEL_26;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUContext;
          v15 = &unk_1EC16D188;
        }

        goto LABEL_24;
      }

      if (result > 6)
      {
        break;
      }

      if (result == 5)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
        v14 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem;
        v15 = &unk_1EC16D268;
LABEL_24:
        sub_1C56EF190(v15, v14);
        v1 = v13;
        sub_1C584F100();
        goto LABEL_26;
      }

      swift_beginAccess();
      sub_1C584F0C0();
LABEL_26:
      swift_endAccess();
LABEL_27:
      result = sub_1C584F050();
    }

    if (result == 7 || result == 8)
    {
      goto LABEL_25;
    }

    if (result != 12)
    {
      goto LABEL_27;
    }

    v13 = v1;
    swift_beginAccess();
    type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
    v14 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall;
    v15 = &unk_1EC16D438;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1C56C933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for WebPlacecardBridgeReply(0) + 20));
  result = sub_1C56C9564(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
    swift_beginAccess();
    if (v10[1])
    {
      v11 = *v10;
      v12 = v10[1];

      sub_1C584F1F0();
    }

    sub_1C56C978C(v8, a1, a2, a3);
    sub_1C56C99B4(v8, a1, a2, a3);
    sub_1C56C9BDC(v8, a1, a2, a3);
    v13 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
    swift_beginAccess();
    if (*(*(v8 + v13) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v8, a1, a2, a3, &OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
    sub_1C56D8394(v8, a1, a2, a3, &OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
    sub_1C56C9E04(v8, a1, a2, a3);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C9564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC58, &unk_1C586B0D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC58, &unk_1C586B0D0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUContext);
}

uint64_t sub_1C56C978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC170A90, &unk_1C58783D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC170A90, &unk_1C58783D0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
}

uint64_t sub_1C56C99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &unk_1EC170A60, &qword_1C586B0E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &unk_1EC170A60, &qword_1C586B0E0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
}

uint64_t sub_1C56C9BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC60, &qword_1C586B0E8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC60, &qword_1C586B0E8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
}

uint64_t sub_1C56C9E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC68, &qword_1C586B0F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC68, &qword_1C586B0F0);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

BOOL sub_1C56CA02C(uint64_t a1, uint64_t a2)
{
  v193 = a2;
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v165 = *(v3 - 8);
  v166 = v3;
  v4 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v162 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC90, &qword_1C5875EA0);
  v7 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164, v8);
  v167 = &v161 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v163 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v175 = &v161 - v16;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v172 = *(v17 - 8);
  v173 = v17;
  v18 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v168 = (&v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC98, &qword_1C5875EA8);
  v21 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171, v22);
  v174 = &v161 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v169 = (&v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v29);
  v177 = &v161 - v30;
  v31 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v180 = *(v31 - 8);
  v181 = v31;
  v32 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v170 = (&v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCA0, &qword_1C5875EB0);
  v35 = *(*(v179 - 8) + 64);
  MEMORY[0x1EEE9AC00](v179, v36);
  v182 = &v161 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v39 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v176 = (&v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41, v43);
  v184 = &v161 - v44;
  v45 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v186 = *(v45 - 8);
  v187 = v45;
  v46 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v45, v47);
  v178 = &v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCA8, &qword_1C5875EB8);
  v49 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185, v50);
  v188 = &v161 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v53 = *(*(v52 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v52 - 8, v54);
  v183 = &v161 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v57);
  v190 = &v161 - v58;
  v59 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  v191 = *(v59 - 8);
  v192 = v59;
  v60 = *(v191 + 8);
  MEMORY[0x1EEE9AC00](v59, v61);
  v189 = &v161 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCB0, &qword_1C5875EC0);
  v64 = v63 - 8;
  v65 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63, v66);
  v68 = &v161 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  v70 = *(*(v69 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v69 - 8, v71);
  v74 = &v161 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v75);
  v77 = &v161 - v76;
  v78 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v78, v77, &qword_1EC16EC58, &unk_1C586B0D0);
  v79 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v80 = v193;
  swift_beginAccess();
  v81 = *(v64 + 56);
  sub_1C56466CC(v77, v68, &qword_1EC16EC58, &unk_1C586B0D0);
  v82 = v80 + v79;
  v83 = v191;
  v84 = v192;
  sub_1C56466CC(v82, &v68[v81], &qword_1EC16EC58, &unk_1C586B0D0);
  v85 = *(v83 + 48);
  if (v85(v68, 1, v84) == 1)
  {

    sub_1C5625230(v77, &qword_1EC16EC58, &unk_1C586B0D0);
    if (v85(&v68[v81], 1, v84) == 1)
    {
      sub_1C5625230(v68, &qword_1EC16EC58, &unk_1C586B0D0);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v68, v74, &qword_1EC16EC58, &unk_1C586B0D0);
  v86 = v74;
  if (v85(&v68[v81], 1, v84) == 1)
  {

    sub_1C5625230(v77, &qword_1EC16EC58, &unk_1C586B0D0);
    sub_1C56EC248(v74, type metadata accessor for WebPlacecardBridgeReply.MUContext);
LABEL_6:
    v87 = &qword_1EC16FCB0;
    v88 = &qword_1C5875EC0;
    v89 = v68;
LABEL_7:
    sub_1C5625230(v89, v87, v88);
    goto LABEL_8;
  }

  v191 = v68;
  v91 = v189;
  sub_1C56EC178(&v68[v81], v189, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  v92 = *(v84 + 20);
  v93 = *(v86 + v92);
  v94 = *(v91 + v92);

  if (v93 != v94)
  {

    v95 = sub_1C56D05E0(v93, v94);

    if ((v95 & 1) == 0)
    {
      sub_1C56EC248(v91, type metadata accessor for WebPlacecardBridgeReply.MUContext);
      sub_1C5625230(v77, &qword_1EC16EC58, &unk_1C586B0D0);
      sub_1C56EC248(v86, type metadata accessor for WebPlacecardBridgeReply.MUContext);
      v89 = v191;
      v87 = &qword_1EC16EC58;
      v88 = &unk_1C586B0D0;
      goto LABEL_7;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
  v96 = sub_1C584F620();
  sub_1C56EC248(v91, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C5625230(v77, &qword_1EC16EC58, &unk_1C586B0D0);
  sub_1C56EC248(v86, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C5625230(v191, &qword_1EC16EC58, &unk_1C586B0D0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v97 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = (v80 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v101 = v100[1];
  if (v99)
  {
    v102 = v190;
    if (!v101 || (v98 != *v100 || v99 != v101) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v102 = v190;
    if (v101)
    {
      goto LABEL_8;
    }
  }

  v103 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  sub_1C56466CC(a1 + v103, v102, &qword_1EC170A90, &unk_1C58783D0);
  v104 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  v105 = *(v185 + 48);
  v106 = v188;
  sub_1C56466CC(v102, v188, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C56466CC(v80 + v104, v106 + v105, &qword_1EC170A90, &unk_1C58783D0);
  v107 = v187;
  v108 = *(v186 + 48);
  if (v108(v106, 1, v187) == 1)
  {
    sub_1C5625230(v102, &qword_1EC170A90, &unk_1C58783D0);
    if (v108(v106 + v105, 1, v107) == 1)
    {
      sub_1C5625230(v106, &qword_1EC170A90, &unk_1C58783D0);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v109 = v183;
  sub_1C56466CC(v106, v183, &qword_1EC170A90, &unk_1C58783D0);
  if (v108(v106 + v105, 1, v107) == 1)
  {
    sub_1C5625230(v190, &qword_1EC170A90, &unk_1C58783D0);
    sub_1C56EC248(v109, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
LABEL_27:
    v87 = &qword_1EC16FCA8;
    v88 = &qword_1C5875EB8;
    v89 = v106;
    goto LABEL_7;
  }

  v110 = v106 + v105;
  v111 = v178;
  sub_1C56EC178(v110, v178, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  v112 = sub_1C56EE53C(v109, v111);
  sub_1C56EC248(v111, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C5625230(v190, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C56EC248(v109, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C5625230(v106, &qword_1EC170A90, &unk_1C58783D0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_29:
  v113 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v114 = v184;
  sub_1C56466CC(a1 + v113, v184, &unk_1EC170A60, &qword_1C586B0E0);
  v115 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v116 = *(v179 + 48);
  v117 = v182;
  sub_1C56466CC(v114, v182, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C56466CC(v80 + v115, v117 + v116, &unk_1EC170A60, &qword_1C586B0E0);
  v118 = v181;
  v119 = *(v180 + 48);
  if (v119(v117, 1, v181) == 1)
  {
    sub_1C5625230(v114, &unk_1EC170A60, &qword_1C586B0E0);
    if (v119(v117 + v116, 1, v118) == 1)
    {
      sub_1C5625230(v117, &unk_1EC170A60, &qword_1C586B0E0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v120 = v176;
  sub_1C56466CC(v117, v176, &unk_1EC170A60, &qword_1C586B0E0);
  if (v119(v117 + v116, 1, v118) == 1)
  {
    sub_1C5625230(v184, &unk_1EC170A60, &qword_1C586B0E0);
    sub_1C56EC248(v120, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
LABEL_34:
    v87 = &qword_1EC16FCA0;
    v88 = &qword_1C5875EB0;
    v89 = v117;
    goto LABEL_7;
  }

  v121 = v117 + v116;
  v122 = v170;
  sub_1C56EC178(v121, v170, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  v123 = sub_1C56ED8B0(v120, v122);
  sub_1C56EC248(v122, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C5625230(v184, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C56EC248(v120, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C5625230(v117, &unk_1EC170A60, &qword_1C586B0E0);
  if ((v123 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v124 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v125 = v177;
  sub_1C56466CC(a1 + v124, v177, &qword_1EC16EC60, &qword_1C586B0E8);
  v126 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v127 = *(v171 + 48);
  v128 = v174;
  sub_1C56466CC(v125, v174, &qword_1EC16EC60, &qword_1C586B0E8);
  sub_1C56466CC(v80 + v126, v128 + v127, &qword_1EC16EC60, &qword_1C586B0E8);
  v129 = v173;
  v130 = *(v172 + 48);
  if (v130(v128, 1, v173) == 1)
  {
    sub_1C5625230(v125, &qword_1EC16EC60, &qword_1C586B0E8);
    v131 = v130(v128 + v127, 1, v129);
    v132 = v175;
    if (v131 == 1)
    {
      sub_1C5625230(v128, &qword_1EC16EC60, &qword_1C586B0E8);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v133 = v169;
  sub_1C56466CC(v128, v169, &qword_1EC16EC60, &qword_1C586B0E8);
  v134 = v130(v128 + v127, 1, v129);
  v132 = v175;
  if (v134 == 1)
  {
    sub_1C5625230(v177, &qword_1EC16EC60, &qword_1C586B0E8);
    sub_1C56EC248(v133, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
LABEL_41:
    v87 = &qword_1EC16FC98;
    v88 = &qword_1C5875EA8;
    v89 = v128;
    goto LABEL_7;
  }

  v135 = v128 + v127;
  v136 = v168;
  sub_1C56EC178(v135, v168, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  v137 = sub_1C56ED7BC(v133, v136);
  sub_1C56EC248(v136, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C5625230(v177, &qword_1EC16EC60, &qword_1C586B0E8);
  sub_1C56EC248(v133, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C5625230(v128, &qword_1EC16EC60, &qword_1C586B0E8);
  if ((v137 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_43:
  v138 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  v139 = *(a1 + v138);
  v140 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  if ((sub_1C56EA440(v139, *(v80 + v140)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v141 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v142 = *v141;
  v143 = v141[1];
  v144 = (v80 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v145 = v144[1];
  if (v143)
  {
    if (!v145 || (v142 != *v144 || v143 != v145) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v145)
  {
    goto LABEL_8;
  }

  v146 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  v149 = (v80 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v150 = v149[1];
  if (v148)
  {
    if (v150 && (v147 == *v149 && v148 == v150 || (sub_1C584FDC0() & 1) != 0))
    {
      goto LABEL_58;
    }

LABEL_8:

    return 0;
  }

  if (v150)
  {
    goto LABEL_8;
  }

LABEL_58:
  v151 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  sub_1C56466CC(a1 + v151, v132, &qword_1EC16EC68, &qword_1C586B0F0);
  v152 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  v153 = *(v164 + 48);
  v154 = v167;
  sub_1C56466CC(v132, v167, &qword_1EC16EC68, &qword_1C586B0F0);
  sub_1C56466CC(v80 + v152, v154 + v153, &qword_1EC16EC68, &qword_1C586B0F0);
  v155 = v166;
  v156 = *(v165 + 48);
  if (v156(v154, 1, v166) == 1)
  {

    sub_1C5625230(v132, &qword_1EC16EC68, &qword_1C586B0F0);
    if (v156(v154 + v153, 1, v155) == 1)
    {
      sub_1C5625230(v154, &qword_1EC16EC68, &qword_1C586B0F0);
      return 1;
    }

    goto LABEL_63;
  }

  v157 = v163;
  sub_1C56466CC(v154, v163, &qword_1EC16EC68, &qword_1C586B0F0);
  if (v156(v154 + v153, 1, v155) == 1)
  {

    sub_1C5625230(v132, &qword_1EC16EC68, &qword_1C586B0F0);
    sub_1C56EC248(v157, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
LABEL_63:
    sub_1C5625230(v154, &qword_1EC16FC90, &qword_1C5875EA0);
    return 0;
  }

  v158 = v154 + v153;
  v159 = v162;
  sub_1C56EC178(v158, v162, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  v160 = sub_1C56EEC48(v157, v159);

  sub_1C56EC248(v159, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C5625230(v132, &qword_1EC16EC68, &qword_1C586B0F0);
  sub_1C56EC248(v157, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C5625230(v154, &qword_1EC16EC68, &qword_1C586B0F0);
  return (v160 & 1) != 0;
}

uint64_t sub_1C56CB568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9B8, type metadata accessor for WebPlacecardBridgeReply);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56CB608()
{
  sub_1C56EF190(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);

  return sub_1C584F160();
}

uint64_t sub_1C56CB674()
{
  sub_1C56EF190(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);

  return sub_1C584F170();
}

uint64_t sub_1C56CB734()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901C8);
  __swift_project_value_buffer(v0, qword_1EC1901C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C586AE30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "unspecified";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "phone";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "pad";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "mac";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "vision";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CB9DC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901E0);
  __swift_project_value_buffer(v0, qword_1EC1901E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "Maps";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Safari";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Siri";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Spotlight";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56CBC50()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F920);
  __swift_project_value_buffer(v0, qword_1EC18F920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C586AEC0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "handleCardExpansion";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "updateEtaProvider";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "updateUserData";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "updateDirectionsMetadata";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "handleMenuItemTap";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "updateVGVehicle";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "updatePlacecardOfflineMapProvider";
  *(v19 + 1) = 33;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "handleNativeUITap";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "updatePlacecard";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cleanPlacecard";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "webViewIsCurrent";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "updateUserPreferences";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 1000;
  *v30 = "providePerfMarkers";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CC0E8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F848);
  __swift_project_value_buffer(v0, qword_1EC18F848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C586AE60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "MUOfflineMapDownloadStateNotDownloaded";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "MUOfflineMapDownloadStateWaiting";
  *(v8 + 8) = 32;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MUOfflineMapDownloadStatePaused";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "MUOfflineMapDownloadStateFailed";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "MUOfflineMapDownloadStateDownloadInProgress";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "MUOfflineMapDownloadStateFullyDownloaded";
  *(v16 + 1) = 40;
  v16[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56CC3D0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901F8);
  __swift_project_value_buffer(v0, qword_1EC1901F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1C586AED0;
  v4 = v70 + v3;
  v5 = v70 + v3 + v1[14];
  *(v70 + v3) = 1;
  *v5 = "locale";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "userLocation";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "uiIdiom";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "osVersion";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "environment";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "place";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "formattedAddressLines";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "locationAddress";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "userData";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "placeItemOption";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "formattedPhoneNumber";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "userCanEdit";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "canShowOpenFindMyAction";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "canShowRequestLocation";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "showMoreButton";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "canShowDownloadOffline";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "etaProvider";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "directionsMetadata";
  *(v39 + 1) = 18;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "savedStateOfPlace";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "webModuleBaseUrl";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "debug_options";
  *(v45 + 1) = 13;
  v45[16] = 2;
  v46 = *MEMORY[0x1E69AADE8];
  v8();
  v47 = (v4 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "transitAttributionUrl";
  *(v48 + 1) = 21;
  v48[16] = 2;
  v8();
  v49 = (v4 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "vehicles";
  *(v50 + 1) = 8;
  v50[16] = 2;
  v8();
  v51 = (v4 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "place_item";
  *(v52 + 1) = 10;
  v52[16] = 2;
  v8();
  v53 = (v4 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "placecard_offline_map_provider";
  *(v54 + 1) = 30;
  v54[16] = 2;
  v8();
  v55 = (v4 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "feature_flags";
  *(v56 + 1) = 13;
  v56[16] = 2;
  v8();
  v57 = (v4 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "countryCode";
  *(v58 + 1) = 11;
  v58[16] = 2;
  v8();
  v59 = (v4 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "isDeveloperPlacecard";
  *(v60 + 1) = 20;
  v60[16] = 2;
  v8();
  v61 = (v4 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "bundleIdentifier";
  *(v62 + 1) = 16;
  v62[16] = 2;
  v8();
  v63 = (v4 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "user_preferences";
  *(v64 + 1) = 16;
  v64[16] = 2;
  v8();
  v65 = (v4 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "canMakeCalls";
  *(v66 + 1) = 12;
  v66[16] = 2;
  v8();
  v67 = (v4 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "send_to_devices";
  *(v68 + 1) = 15;
  v68[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CCD18()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v5 = type metadata accessor for MULocation(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom) = 5;
  v6 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  *v6 = 0;
  v6[1] = 0;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment) = 4;
  v7 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v9 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit) = 2;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction) = 2;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation) = 2;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton) = 2;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline) = 2;
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v18 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  *v21 = 0;
  v21[1] = 0;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles) = v8;
  v22 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v23 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags) = v8;
  v26 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  *v26 = 0;
  v26[1] = 0;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard) = 2;
  v27 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v29 = type metadata accessor for MUUserPreferences(0);
  result = (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls) = 2;
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices) = v8;
  qword_1EC1755E8 = v3;
  return result;
}

uint64_t sub_1C56CD0F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v205 = &v169 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v204 = &v169 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v203 = &v169 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v201 = &v169 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v195 = &v169 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v192 = &v169 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v179 = &v169 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v170 = &v169 - v34;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v35 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v169 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v36 = type metadata accessor for MULocation(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v172 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom) = 5;
  v37 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment) = 4;
  v39 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  *v39 = 0;
  v39[1] = 0;
  v174 = v38;
  v175 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  v40 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v41 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  v171 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v176 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v43 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  v44 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  v173 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  *v44 = 0;
  v44[1] = 0;
  v45 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  v177 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  *v45 = 0;
  v45[1] = 0;
  v178 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit) = 2;
  v180 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction) = 2;
  v181 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation) = 2;
  v182 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton) = 2;
  v183 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline) = 2;
  v46 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v184 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v47 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v47 - 8) + 56))(v1 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v185 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v49 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v49 - 8) + 56))(v1 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v51 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  v186 = v50;
  v187 = v51;
  *v51 = 0;
  v51[1] = 0;
  v52 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v188 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v53 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  (*(*(v53 - 8) + 56))(v1 + v52, 1, 1, v53);
  v54 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  v189 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  *v54 = 0;
  v54[1] = 0;
  v190 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles) = v40;
  v55 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v191 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v56 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  (*(*(v56 - 8) + 56))(v1 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v193 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v58 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v58 - 8) + 56))(v1 + v57, 1, 1, v58);
  v194 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags) = v40;
  v59 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  v196 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  *v59 = 0;
  v59[1] = 0;
  v197 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard) = 2;
  v60 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  v198 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  *v60 = 0;
  v60[1] = 0;
  v61 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v199 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v62 = type metadata accessor for MUUserPreferences(0);
  (*(*(v62 - 8) + 56))(v1 + v61, 1, 1, v62);
  v200 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls) = 2;
  v202 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices) = v40;
  swift_beginAccess();
  v63 = *(a1 + 16);
  v64 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v63;
  *(v1 + 24) = v64;
  v65 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  swift_beginAccess();
  v66 = v170;
  sub_1C56466CC(a1 + v65, v170, &qword_1EC16EC50, &qword_1C586B0C8);
  v67 = v169;
  swift_beginAccess();

  sub_1C56ECE38(v66, v1 + v67, &qword_1EC16EC50, &qword_1C586B0C8);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v172;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  swift_beginAccess();
  v73 = v37[1];
  *v37 = v72;
  v37[1] = v71;

  v74 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v174;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  swift_beginAccess();
  v79 = v39[1];
  *v39 = v78;
  v39[1] = v77;

  v80 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = v175;
  swift_beginAccess();
  v83 = *(v1 + v82);
  *(v1 + v82) = v81;

  v84 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v87 = v171;
  swift_beginAccess();
  v88 = v87[1];
  *v87 = v86;
  v87[1] = v85;

  v89 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v90 = v179;
  sub_1C56466CC(a1 + v89, v179, &qword_1EC16EC70, &qword_1C586B0F8);
  v91 = v176;
  swift_beginAccess();
  sub_1C56ECE38(v90, v1 + v91, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_endAccess();
  v92 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v173;
  swift_beginAccess();
  v96 = v95[1];
  *v95 = v94;
  v95[1] = v93;

  v97 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  swift_beginAccess();
  v99 = *v97;
  v98 = v97[1];
  v100 = v177;
  swift_beginAccess();
  v101 = v100[1];
  *v100 = v99;
  v100[1] = v98;

  v102 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
  swift_beginAccess();
  LOBYTE(v102) = *(a1 + v102);
  v103 = v178;
  swift_beginAccess();
  *(v1 + v103) = v102;
  v104 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v180;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
  swift_beginAccess();
  LOBYTE(v106) = *(a1 + v106);
  v107 = v181;
  swift_beginAccess();
  *(v1 + v107) = v106;
  v108 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
  swift_beginAccess();
  LOBYTE(v108) = *(a1 + v108);
  v109 = v182;
  swift_beginAccess();
  *(v1 + v109) = v108;
  v110 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
  swift_beginAccess();
  LOBYTE(v110) = *(a1 + v110);
  v111 = v183;
  swift_beginAccess();
  *(v1 + v111) = v110;
  v112 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v113 = v192;
  sub_1C56466CC(a1 + v112, v192, &qword_1EC16EC78, &qword_1C586B100);
  v114 = v184;
  swift_beginAccess();
  sub_1C56ECE38(v113, v1 + v114, &qword_1EC16EC78, &qword_1C586B100);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v116 = v195;
  sub_1C56466CC(a1 + v115, v195, &qword_1EC16EC80, &qword_1C586B108);
  v117 = v185;
  swift_beginAccess();
  sub_1C56ECE38(v116, v1 + v117, &qword_1EC16EC80, &qword_1C586B108);
  swift_endAccess();
  v118 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v186;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  swift_beginAccess();
  v122 = *v120;
  v121 = v120[1];
  v123 = v187;
  swift_beginAccess();
  v124 = v123[1];
  *v123 = v122;
  v123[1] = v121;

  v125 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  swift_beginAccess();
  v126 = v201;
  sub_1C56466CC(a1 + v125, v201, &qword_1EC16EC88, &qword_1C586B110);
  v127 = v188;
  swift_beginAccess();
  sub_1C56ECE38(v126, v1 + v127, &qword_1EC16EC88, &qword_1C586B110);
  swift_endAccess();
  v128 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  swift_beginAccess();
  v130 = *v128;
  v129 = v128[1];
  v131 = v189;
  swift_beginAccess();
  v132 = v131[1];
  *v131 = v130;
  v131[1] = v129;

  v133 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
  swift_beginAccess();
  v134 = *(a1 + v133);
  v135 = v190;
  swift_beginAccess();
  v136 = *(v1 + v135);
  *(v1 + v135) = v134;

  v137 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  swift_beginAccess();
  v138 = v203;
  sub_1C56466CC(a1 + v137, v203, &qword_1EC16EC90, &qword_1C586B118);
  v139 = v191;
  swift_beginAccess();
  sub_1C56ECE38(v138, v1 + v139, &qword_1EC16EC90, &qword_1C586B118);
  swift_endAccess();
  v140 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v141 = v204;
  sub_1C56466CC(a1 + v140, v204, &qword_1EC16EC98, &qword_1C586B120);
  v142 = v193;
  swift_beginAccess();
  sub_1C56ECE38(v141, v1 + v142, &qword_1EC16EC98, &qword_1C586B120);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
  swift_beginAccess();
  v144 = *(a1 + v143);
  v145 = v194;
  swift_beginAccess();
  v146 = *(v1 + v145);
  *(v1 + v145) = v144;

  v147 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  swift_beginAccess();
  v149 = *v147;
  v148 = v147[1];
  v150 = v196;
  swift_beginAccess();
  v151 = v150[1];
  *v150 = v149;
  v150[1] = v148;

  v152 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
  swift_beginAccess();
  LOBYTE(v152) = *(a1 + v152);
  v153 = v197;
  swift_beginAccess();
  *(v1 + v153) = v152;
  v154 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  swift_beginAccess();
  v156 = *v154;
  v155 = v154[1];
  v157 = v198;
  swift_beginAccess();
  v158 = v157[1];
  *v157 = v156;
  v157[1] = v155;

  v159 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v160 = v205;
  sub_1C56466CC(a1 + v159, v205, &qword_1EC16ECA0, &qword_1C586B128);
  v161 = v199;
  swift_beginAccess();
  sub_1C56ECE38(v160, v1 + v161, &qword_1EC16ECA0, &qword_1C586B128);
  swift_endAccess();
  v162 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
  swift_beginAccess();
  LOBYTE(v162) = *(a1 + v162);
  v163 = v200;
  swift_beginAccess();
  *(v1 + v163) = v162;
  v164 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
  swift_beginAccess();
  v165 = *(a1 + v164);

  v166 = v202;
  swift_beginAccess();
  v167 = *(v1 + v166);
  *(v1 + v166) = v165;

  return v1;
}

uint64_t sub_1C56CE24C()
{
  v1 = v0[3];

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation, &qword_1EC16EC50, &qword_1C586B0C8);
  v2 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place + 8);

  v4 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines);

  v5 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData, &qword_1EC16EC70, &qword_1C586B0F8);
  v6 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption + 8);

  v7 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata, &qword_1EC16EC80, &qword_1C586B108);
  v8 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions, &qword_1EC16EC88, &qword_1C586B110);
  v9 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL + 8);

  v10 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem, &qword_1EC16EC90, &qword_1C586B118);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider, &qword_1EC16EC98, &qword_1C586B120);
  v11 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags);

  v12 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode + 8);

  v13 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier + 8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences, &qword_1EC16ECA0, &qword_1C586B128);
  v14 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices);

  v15 = *(*v0 + 48);
  v16 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56CE49C()
{
  v2 = v0;
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1C56CD0F0(v6);
    *(v2 + v3) = v10;
  }

  while (1)
  {
    result = sub_1C584F050();
    if (v1 || (v12 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 6:
      case 8:
      case 10:
      case 11:
      case 20:
      case 22:
      case 27:
      case 29:
        swift_beginAccess();
        sub_1C584F0D0();
        goto LABEL_26;
      case 2:
        swift_beginAccess();
        type metadata accessor for MULocation(0);
        v13 = &qword_1EC16D880;
        v14 = type metadata accessor for MULocation;
        goto LABEL_24;
      case 3:
        swift_beginAccess();
        sub_1C5703B3C();
        goto LABEL_17;
      case 5:
        swift_beginAccess();
        sub_1C5703AE8();
        goto LABEL_17;
      case 7:
        swift_beginAccess();
        sub_1C584F0C0();
        goto LABEL_26;
      case 9:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
        v13 = &unk_1EC16D418;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
        goto LABEL_24;
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 28:
      case 31:
        swift_beginAccess();
        sub_1C584F080();
        goto LABEL_26;
      case 17:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
        v13 = &unk_1EC16D3A8;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider;
        goto LABEL_24;
      case 18:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
        v13 = &unk_1EC16D238;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata;
        goto LABEL_24;
      case 19:
        swift_beginAccess();
        sub_1C57041CC();
LABEL_17:
        sub_1C584F090();
        goto LABEL_26;
      case 21:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
        v13 = &unk_1EC16F750;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions;
        goto LABEL_24;
      case 23:
        swift_beginAccess();
        type metadata accessor for MUVGVehicle(0);
        v15 = &qword_1EC16EFC0;
        v16 = type metadata accessor for MUVGVehicle;
        goto LABEL_21;
      case 24:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
        v13 = &unk_1EC16D3E8;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem;
        goto LABEL_24;
      case 25:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
        v13 = &unk_1EC16D1E0;
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider;
        goto LABEL_24;
      case 26:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
        v15 = &unk_1EC16D388;
        v16 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag;
        goto LABEL_21;
      case 30:
        swift_beginAccess();
        type metadata accessor for MUUserPreferences(0);
        v13 = &qword_1EC16F658;
        v14 = type metadata accessor for MUUserPreferences;
LABEL_24:
        sub_1C56EF190(v13, v14);
        sub_1C584F100();
        goto LABEL_26;
      case 32:
        swift_beginAccess();
        type metadata accessor for MUSendToDevice(0);
        v15 = &qword_1EC16EE98;
        v16 = type metadata accessor for MUSendToDevice;
LABEL_21:
        sub_1C56EF190(v15, v16);
        sub_1C584F0F0();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C56CEBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(v6 + *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20));
  result = swift_beginAccess();
  if (*(v10 + 24))
  {
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);

    sub_1C584F1F0();
  }

  if (!v5)
  {
    sub_1C56CF404(v10, a1, a2, a3);
    v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
    swift_beginAccess();
    if (*(v10 + v14) != 5)
    {
      sub_1C5703B3C();
      sub_1C584F1A0();
    }

    v15 = (v10 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
    swift_beginAccess();
    if (v15[1])
    {
      v16 = *v15;
      v17 = v15[1];

      sub_1C584F1F0();
    }

    v18 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
    swift_beginAccess();
    if (*(v10 + v18) != 4)
    {
      sub_1C5703AE8();
      sub_1C584F1A0();
    }

    v19 = (v10 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
    swift_beginAccess();
    if (v19[1])
    {
      v20 = *v19;
      v21 = v19[1];

      sub_1C584F1F0();
    }

    v22 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
    swift_beginAccess();
    if (*(*(v10 + v22) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
    sub_1C56CF62C(v10, a1, a2, a3);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline);
    sub_1C56CF854(v10, a1, a2, a3);
    sub_1C56CFA7C(v10, a1, a2, a3);
    sub_1C56D8444(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace, sub_1C57041CC);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
    sub_1C56CFCA4(v10, a1, a2, a3);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
    v23 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
    swift_beginAccess();
    if (*(*(v10 + v23) + 16))
    {
      type metadata accessor for MUVGVehicle(0);
      sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle);

      sub_1C584F210();
    }

    sub_1C56CFECC(v10, a1, a2, a3);
    sub_1C56D00F4(v10, a1, a2, a3);
    v24 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
    swift_beginAccess();
    if (*(*(v10 + v24) + 16))
    {
      type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
      sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);

      sub_1C584F210();
    }

    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
    sub_1C56D031C(v10, a1, a2, a3);
    sub_1C56D0544(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls);
    v25 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
    swift_beginAccess();
    if (*(*(v10 + v25) + 16))
    {
      type metadata accessor for MUSendToDevice(0);
      sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice);

      sub_1C584F210();
    }

    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56CF404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for MULocation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for MULocation);
}

uint64_t sub_1C56CF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC70, &qword_1C586B0F8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

uint64_t sub_1C56CF854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC78, &qword_1C586B100);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC78, &qword_1C586B100);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
}

uint64_t sub_1C56CFA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC80, &qword_1C586B108);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC80, &qword_1C586B108);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
}

uint64_t sub_1C56CFCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC88, &qword_1C586B110);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC88, &qword_1C586B110);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

uint64_t sub_1C56CFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC90, &qword_1C586B118);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC90, &qword_1C586B118);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
}

uint64_t sub_1C56D00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC98, &qword_1C586B120);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC98, &qword_1C586B120);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
}

uint64_t sub_1C56D031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for MUUserPreferences(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECA0, &qword_1C586B128);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECA0, &qword_1C586B128);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for MUUserPreferences);
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for MUUserPreferences);
}

uint64_t sub_1C56D0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56D05E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUUserPreferences(0);
  v402 = *(v4 - 8);
  v5 = *(v402 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v403 = &v373 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE0, &qword_1C5875DF0);
  v8 = *(*(v399 - 8) + 64);
  MEMORY[0x1EEE9AC00](v399, v9);
  v11 = &v373 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v401 = &v373 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v400 = &v373 - v18;
  v397 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v395 = *(v397 - 8);
  v19 = *(v395 + 64);
  MEMORY[0x1EEE9AC00](v397, v20);
  v396 = &v373 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC10, &qword_1C5875E20);
  v22 = *(*(v392 - 8) + 64);
  MEMORY[0x1EEE9AC00](v392, v23);
  v398 = &v373 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v394 = &v373 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v393 = &v373 - v31;
  v32 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v386 = *(v32 - 8);
  v387 = v32;
  v33 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v32, v34);
  v390 = &v373 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC80, &qword_1C5875E90);
  v36 = *(*(v385 - 8) + 64);
  MEMORY[0x1EEE9AC00](v385, v37);
  v391 = &v373 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v389 = &v373 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v44);
  v388 = &v373 - v45;
  v383 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v381 = *(v383 - 8);
  v46 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v383, v47);
  v382 = (&v373 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC88, &qword_1C5875E98);
  v49 = *(*(v378 - 8) + 64);
  MEMORY[0x1EEE9AC00](v378, v50);
  v384 = &v373 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  v53 = *(*(v52 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v52 - 8, v54);
  v380 = (&v373 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55, v57);
  v379 = &v373 - v58;
  v409 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v407 = *(v409 - 8);
  v59 = *(v407 + 64);
  MEMORY[0x1EEE9AC00](v409, v60);
  v377 = &v373 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC28, &qword_1C5875E38);
  v62 = *(*(v405 - 8) + 64);
  MEMORY[0x1EEE9AC00](v405, v63);
  v413 = &v373 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v66 = *(*(v65 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v65 - 8, v67);
  v406 = &v373 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v70);
  v408 = &v373 - v71;
  v415 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v412 = *(v415 - 8);
  v72 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v415, v73);
  v404 = &v373 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC38, &qword_1C5875E48);
  v75 = *(*(v410 - 8) + 64);
  MEMORY[0x1EEE9AC00](v410, v76);
  v416 = &v373 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v79 = *(*(v78 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v78 - 8, v80);
  v411 = &v373 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v83);
  v414 = &v373 - v84;
  v85 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v420 = *(v85 - 8);
  v421 = v85;
  v86 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v85, v87);
  v417 = &v373 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC30, &qword_1C5875E40);
  v89 = *(*(v419 - 8) + 64);
  MEMORY[0x1EEE9AC00](v419, v90);
  v422 = &v373 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v93 = *(*(v92 - 8) + 64);
  v95 = MEMORY[0x1EEE9AC00](v92 - 8, v94);
  v418 = &v373 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v97);
  v424 = &v373 - v98;
  v99 = type metadata accessor for MULocation(0);
  v426 = *(v99 - 8);
  v100 = *(v426 + 64);
  MEMORY[0x1EEE9AC00](v99, v101);
  v423 = &v373 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103, v105);
  v107 = &v373 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v109 = *(*(v108 - 8) + 64);
  v111 = MEMORY[0x1EEE9AC00](v108 - 8, v110);
  v425 = &v373 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v113);
  v115 = &v373 - v114;
  swift_beginAccess();
  v427 = a1;
  v117 = *(a1 + 16);
  v116 = *(a1 + 24);
  swift_beginAccess();
  v118 = *(a2 + 24);
  if (v116)
  {
    if (!v118 || (v117 != *(a2 + 16) || v116 != v118) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_8:
    v374 = v4;
    v375 = v11;
    v376 = a2;
    v119 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
    v120 = v427;
    swift_beginAccess();
    sub_1C56466CC(v120 + v119, v115, &qword_1EC16EC50, &qword_1C586B0C8);
    v121 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
    v122 = v376;
    swift_beginAccess();
    v123 = *(v103 + 48);
    sub_1C56466CC(v115, v107, &qword_1EC16EC50, &qword_1C586B0C8);
    sub_1C56466CC(v122 + v121, &v107[v123], &qword_1EC16EC50, &qword_1C586B0C8);
    v124 = *(v426 + 48);
    if (v124(v107, 1, v99) == 1)
    {

      sub_1C5625230(v115, &qword_1EC16EC50, &qword_1C586B0C8);
      v125 = v120;
      if (v124(&v107[v123], 1, v99) == 1)
      {
        sub_1C5625230(v107, &qword_1EC16EC50, &qword_1C586B0C8);
LABEL_19:
        v135 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
        swift_beginAccess();
        v136 = *(v125 + v135);
        v137 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
        swift_beginAccess();
        v138 = *(v122 + v137);
        if (v136 == 5)
        {
          v139 = v424;
          if (v138 != 5)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v139 = v424;
          if (v138 == 5 || v136 != v138)
          {
            goto LABEL_15;
          }
        }

        v140 = (v125 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
        swift_beginAccess();
        v141 = *v140;
        v142 = v140[1];
        v143 = (v122 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
        swift_beginAccess();
        v144 = v143[1];
        if (v142)
        {
          if (!v144)
          {
            goto LABEL_15;
          }

          v145 = v427;
          if ((v141 != *v143 || v142 != v144) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v145 = v427;
          if (v144)
          {
            goto LABEL_15;
          }
        }

        v146 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
        swift_beginAccess();
        v147 = *(v145 + v146);
        v148 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
        swift_beginAccess();
        v149 = *(v122 + v148);
        if (v147 == 4)
        {
          if (v149 != 4)
          {
            goto LABEL_15;
          }
        }

        else if (v149 == 4 || v147 != v149)
        {
          goto LABEL_15;
        }

        v150 = (v145 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
        swift_beginAccess();
        v151 = *v150;
        v152 = v150[1];
        v153 = (v122 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
        swift_beginAccess();
        v154 = v153[1];
        if (v152)
        {
          if (!v154)
          {
            goto LABEL_15;
          }

          v155 = v427;
          if ((v151 != *v153 || v152 != v154) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v155 = v427;
          if (v154)
          {
            goto LABEL_15;
          }
        }

        v156 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
        swift_beginAccess();
        v157 = *(v155 + v156);
        v158 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
        swift_beginAccess();
        if ((sub_1C56EA440(v157, *(v122 + v158)) & 1) == 0)
        {
          goto LABEL_15;
        }

        v159 = (v155 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
        swift_beginAccess();
        v160 = *v159;
        v161 = v159[1];
        v162 = (v122 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
        swift_beginAccess();
        v163 = v162[1];
        if (v161)
        {
          if (!v163 || (v160 != *v162 || v161 != v163) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else if (v163)
        {
          goto LABEL_15;
        }

        v164 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
        v165 = v427;
        swift_beginAccess();
        sub_1C56466CC(v165 + v164, v139, &qword_1EC16EC70, &qword_1C586B0F8);
        v166 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
        swift_beginAccess();
        v167 = *(v419 + 48);
        v168 = v422;
        sub_1C56466CC(v139, v422, &qword_1EC16EC70, &qword_1C586B0F8);
        sub_1C56466CC(v122 + v166, v168 + v167, &qword_1EC16EC70, &qword_1C586B0F8);
        v169 = v421;
        v170 = *(v420 + 48);
        if (v170(v168, 1, v421) == 1)
        {
          sub_1C5625230(v139, &qword_1EC16EC70, &qword_1C586B0F8);
          v171 = v170(v168 + v167, 1, v169);
          v172 = v427;
          if (v171 == 1)
          {
            sub_1C5625230(v168, &qword_1EC16EC70, &qword_1C586B0F8);
LABEL_60:
            v182 = (v172 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
            swift_beginAccess();
            v183 = *v182;
            v184 = v182[1];
            v185 = (v122 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
            swift_beginAccess();
            v186 = v185[1];
            if (v184)
            {
              if (!v186 || (v183 != *v185 || v184 != v186) && (sub_1C584FDC0() & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            else if (v186)
            {
              goto LABEL_15;
            }

            v187 = (v172 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
            swift_beginAccess();
            v188 = *v187;
            v189 = v187[1];
            v190 = (v122 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
            swift_beginAccess();
            v191 = v190[1];
            if (v189)
            {
              if (!v191 || (v188 != *v190 || v189 != v191) && (sub_1C584FDC0() & 1) == 0)
              {
                goto LABEL_15;
              }

LABEL_75:
              v192 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
              swift_beginAccess();
              v193 = *(v172 + v192);
              v194 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
              swift_beginAccess();
              v195 = *(v122 + v194);
              if (v193 == 2)
              {
                if (v195 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v195 == 2 || ((v193 ^ v195) & 1) != 0)
              {
                goto LABEL_15;
              }

              v196 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
              v197 = v427;
              swift_beginAccess();
              v198 = *(v197 + v196);
              v199 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
              v200 = v376;
              swift_beginAccess();
              v201 = *(v200 + v199);
              if (v198 == 2)
              {
                if (v201 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v201 == 2 || ((v198 ^ v201) & 1) != 0)
              {
                goto LABEL_15;
              }

              v202 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
              v203 = v427;
              swift_beginAccess();
              v204 = *(v203 + v202);
              v205 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
              v206 = v376;
              swift_beginAccess();
              v207 = *(v206 + v205);
              if (v204 == 2)
              {
                if (v207 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v207 == 2 || ((v204 ^ v207) & 1) != 0)
              {
                goto LABEL_15;
              }

              v208 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
              v209 = v427;
              swift_beginAccess();
              v210 = *(v209 + v208);
              v211 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
              v212 = v376;
              swift_beginAccess();
              v213 = *(v212 + v211);
              if (v210 == 2)
              {
                if (v213 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v213 == 2 || ((v210 ^ v213) & 1) != 0)
              {
                goto LABEL_15;
              }

              v214 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
              v215 = v427;
              swift_beginAccess();
              v216 = *(v215 + v214);
              v217 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
              v218 = v376;
              swift_beginAccess();
              v219 = *(v218 + v217);
              if (v216 == 2)
              {
                if (v219 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v219 == 2 || ((v216 ^ v219) & 1) != 0)
              {
                goto LABEL_15;
              }

              v220 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
              v221 = v427;
              swift_beginAccess();
              v222 = v414;
              sub_1C56466CC(v221 + v220, v414, &qword_1EC16EC78, &qword_1C586B100);
              v223 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
              v224 = v376;
              swift_beginAccess();
              v225 = *(v410 + 48);
              v226 = v222;
              v227 = v416;
              sub_1C56466CC(v226, v416, &qword_1EC16EC78, &qword_1C586B100);
              sub_1C56466CC(v224 + v223, v227 + v225, &qword_1EC16EC78, &qword_1C586B100);
              v228 = *(v412 + 48);
              if (v228(v227, 1, v415) == 1)
              {
                sub_1C5625230(v414, &qword_1EC16EC78, &qword_1C586B100);
                if (v228(v416 + v225, 1, v415) == 1)
                {
                  sub_1C5625230(v416, &qword_1EC16EC78, &qword_1C586B100);
                  goto LABEL_107;
                }
              }

              else
              {
                v229 = v416;
                sub_1C56466CC(v416, v411, &qword_1EC16EC78, &qword_1C586B100);
                if (v228(v229 + v225, 1, v415) != 1)
                {
                  v233 = v416;
                  v234 = v416 + v225;
                  v235 = v404;
                  sub_1C56EC178(v234, v404, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  v236 = v411;
                  v237 = sub_1C56EE398(v411, v235);
                  sub_1C56EC248(v235, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  sub_1C5625230(v414, &qword_1EC16EC78, &qword_1C586B100);
                  sub_1C56EC248(v236, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  sub_1C5625230(v233, &qword_1EC16EC78, &qword_1C586B100);
                  if ((v237 & 1) == 0)
                  {
                    goto LABEL_15;
                  }

LABEL_107:
                  v238 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
                  v239 = v427;
                  swift_beginAccess();
                  v240 = v408;
                  sub_1C56466CC(v239 + v238, v408, &qword_1EC16EC80, &qword_1C586B108);
                  v241 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
                  v242 = v376;
                  swift_beginAccess();
                  v243 = *(v405 + 48);
                  v244 = v240;
                  v245 = v413;
                  sub_1C56466CC(v244, v413, &qword_1EC16EC80, &qword_1C586B108);
                  sub_1C56466CC(v242 + v241, v245 + v243, &qword_1EC16EC80, &qword_1C586B108);
                  v246 = *(v407 + 48);
                  if (v246(v245, 1, v409) == 1)
                  {
                    sub_1C5625230(v408, &qword_1EC16EC80, &qword_1C586B108);
                    if (v246(v413 + v243, 1, v409) == 1)
                    {
                      sub_1C5625230(v413, &qword_1EC16EC80, &qword_1C586B108);
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v247 = v413;
                    sub_1C56466CC(v413, v406, &qword_1EC16EC80, &qword_1C586B108);
                    if (v246(v247 + v243, 1, v409) != 1)
                    {
                      v248 = v413;
                      v249 = v413 + v243;
                      v250 = v377;
                      sub_1C56EC178(v249, v377, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      v251 = v406;
                      v252 = sub_1C56ED578(v406, v250);
                      sub_1C56EC248(v250, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      sub_1C5625230(v408, &qword_1EC16EC80, &qword_1C586B108);
                      sub_1C56EC248(v251, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      sub_1C5625230(v248, &qword_1EC16EC80, &qword_1C586B108);
                      if ((v252 & 1) == 0)
                      {
                        goto LABEL_15;
                      }

LABEL_116:
                      v253 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
                      v254 = v427;
                      swift_beginAccess();
                      v255 = *(v254 + v253);
                      v256 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
                      v257 = v376;
                      swift_beginAccess();
                      v258 = *(v257 + v256);
                      if (v255 == 3)
                      {
                        if (v258 != 3)
                        {
                          goto LABEL_15;
                        }
                      }

                      else if (v258 == 3 || v255 != v258)
                      {
                        goto LABEL_15;
                      }

                      v259 = (v427 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
                      swift_beginAccess();
                      v260 = *v259;
                      v261 = v259[1];
                      v262 = (v376 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
                      swift_beginAccess();
                      v263 = v262[1];
                      if (v261)
                      {
                        if (!v263 || (v260 != *v262 || v261 != v263) && (sub_1C584FDC0() & 1) == 0)
                        {
                          goto LABEL_15;
                        }
                      }

                      else if (v263)
                      {
                        goto LABEL_15;
                      }

                      v264 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
                      v265 = v427;
                      swift_beginAccess();
                      v266 = v379;
                      sub_1C56466CC(v265 + v264, v379, &qword_1EC16EC88, &qword_1C586B110);
                      v267 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
                      v268 = v376;
                      swift_beginAccess();
                      v269 = *(v378 + 48);
                      v270 = v266;
                      v271 = v384;
                      sub_1C56466CC(v270, v384, &qword_1EC16EC88, &qword_1C586B110);
                      sub_1C56466CC(v268 + v267, v271 + v269, &qword_1EC16EC88, &qword_1C586B110);
                      v272 = *(v381 + 48);
                      if (v272(v271, 1, v383) == 1)
                      {
                        sub_1C5625230(v379, &qword_1EC16EC88, &qword_1C586B110);
                        if (v272(v384 + v269, 1, v383) == 1)
                        {
                          sub_1C5625230(v384, &qword_1EC16EC88, &qword_1C586B110);
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                        v273 = v384;
                        sub_1C56466CC(v384, v380, &qword_1EC16EC88, &qword_1C586B110);
                        if (v272(v273 + v269, 1, v383) != 1)
                        {
                          v274 = v384;
                          v275 = v384 + v269;
                          v276 = v382;
                          sub_1C56EC178(v275, v382, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          v277 = v380;
                          v278 = sub_1C56EDD88(v380, v276);
                          sub_1C56EC248(v276, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          sub_1C5625230(v379, &qword_1EC16EC88, &qword_1C586B110);
                          sub_1C56EC248(v277, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          sub_1C5625230(v274, &qword_1EC16EC88, &qword_1C586B110);
                          if ((v278 & 1) == 0)
                          {
                            goto LABEL_15;
                          }

LABEL_135:
                          v279 = (v427 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
                          swift_beginAccess();
                          v280 = *v279;
                          v281 = v279[1];
                          v282 = (v376 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
                          swift_beginAccess();
                          v283 = v282[1];
                          if (v281)
                          {
                            if (!v283 || (v280 != *v282 || v281 != v283) && (sub_1C584FDC0() & 1) == 0)
                            {
                              goto LABEL_15;
                            }
                          }

                          else if (v283)
                          {
                            goto LABEL_15;
                          }

                          v284 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
                          v285 = v427;
                          swift_beginAccess();
                          v286 = *(v285 + v284);
                          v287 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
                          v288 = v376;
                          swift_beginAccess();
                          v289 = *(v288 + v287);

                          LOBYTE(v288) = sub_1C56EA4D0(v286, v289);

                          if ((v288 & 1) == 0)
                          {
                            goto LABEL_15;
                          }

                          v290 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
                          v291 = v427;
                          swift_beginAccess();
                          v292 = v388;
                          sub_1C56466CC(v291 + v290, v388, &qword_1EC16EC90, &qword_1C586B118);
                          v293 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
                          v294 = v376;
                          swift_beginAccess();
                          v295 = *(v385 + 48);
                          v296 = v292;
                          v297 = v391;
                          sub_1C56466CC(v296, v391, &qword_1EC16EC90, &qword_1C586B118);
                          sub_1C56466CC(v294 + v293, v297 + v295, &qword_1EC16EC90, &qword_1C586B118);
                          v298 = *(v386 + 48);
                          if (v298(v297, 1, v387) == 1)
                          {
                            sub_1C5625230(v388, &qword_1EC16EC90, &qword_1C586B118);
                            if (v298(v391 + v295, 1, v387) == 1)
                            {
                              sub_1C5625230(v391, &qword_1EC16EC90, &qword_1C586B118);
                              goto LABEL_152;
                            }
                          }

                          else
                          {
                            v299 = v391;
                            sub_1C56466CC(v391, v389, &qword_1EC16EC90, &qword_1C586B118);
                            if (v298(v299 + v295, 1, v387) != 1)
                            {
                              v300 = v390;
                              sub_1C56EC178(v391 + v295, v390, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              v301 = *(v387 + 20);
                              v302 = *(v389 + v301);
                              v303 = *(v300 + v301);
                              if (v302 != v303)
                              {
                                v304 = *(v389 + v301);

                                v305 = sub_1C56D49A8(v302, v303);

                                if (!v305)
                                {
                                  sub_1C56EC248(v390, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                                  sub_1C5625230(v388, &qword_1EC16EC90, &qword_1C586B118);
                                  sub_1C56EC248(v389, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                                  v232 = v391;
                                  v230 = &qword_1EC16EC90;
                                  v231 = &qword_1C586B118;
                                  goto LABEL_113;
                                }
                              }

                              sub_1C584EFD0();
                              sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
                              v307 = v389;
                              v306 = v390;
                              v308 = sub_1C584F620();
                              sub_1C56EC248(v306, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              sub_1C5625230(v388, &qword_1EC16EC90, &qword_1C586B118);
                              sub_1C56EC248(v307, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              sub_1C5625230(v391, &qword_1EC16EC90, &qword_1C586B118);
                              if ((v308 & 1) == 0)
                              {
                                goto LABEL_15;
                              }

LABEL_152:
                              v309 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
                              v310 = v427;
                              swift_beginAccess();
                              v311 = v393;
                              sub_1C56466CC(v310 + v309, v393, &qword_1EC16EC98, &qword_1C586B120);
                              v312 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
                              v313 = v376;
                              swift_beginAccess();
                              v314 = *(v392 + 48);
                              v315 = v311;
                              v316 = v398;
                              sub_1C56466CC(v315, v398, &qword_1EC16EC98, &qword_1C586B120);
                              sub_1C56466CC(v313 + v312, v316 + v314, &qword_1EC16EC98, &qword_1C586B120);
                              v317 = *(v395 + 48);
                              if (v317(v316, 1, v397) == 1)
                              {
                                sub_1C5625230(v393, &qword_1EC16EC98, &qword_1C586B120);
                                if (v317(v398 + v314, 1, v397) == 1)
                                {
                                  sub_1C5625230(v398, &qword_1EC16EC98, &qword_1C586B120);
LABEL_159:
                                  v324 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
                                  v325 = v427;
                                  swift_beginAccess();
                                  v326 = *(v325 + v324);
                                  v327 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
                                  v328 = v376;
                                  swift_beginAccess();
                                  v329 = *(v328 + v327);

                                  LOBYTE(v328) = sub_1C56EB590(v326, v329);

                                  if ((v328 & 1) == 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  v330 = (v427 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
                                  swift_beginAccess();
                                  v331 = *v330;
                                  v332 = v330[1];
                                  v333 = (v376 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
                                  swift_beginAccess();
                                  v334 = v333[1];
                                  if (v332)
                                  {
                                    if (!v334 || (v331 != *v333 || v332 != v334) && (sub_1C584FDC0() & 1) == 0)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v334)
                                  {
                                    goto LABEL_15;
                                  }

                                  v335 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
                                  v336 = v427;
                                  swift_beginAccess();
                                  v337 = *(v336 + v335);
                                  v338 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
                                  v339 = v376;
                                  swift_beginAccess();
                                  v340 = *(v339 + v338);
                                  if (v337 == 2)
                                  {
                                    if (v340 != 2)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v340 == 2 || ((v337 ^ v340) & 1) != 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  v341 = (v427 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
                                  swift_beginAccess();
                                  v342 = *v341;
                                  v343 = v341[1];
                                  v344 = (v376 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
                                  swift_beginAccess();
                                  v345 = v344[1];
                                  if (v343)
                                  {
                                    if (!v345 || (v342 != *v344 || v343 != v345) && (sub_1C584FDC0() & 1) == 0)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v345)
                                  {
                                    goto LABEL_15;
                                  }

                                  v346 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
                                  v347 = v427;
                                  swift_beginAccess();
                                  v348 = v400;
                                  sub_1C56466CC(v347 + v346, v400, &qword_1EC16ECA0, &qword_1C586B128);
                                  v349 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
                                  v350 = v376;
                                  swift_beginAccess();
                                  v351 = *(v399 + 48);
                                  v352 = v348;
                                  v353 = v375;
                                  sub_1C56466CC(v352, v375, &qword_1EC16ECA0, &qword_1C586B128);
                                  sub_1C56466CC(v350 + v349, v353 + v351, &qword_1EC16ECA0, &qword_1C586B128);
                                  v354 = *(v402 + 48);
                                  if (v354(v353, 1, v374) == 1)
                                  {
                                    sub_1C5625230(v400, &qword_1EC16ECA0, &qword_1C586B128);
                                    if (v354(&v375[v351], 1, v374) == 1)
                                    {
                                      sub_1C5625230(v375, &qword_1EC16ECA0, &qword_1C586B128);
                                      goto LABEL_187;
                                    }
                                  }

                                  else
                                  {
                                    v355 = v375;
                                    sub_1C56466CC(v375, v401, &qword_1EC16ECA0, &qword_1C586B128);
                                    if (v354((v355 + v351), 1, v374) != 1)
                                    {
                                      v356 = v375;
                                      v357 = &v375[v351];
                                      v358 = v403;
                                      sub_1C56EC178(v357, v403, type metadata accessor for MUUserPreferences);
                                      v359 = v401;
                                      v360 = sub_1C56F34AC(v401, v358);
                                      sub_1C56EC248(v358, type metadata accessor for MUUserPreferences);
                                      sub_1C5625230(v400, &qword_1EC16ECA0, &qword_1C586B128);
                                      sub_1C56EC248(v359, type metadata accessor for MUUserPreferences);
                                      sub_1C5625230(v356, &qword_1EC16ECA0, &qword_1C586B128);
                                      if ((v360 & 1) == 0)
                                      {
                                        goto LABEL_15;
                                      }

LABEL_187:
                                      v361 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
                                      v362 = v427;
                                      swift_beginAccess();
                                      v363 = *(v362 + v361);
                                      v364 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
                                      v365 = v376;
                                      swift_beginAccess();
                                      v366 = *(v365 + v364);
                                      if (v363 == 2)
                                      {
                                        if (v366 != 2)
                                        {
                                          goto LABEL_15;
                                        }
                                      }

                                      else if (v366 == 2 || ((v363 ^ v366) & 1) != 0)
                                      {
                                        goto LABEL_15;
                                      }

                                      v367 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
                                      v368 = v427;
                                      swift_beginAccess();
                                      v369 = *(v368 + v367);
                                      v370 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
                                      v371 = v376;
                                      swift_beginAccess();
                                      v372 = *(v371 + v370);

                                      v130 = sub_1C56EACE4(v369, v372);

                                      return v130 & 1;
                                    }

                                    sub_1C5625230(v400, &qword_1EC16ECA0, &qword_1C586B128);
                                    sub_1C56EC248(v401, type metadata accessor for MUUserPreferences);
                                  }

                                  v230 = &qword_1EC16FBE0;
                                  v231 = &qword_1C5875DF0;
                                  v232 = v375;
LABEL_113:
                                  sub_1C5625230(v232, v230, v231);
                                  goto LABEL_15;
                                }
                              }

                              else
                              {
                                v318 = v398;
                                sub_1C56466CC(v398, v394, &qword_1EC16EC98, &qword_1C586B120);
                                if (v317(v318 + v314, 1, v397) != 1)
                                {
                                  v319 = v398;
                                  v320 = v398 + v314;
                                  v321 = v396;
                                  sub_1C56EC178(v320, v396, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  v322 = v394;
                                  v323 = sub_1C56ED04C(v394, v321);
                                  sub_1C56EC248(v321, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  sub_1C5625230(v393, &qword_1EC16EC98, &qword_1C586B120);
                                  sub_1C56EC248(v322, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  sub_1C5625230(v319, &qword_1EC16EC98, &qword_1C586B120);
                                  if ((v323 & 1) == 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  goto LABEL_159;
                                }

                                sub_1C5625230(v393, &qword_1EC16EC98, &qword_1C586B120);
                                sub_1C56EC248(v394, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                              }

                              v230 = &qword_1EC16FC10;
                              v231 = &qword_1C5875E20;
                              v232 = v398;
                              goto LABEL_113;
                            }

                            sub_1C5625230(v388, &qword_1EC16EC90, &qword_1C586B118);
                            sub_1C56EC248(v389, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                          }

                          v230 = &qword_1EC16FC80;
                          v231 = &qword_1C5875E90;
                          v232 = v391;
                          goto LABEL_113;
                        }

                        sub_1C5625230(v379, &qword_1EC16EC88, &qword_1C586B110);
                        sub_1C56EC248(v380, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                      }

                      v230 = &qword_1EC16FC88;
                      v231 = &qword_1C5875E98;
                      v232 = v384;
                      goto LABEL_113;
                    }

                    sub_1C5625230(v408, &qword_1EC16EC80, &qword_1C586B108);
                    sub_1C56EC248(v406, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                  }

                  v230 = &qword_1EC16FC28;
                  v231 = &qword_1C5875E38;
                  v232 = v413;
                  goto LABEL_113;
                }

                sub_1C5625230(v414, &qword_1EC16EC78, &qword_1C586B100);
                sub_1C56EC248(v411, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
              }

              v230 = &qword_1EC16FC38;
              v231 = &qword_1C5875E48;
              v232 = v416;
              goto LABEL_113;
            }

            if (!v191)
            {
              goto LABEL_75;
            }

LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v173 = v418;
          sub_1C56466CC(v168, v418, &qword_1EC16EC70, &qword_1C586B0F8);
          if (v170(v168 + v167, 1, v169) != 1)
          {
            v174 = v169;
            v175 = v417;
            sub_1C56EC178(v168 + v167, v417, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            v176 = *(v174 + 20);
            v177 = *(v173 + v176);
            v178 = *(v175 + v176);
            if (v177 != v178)
            {

              v179 = sub_1C56D872C(v177, v178);

              if (!v179)
              {
                sub_1C56EC248(v175, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
                sub_1C5625230(v139, &qword_1EC16EC70, &qword_1C586B0F8);
                sub_1C56EC248(v418, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
                sub_1C5625230(v168, &qword_1EC16EC70, &qword_1C586B0F8);
                goto LABEL_15;
              }
            }

            sub_1C584EFD0();
            sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08]);
            v180 = v418;
            v181 = sub_1C584F620();
            sub_1C56EC248(v175, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            sub_1C5625230(v139, &qword_1EC16EC70, &qword_1C586B0F8);
            sub_1C56EC248(v180, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            sub_1C5625230(v168, &qword_1EC16EC70, &qword_1C586B0F8);
            v172 = v427;
            if ((v181 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_60;
          }

          sub_1C5625230(v139, &qword_1EC16EC70, &qword_1C586B0F8);
          sub_1C56EC248(v173, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
        }

        v127 = &qword_1EC16FC30;
        v128 = &qword_1C5875E40;
        v129 = v168;
LABEL_14:
        sub_1C5625230(v129, v127, v128);
        goto LABEL_15;
      }
    }

    else
    {
      v126 = v425;
      sub_1C56466CC(v107, v425, &qword_1EC16EC50, &qword_1C586B0C8);
      if (v124(&v107[v123], 1, v99) != 1)
      {
        v132 = &v107[v123];
        v133 = v423;
        sub_1C56EC178(v132, v423, type metadata accessor for MULocation);
        v125 = v427;

        v134 = sub_1C56F4268(v126, v133, type metadata accessor for MULocation);
        sub_1C56EC248(v133, type metadata accessor for MULocation);
        sub_1C5625230(v115, &qword_1EC16EC50, &qword_1C586B0C8);
        sub_1C56EC248(v126, type metadata accessor for MULocation);
        sub_1C5625230(v107, &qword_1EC16EC50, &qword_1C586B0C8);
        if ((v134 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      sub_1C5625230(v115, &qword_1EC16EC50, &qword_1C586B0C8);
      sub_1C56EC248(v126, type metadata accessor for MULocation);
    }

    v127 = &qword_1EC16FC68;
    v128 = &qword_1C5875E78;
    v129 = v107;
    goto LABEL_14;
  }

  if (!v118)
  {
    goto LABEL_8;
  }

LABEL_16:
  v130 = 0;
  return v130 & 1;
}

uint64_t sub_1C56D3000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9B0, type metadata accessor for WebPlacecardBridgeReply.MUContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D30A0()
{
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext);

  return sub_1C584F160();
}

uint64_t sub_1C56D310C()
{
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext);

  return sub_1C584F170();
}

uint64_t sub_1C56D31CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190210);
  __swift_project_value_buffer(v0, qword_1EC190210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C586AEB0;
  v4 = v25 + v3;
  v5 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v5 = "map_item";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v25 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_home_work_school_shortcut";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v8();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "custom_name";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "place_data_availability";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "contact";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v8();
  v17 = (v25 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "coordinates";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v25 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "formatted_address_lines";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v8();
  v21 = (v25 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "full_thoroughfare";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v8();
  v23 = v25 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "locality";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56D3560()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  v4 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v9 = type metadata accessor for MULocation(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v11 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  *v12 = 0;
  v12[1] = 0;
  qword_1EC177AB0 = v3;
  return result;
}

uint64_t sub_1C56D36B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v57 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v56 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v52 = &v50 - v14;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 2;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  v15 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v53 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v54 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v20 = type metadata accessor for MULocation(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v55 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v21 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  v51 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  *v22 = 0;
  v22[1] = 0;
  swift_beginAccess();
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v23;
  *(v1 + 24) = v24;
  swift_beginAccess();
  v25 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v25;
  swift_beginAccess();
  v27 = *(a1 + 40);
  v26 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v27;
  *(v1 + 48) = v26;
  v28 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  v29 = v52;
  sub_1C56466CC(a1 + v28, v52, &qword_1EC16ECA8, &qword_1C586B130);
  swift_beginAccess();

  sub_1C56ECE38(v29, v1 + v15, &qword_1EC16ECA8, &qword_1C586B130);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v31 = v56;
  sub_1C56466CC(a1 + v30, v56, &qword_1EC16ECB0, &qword_1C586B138);
  v32 = v53;
  swift_beginAccess();
  sub_1C56ECE38(v31, v1 + v32, &qword_1EC16ECB0, &qword_1C586B138);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  v34 = v57;
  sub_1C56466CC(a1 + v33, v57, &qword_1EC16EC50, &qword_1C586B0C8);
  v35 = v54;
  swift_beginAccess();
  sub_1C56ECE38(v34, v1 + v35, &qword_1EC16EC50, &qword_1C586B0C8);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v55;
  swift_beginAccess();
  v39 = *(v1 + v38);
  *(v1 + v38) = v37;

  v40 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  swift_beginAccess();
  v43 = v21[1];
  *v21 = v42;
  v21[1] = v41;

  v44 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];

  v47 = v51;
  swift_beginAccess();
  v48 = v47[1];
  *v47 = v46;
  v47[1] = v45;

  return v1;
}

uint64_t sub_1C56D3C3C()
{
  v1 = v0[3];

  v2 = v0[6];

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability, &qword_1EC16ECA8, &qword_1C586B130);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates, &qword_1EC16EC50, &qword_1C586B0C8);
  v3 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines);

  v4 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare + 8);

  v5 = *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56D3D38()
{
  v2 = v0;
  v3 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1C56D36B8(v6);
    *(v2 + v3) = v10;
  }

  result = sub_1C584F050();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        v13 = v1;
        if (result == 5)
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUContact;
          v15 = &unk_1EC16D1A0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for MULocation(0);
          v14 = type metadata accessor for MULocation;
          v15 = &qword_1EC16D880;
        }

        goto LABEL_24;
      }

      if (result == 7)
      {
        swift_beginAccess();
        sub_1C584F0C0();
LABEL_26:
        swift_endAccess();
        goto LABEL_27;
      }

      if (result == 8 || result == 9)
      {
        goto LABEL_25;
      }

LABEL_27:
      result = sub_1C584F050();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
        v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability;
        v15 = &unk_1EC16D1F8;
LABEL_24:
        sub_1C56EF190(v15, v14);
        v1 = v13;
        sub_1C584F100();
        goto LABEL_26;
      }
    }

    else if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      sub_1C584F080();
      goto LABEL_26;
    }

LABEL_25:
    swift_beginAccess();
    sub_1C584F0D0();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C56D40B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(v6 + *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20));
  result = swift_beginAccess();
  if (*(v10 + 24))
  {
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);

    sub_1C584F1F0();
  }

  if (!v5)
  {
    swift_beginAccess();
    if (*(v10 + 32) != 2)
    {
      sub_1C584F190();
    }

    swift_beginAccess();
    if (*(v10 + 48))
    {
      v14 = *(v10 + 40);
      v15 = *(v10 + 48);

      sub_1C584F1F0();
    }

    sub_1C56D4330(v10, a1, a2, a3);
    sub_1C56D4558(v10, a1, a2, a3);
    sub_1C56D4780(v10, a1, a2, a3);
    v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
    swift_beginAccess();
    if (*(*(v10 + v16) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
    sub_1C56D8394(v10, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56D4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECA8, &qword_1C586B130);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECA8, &qword_1C586B130);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
}

uint64_t sub_1C56D4558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16ECB0, &qword_1C586B138);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16ECB0, &qword_1C586B138);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for WebPlacecardBridgeReply.MUContact);
}

uint64_t sub_1C56D4780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for MULocation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  sub_1C56466CC(a1 + v16, v9, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C5625230(v9, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v9, v15, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation);
  sub_1C584F220();
  return sub_1C56EC248(v15, type metadata accessor for MULocation);
}

BOOL sub_1C56D49A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MULocation(0);
  v122 = *(v4 - 8);
  v123 = v4;
  v5 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v119 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  v8 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121, v9);
  v124 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v126 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v131 = &v117 - v17;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  v128 = *(v18 - 8);
  v129 = v18;
  v19 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v120 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC70, &qword_1C5875E80);
  v22 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127, v23);
  v130 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v125 = (&v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v30);
  v132 = &v117 - v31;
  v32 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC78, &qword_1C5875E88);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37, v39);
  v134 = &v117 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v41 - 8, v43);
  v46 = &v117 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v47);
  v49 = &v117 - v48;
  swift_beginAccess();
  v135 = a1;
  v50 = *(a1 + 16);
  v51 = *(a1 + 24);
  swift_beginAccess();
  v52 = a2;
  v53 = *(a2 + 24);
  if (v51)
  {
    if (!v53 || (v50 != *(a2 + 16) || v51 != v53) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = v135;
  swift_beginAccess();
  v55 = *(v54 + 32);
  swift_beginAccess();
  v56 = *(a2 + 32);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }
  }

  else if (v56 == 2 || ((v55 ^ v56) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v57 = *(v54 + 40);
  v58 = *(v54 + 48);
  swift_beginAccess();
  v59 = *(a2 + 48);
  if (v58)
  {
    if (!v59 || (v57 != *(a2 + 40) || v58 != v59) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v61 = v135;
  swift_beginAccess();
  sub_1C56466CC(v61 + v60, v49, &qword_1EC16ECA8, &qword_1C586B130);
  v62 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  v63 = *(v37 + 48);
  v64 = v134;
  sub_1C56466CC(v49, v134, &qword_1EC16ECA8, &qword_1C586B130);
  v118 = v63;
  sub_1C56466CC(v52 + v62, v64 + v63, &qword_1EC16ECA8, &qword_1C586B130);
  v65 = *(v133 + 48);
  if (v65(v64, 1, v32) == 1)
  {
    v66 = v135;

    sub_1C5625230(v49, &qword_1EC16ECA8, &qword_1C586B130);
    v67 = v65(v64 + v118, 1, v32);
    v68 = v52;
    v69 = v66;
    if (v67 == 1)
    {
      sub_1C5625230(v64, &qword_1EC16ECA8, &qword_1C586B130);
      goto LABEL_27;
    }

LABEL_25:
    v71 = &qword_1EC16FC78;
    v72 = &qword_1C5875E88;
    v73 = v64;
LABEL_41:
    sub_1C5625230(v73, v71, v72);
    goto LABEL_42;
  }

  sub_1C56466CC(v64, v46, &qword_1EC16ECA8, &qword_1C586B130);
  v70 = v118;
  if (v65(v64 + v118, 1, v32) == 1)
  {

    sub_1C5625230(v49, &qword_1EC16ECA8, &qword_1C586B130);
    sub_1C56EC248(v46, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
    goto LABEL_25;
  }

  sub_1C56EC178(v64 + v70, v36, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  v74 = v135;

  v75 = sub_1C56EE970(v46, v36);
  sub_1C56EC248(v36, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C5625230(v49, &qword_1EC16ECA8, &qword_1C586B130);
  sub_1C56EC248(v46, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  v69 = v74;
  v68 = v52;
  sub_1C5625230(v64, &qword_1EC16ECA8, &qword_1C586B130);
  if ((v75 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v76 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v77 = v132;
  sub_1C56466CC(v69 + v76, v132, &qword_1EC16ECB0, &qword_1C586B138);
  v78 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v79 = *(v127 + 48);
  v80 = v130;
  sub_1C56466CC(v77, v130, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C56466CC(v68 + v78, v80 + v79, &qword_1EC16ECB0, &qword_1C586B138);
  v81 = v129;
  v82 = *(v128 + 48);
  if (v82(v80, 1, v129) == 1)
  {
    sub_1C5625230(v77, &qword_1EC16ECB0, &qword_1C586B138);
    v83 = v82(v80 + v79, 1, v81);
    v84 = v126;
    v85 = v131;
    if (v83 == 1)
    {
      sub_1C5625230(v80, &qword_1EC16ECB0, &qword_1C586B138);
      goto LABEL_34;
    }

LABEL_32:
    v71 = &qword_1EC16FC70;
    v72 = &qword_1C5875E80;
LABEL_40:
    v73 = v80;
    goto LABEL_41;
  }

  v86 = v125;
  sub_1C56466CC(v80, v125, &qword_1EC16ECB0, &qword_1C586B138);
  v87 = v82(v80 + v79, 1, v81);
  v85 = v131;
  if (v87 == 1)
  {
    sub_1C5625230(v132, &qword_1EC16ECB0, &qword_1C586B138);
    sub_1C56EC248(v86, type metadata accessor for WebPlacecardBridgeReply.MUContact);
    goto LABEL_32;
  }

  v88 = v80 + v79;
  v89 = v120;
  sub_1C56EC178(v88, v120, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  v90 = sub_1C56ECF40(v86, v89, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C56EC248(v89, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C5625230(v132, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C56EC248(v86, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C5625230(v80, &qword_1EC16ECB0, &qword_1C586B138);
  v84 = v126;
  if ((v90 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v91 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  sub_1C56466CC(v69 + v91, v85, &qword_1EC16EC50, &qword_1C586B0C8);
  v92 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  v93 = *(v121 + 48);
  v80 = v124;
  sub_1C56466CC(v85, v124, &qword_1EC16EC50, &qword_1C586B0C8);
  sub_1C56466CC(v68 + v92, v80 + v93, &qword_1EC16EC50, &qword_1C586B0C8);
  v94 = v123;
  v95 = *(v122 + 48);
  if (v95(v80, 1, v123) == 1)
  {
    sub_1C5625230(v85, &qword_1EC16EC50, &qword_1C586B0C8);
    if (v95(v80 + v93, 1, v94) == 1)
    {
      sub_1C5625230(v80, &qword_1EC16EC50, &qword_1C586B0C8);
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  sub_1C56466CC(v80, v84, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v95(v80 + v93, 1, v94) == 1)
  {
    sub_1C5625230(v85, &qword_1EC16EC50, &qword_1C586B0C8);
    sub_1C56EC248(v84, type metadata accessor for MULocation);
LABEL_39:
    v71 = &qword_1EC16FC68;
    v72 = &qword_1C5875E78;
    goto LABEL_40;
  }

  v97 = v80 + v93;
  v98 = v119;
  sub_1C56EC178(v97, v119, type metadata accessor for MULocation);
  v99 = sub_1C56F4268(v84, v98, type metadata accessor for MULocation);
  sub_1C56EC248(v98, type metadata accessor for MULocation);
  sub_1C5625230(v85, &qword_1EC16EC50, &qword_1C586B0C8);
  sub_1C56EC248(v84, type metadata accessor for MULocation);
  sub_1C5625230(v80, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((v99 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_46:
  v100 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v101 = *(v69 + v100);
  v102 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  if ((sub_1C56EA440(v101, *(v68 + v102)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v103 = (v69 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];
  v106 = (v68 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v107 = v106[1];
  if (v105)
  {
    if (!v107 || (v104 != *v106 || v105 != v107) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v107)
  {
    goto LABEL_42;
  }

  v108 = (v69 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  v111 = (v68 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v112 = v111[1];
  if (!v110)
  {
    v114 = v111[1];

    if (!v112)
    {
      return 1;
    }

    return 0;
  }

  if (!v112)
  {
LABEL_42:

    return 0;
  }

  if (v109 == *v111 && v110 == v112)
  {
    v113 = v111[1];

    return 1;
  }

  v115 = v111[1];
  v116 = sub_1C584FDC0();

  return (v116 & 1) != 0;
}

uint64_t sub_1C56D5864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9A8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D5904()
{
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);

  return sub_1C584F160();
}

uint64_t sub_1C56D5970()
{
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);

  return sub_1C584F170();
}

uint64_t sub_1C56D5A30()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190228);
  __swift_project_value_buffer(v0, qword_1EC190228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_in_supported_custom_route_region";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_disable_report_a_problem";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mkrap_is_available";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supports_showing_coordinates";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "should_exclude_flyover";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "is_authorized_for_precise_location";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D5CFC()
{
  result = sub_1C584F050();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 32);
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 36);
            break;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 40);
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 20);
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 24);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0) + 28);
            break;
          default:
            goto LABEL_17;
        }
      }

      v0 = v3;
      sub_1C584F080();
LABEL_17:
      result = sub_1C584F050();
    }
  }

  return result;
}