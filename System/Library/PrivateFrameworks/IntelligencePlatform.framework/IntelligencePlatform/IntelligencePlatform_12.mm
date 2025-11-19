uint64_t sub_1ABB52134(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    v3 = *a3;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1ABB52174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  switch(*(a2 + 64))
  {
    case 2:
      sub_1ABA7BF00();
      break;
    case 3:
      v8 = 0x47746E657665;
      goto LABEL_7;
    case 4:
      sub_1ABA7D198();
      break;
    case 5:

      goto LABEL_9;
    case 6:
      v8 = 0x476C61636F6CLL;
LABEL_7:
      sub_1ABA80704(v8);
      break;
    default:
      break;
  }

  sub_1ABA891B0();
  v9 = sub_1ABF25054();

  if (v9)
  {
LABEL_9:
    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = qword_1EB4CF230;

    if (v12 != -1)
    {
      sub_1ABA8F0DC();
      swift_once();
    }

    sub_1ABB130E0();
    v14 = v13;

    LOBYTE(v15) = v14 ^ 1;
    return v15 & 1;
  }

  if ((sub_1ABB514D8(a3) & 1) == 0)
  {
LABEL_18:
    LOBYTE(v15) = 1;
    return v15 & 1;
  }

  v16 = *(a3 + 16);
  v15 = *(a3 + 24);
  v17 = qword_1EB4CF230;

  if (v17 != -1)
  {
    sub_1ABA8F0DC();
    swift_once();
  }

  sub_1ABB130E0();
  v19 = v18;

  v20 = sub_1ABB51634(a1, a3, a2);
  if (!v5)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }

    if ((v20 & 1) == 0)
    {
      v22 = *(a3 + 16) == 0x7463656C657371 && *(a3 + 24) == 0xE700000000000000;
      if (!v22 && (sub_1ABF25054() & 1) == 0)
      {
        goto LABEL_28;
      }

      v23 = sub_1ABE719F4();
      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = v23;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v25 = *(v24 + 24);

      if (!v25 || (type metadata accessor for QueryNode(), v26 = sub_1ABE71A88(), , (v26 & 1) == 0))
      {
LABEL_28:
        v28 = *(a3 + 16);
        v27 = *(a3 + 24);
        v29 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v29 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = *(a3 + 24);

          sub_1ABE19D84(v28, v27, &v33);

          if (v34)
          {
            sub_1ABA946C0(&v33, v35);
            v31 = v36;
            v32 = v37;
            sub_1ABA93E20(v35, v36);
            LOBYTE(v33) = *(a2 + 64);
            LOBYTE(v15) = (*(v32 + 48))(a1, a3, &v33, v31, v32) ^ 1;
            sub_1ABA84B54(v35);
            return v15 & 1;
          }

          sub_1ABA925A4(&v33, &qword_1EB4D3438, &qword_1ABF3C4C0);
        }

        LOBYTE(v15) = 0;
        return v15 & 1;
      }
    }

    goto LABEL_18;
  }

  return v15 & 1;
}

uint64_t sub_1ABB52538(void *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for QueryContext() + 32);
  memcpy(__dst, (a2 + v4), 0x69uLL);
  memcpy(a1, (a2 + v4), 0x69uLL);
  sub_1ABB52954(__dst, &v6);
  return 0;
}

uint64_t sub_1ABB525B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = sub_1ABF239C4();
  *(v4 + 24) = v5;
  v7 = 0;
  sub_1ABE489A8(a3, &v7);
}

void *sub_1ABB52674@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1ABB513D0(v5);
  return memcpy(a1, v5, 0x70uLL);
}

void *sub_1ABB528E4@<X0>(void *a1@<X8>)
{
  result = (*(**v1 + 128))(v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_1ABB52954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3430, &unk_1ABF6B740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB529C4(uint64_t a1)
{
  Context = type metadata accessor for QueryContext();
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

uint64_t static ViewService.DefaultResolverInteractionsView.databaseMigrator()()
{
  v0 = sub_1ABF22714();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABF22734();
  v3 = *MEMORY[0x1E699FE90];
  v4 = v1[13];
  v5 = sub_1ABA8F0F0();
  v4(v5);
  sub_1ABF22724();
  v6 = v1[1];
  v7 = sub_1ABA7D2D8();
  v6(v7);
  v8 = sub_1ABA8F0F0();
  v4(v8);
  sub_1ABA7D2E4();
  v9 = sub_1ABA7D2D8();
  v6(v9);
  v10 = sub_1ABA8F0F0();
  v4(v10);
  sub_1ABA80814();
  v11 = sub_1ABA7D2D8();
  v6(v11);
  v12 = sub_1ABA8F0F0();
  v4(v12);
  sub_1ABA7D2E4();
  v13 = sub_1ABA7D2D8();
  v6(v13);
  v14 = sub_1ABA8F0F0();
  v4(v14);
  sub_1ABA7D2E4();
  v15 = sub_1ABA7D2D8();
  v6(v15);
  v16 = sub_1ABA8F0F0();
  v4(v16);
  sub_1ABA80814();
  v17 = sub_1ABA7D2D8();
  return (v6)(v17);
}

uint64_t sub_1ABB52CC0(uint64_t a1)
{
  v35 = a1;
  v28 = sub_1ABF222B4();
  v30 = *(v28 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABF222D4();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  *&v36[0] = MEMORY[0x1E69E7CC0];
  v16 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00]);
  v17 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
  sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
  v31 = v17;
  v32 = v16;
  sub_1ABF24964();
  v18 = v33;
  sub_1ABF22EB4();
  if (v18)
  {
    return (*(v34 + 8))(v15, v3);
  }

  v33 = v7;
  v20 = *(v34 + 8);
  v21 = v15;
  v22 = v34 + 8;
  v20(v21, v3);
  v23 = MEMORY[0x1E69E7CC0];
  *&v36[0] = MEMORY[0x1E69E7CC0];
  sub_1ABF24964();
  sub_1ABF22EB4();
  v34 = v22;
  v20(v13, v3);
  *&v36[0] = v23;
  sub_1ABF24964();
  sub_1ABF22EB4();
  v27[1] = "appIntentInvocationUUID";
  v20(v10, v3);
  *&v36[0] = v23;
  v24 = v33;
  sub_1ABF24964();
  sub_1ABF22EB4();
  v20(v24, v3);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v38 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  v25 = v28;
  v26 = v29;
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v30 + 8))(v26, v25);
  return sub_1ABA925A4(v36, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABB53270()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1ABF22E64();
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22624();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  v9 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226A4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22644();
  return sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB53664()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1ABF22E64();
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22624();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v9 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22644();
  return sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB538EC(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v21 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v21 - v14;
  sub_1ABF22DB4();
  v16 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v17 = sub_1ABF22E64();
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v18 = *MEMORY[0x1E69A00B8];
  v19 = sub_1ABF22E44();
  (*(*(v19 - 8) + 104))(v7, v18, v19);
  sub_1ABA7B9B4(v7, 0, 1, v19);
  sub_1ABA7B9B4(v5, 1, 1, v19);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF22614();
  return sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB53D4C(uint64_t a1)
{
  v26 = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  sub_1ABF22DB4();
  v25 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v15, 0, 1, v25);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v27 = sub_1ABF22E64();
  sub_1ABA7B9B4(v11, 1, 1, v27);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v23 = *MEMORY[0x1E69A00B8];
  v16 = v23;
  v17 = sub_1ABF22E44();
  v18 = *(v17 - 8);
  v22 = *(v18 + 104);
  v24 = v18 + 104;
  v22(v7, v16, v17);
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABA7B9B4(v5, 1, 1, v17);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  v19 = v25;
  sub_1ABA7B9B4(v15, 0, 1, v25);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v27);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v22(v7, v23, v17);
  sub_1ABA7B9B4(v7, 0, 1, v17);
  sub_1ABA7B9B4(v5, 1, 1, v17);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v15, 0, 1, v19);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v20 = v27;
  sub_1ABA7B9B4(v11, 1, 1, v27);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v11, 1, 1, v20);
  sub_1ABF22614();
  return sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54280()
{
  v1 = sub_1ABF222D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  result = sub_1ABF22E74();
  if (!v0)
  {
    v20[0] = v6;
    v21 = v2;
    v22 = MEMORY[0x1E69E7CC0];
    v13 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00]);
    v14 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
    sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
    v20[1] = v14;
    v20[2] = v13;
    sub_1ABF24964();
    sub_1ABF22EB4();
    v15 = *(v21 + 8);
    v15(v11, v1);
    v16 = MEMORY[0x1E69E7CC0];
    v22 = MEMORY[0x1E69E7CC0];
    sub_1ABF24964();
    sub_1ABF22EB4();
    v17 = v9;
    v18 = v15;
    v15(v17, v1);
    v22 = v16;
    v19 = v20[0];
    sub_1ABF24964();
    sub_1ABF22EB4();
    return (v18)(v19, v1);
  }

  return result;
}

uint64_t sub_1ABB545EC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1ABF22E64();
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22624();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v9 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226A4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v3, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v3, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  return sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54924()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  sub_1ABF22DB4();
  v15 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v14, 0, 1, v15);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v21 = sub_1ABF22E64();
  sub_1ABA7B9B4(v10, 1, 1, v21);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v16 = *MEMORY[0x1E69A00B8];
  v17 = sub_1ABF22E44();
  (*(*(v17 - 8) + 104))(v6, v16, v17);
  sub_1ABA7B9B4(v6, 0, 1, v17);
  sub_1ABA7B9B4(v4, 1, 1, v17);
  sub_1ABF22694();

  sub_1ABA925A4(v4, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v6, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v14, 0, 1, v15);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v18 = v21;
  sub_1ABA7B9B4(v10, 1, 1, v21);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v14, 0, 1, v15);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v18);
  sub_1ABF226C4();

  sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v14, 0, 1, v15);
  sub_1ABF22634();

  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v10, 1, 1, v18);
  sub_1ABF22614();
  return sub_1ABA925A4(v10, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54DD8(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v21 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v21 - v14;
  sub_1ABF22DB4();
  v16 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v17 = sub_1ABF22E64();
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v18 = *MEMORY[0x1E69A00B8];
  v19 = sub_1ABF22E44();
  (*(*(v19 - 8) + 104))(v7, v18, v19);
  sub_1ABA7B9B4(v7, 0, 1, v19);
  sub_1ABA7B9B4(v5, 1, 1, v19);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v7, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226A4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v15, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v15, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v11, 1, 1, v17);
  sub_1ABF22614();
  return sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB55254()
{
  v1 = sub_1ABF222B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    v7[1] = "ts WHERE source = 0";
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10 = MEMORY[0x1E69E7CC0];
    sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
    sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
    sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
    sub_1ABF24964();
    sub_1ABF22EA4();
    (*(v2 + 8))(v5, v1);
    return sub_1ABA925A4(v8, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  }

  return result;
}

uint64_t sub_1ABB55480()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12[-1] - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_1ABF22DB4();
  v8 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v13 = MEMORY[0x1E69E6530];
  v14 = MEMORY[0x1E69A0180];
  v12[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v7, 0, 1, v8);
  sub_1ABF225E4();
  sub_1ABA925A4(v7, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v13 = MEMORY[0x1E69E63B0];
  v14 = MEMORY[0x1E69A0168];
  v12[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  sub_1ABA7B9B4(v3, 1, 1, v9);
  sub_1ABF226C4();

  return sub_1ABA925A4(v3, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB5570C()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v8, v1);
  }

  v10 = *(v2 + 8);
  v10(v8, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v10)(v6, v1);
}

uint64_t sub_1ABB55898()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v4, v0);
  return sub_1ABA925A4(v6, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABB55A84()
{
  result = sub_1ABF22E74();
  if (!v0)
  {
    return sub_1ABF22E74();
  }

  return result;
}

uint64_t sub_1ABB55AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABB55B28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ViewService.DefaultResolverInteractionsView.NonIntelligenceEngineEventSource.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ABB55BA0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.NonIntelligenceEngineEventSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.occurredAt.getter()
{
  sub_1ABAA0880();
  v0 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1ABA7D000();

  return v4(v3);
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.userAlignment.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.init(occurredAt:userAlignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static ViewService.DefaultResolverInteractionsView.Interaction.== infix(_:_:)()
{
  sub_1ABA81488();
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  return *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20));
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.init(typeName:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    if (a4)
    {
      *a5 = result;
      a5[1] = a2;
      a5[2] = a3;
      a5[3] = a4;
      return result;
    }

    v5 = 1;
  }

  else
  {

    v5 = 0;
  }

  sub_1ABB5C610();
  swift_allocError();
  *v6 = v5;
  return swift_willThrow();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.ValidityError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static ViewService.DefaultResolverInteractionsView.CustomCandidateType.== infix(_:_:)(uint64_t *a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1ABF25054(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABB56030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB56100(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x656D614E65707974;
  }
}

uint64_t sub_1ABB56138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB56160(uint64_t a1)
{
  v2 = sub_1ABB5C664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB5619C(uint64_t a1)
{
  v2 = sub_1ABB5C664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CustomCandidateType.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3490, &qword_1ABF3C4F0);
  sub_1ABA7BB64(v4);
  v11 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABB5E300();
  v9 = v3[3];
  v10 = v3[4];
  sub_1ABAA02AC(v3);
  sub_1ABB5C664();
  sub_1ABA8C6FC();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  (*(v11 + 8))(v1, v4);
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABA7AB5C();
  sub_1ABAA0B5C();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CustomCandidateType.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D34A0, &qword_1ABF3C4F8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABB5C664();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    v15 = sub_1ABF24E14();
    v17 = v16;
    v18 = *(v7 + 8);
    v21 = v15;
    v19 = sub_1ABA8C53C();
    v20(v19);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v21;
    v4[3] = v17;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB56574()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CustomCandidateType.hash(into:)();
  return sub_1ABF25294();
}

uint64_t static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v88[0] = *a1;
  v88[1] = v3;
  v88[2] = v5;
  v88[3] = v4;
  v89 = v6;
  v90 = v7;
  v91 = v8;
  v92 = v10;
  v93 = v9;
  v94 = v11;
  if (!v6)
  {
    if (v11)
    {
      goto LABEL_90;
    }

    if (v3)
    {
      if (!v8)
      {
        sub_1ABA9575C();
        sub_1ABAFF488(v59, v60, v61, v62, v63);
        sub_1ABA9575C();
        sub_1ABAFF488(v64, v65, v66, v67, v68);
        v54 = sub_1ABAA48D4();
        v58 = 0;
        goto LABEL_91;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_1ABA9575C();
        sub_1ABAFF488(v70, v71, v72, v73, v74);
        v75 = sub_1ABAA48D4();
        sub_1ABAFF488(v75, v76, v77, v78, 0);
LABEL_88:
        sub_1ABB5C6B8(v88);
        return 1;
      }

      v25 = sub_1ABF25054();
      v26 = sub_1ABAA4460();
      sub_1ABAFF488(v26, v27, v28, v29, 0);
      v30 = sub_1ABAA48D4();
      sub_1ABAFF488(v30, v31, v32, v33, 0);
      sub_1ABB5C6B8(v88);
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      v42 = sub_1ABAA4460();
      sub_1ABAFF488(v42, v43, v44, v45, 0);
      sub_1ABAFF488(v2, 0, v5, v4, 0);
      sub_1ABB5C6B8(v88);
      if (v8)
      {
        v46 = sub_1ABAA4460();
        sub_1ABAFF544(v46, v47, v48, v49, 0);
        return 0;
      }
    }

    return 1;
  }

  if (v6 != 1)
  {
    if (v5 | v3 | v2 | v4)
    {
      v34 = v5 | v3 | v4;
      if (v2 != 1 || v34)
      {
        if (v2 != 2 || v34)
        {
          if (v2 != 3 || v34)
          {
            if (v2 != 4 || v34)
            {
              if (v2 != 5 || v34)
              {
                if (v2 != 6 || v34)
                {
                  if (v11 != 2 || v7 != 7)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v11 != 2 || v7 != 6)
                {
                  goto LABEL_90;
                }
              }

              else if (v11 != 2 || v7 != 5)
              {
                goto LABEL_90;
              }
            }

            else if (v11 != 2 || v7 != 4)
            {
              goto LABEL_90;
            }
          }

          else if (v11 != 2 || v7 != 3)
          {
            goto LABEL_90;
          }
        }

        else if (v11 != 2 || v7 != 2)
        {
          goto LABEL_90;
        }
      }

      else if (v11 != 2 || v7 != 1)
      {
        goto LABEL_90;
      }

      if (v10 | v8 | v9)
      {
LABEL_90:
        v82 = sub_1ABAA4460();
        sub_1ABAFF488(v82, v83, v84, v85, v86);
        v54 = sub_1ABAA48D4();
        v58 = v6;
        goto LABEL_91;
      }
    }

    else if (v11 != 2 || v10 | v8 | v7 | v9)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (v11 != 1)
  {
    goto LABEL_90;
  }

  v12 = v2 == v7 && v3 == v8;
  if (!v12 && (sub_1ABF25054() & 1) == 0)
  {
    v50 = sub_1ABAA4460();
    sub_1ABAFF488(v50, v51, v52, v53, 1);
    v54 = sub_1ABAA48D4();
    v58 = 1;
LABEL_91:
    sub_1ABAFF488(v54, v55, v56, v57, v58);
    sub_1ABB5C6B8(v88);
    return 0;
  }

  if (v5 != v10 || v4 != v9)
  {
    sub_1ABA9575C();
    v14 = sub_1ABF25054();
    v15 = 1;
    v16 = sub_1ABAA4460();
    sub_1ABAFF488(v16, v17, v18, v19, 1);
    v20 = sub_1ABAA48D4();
    sub_1ABAFF488(v20, v21, v22, v23, 1);
    sub_1ABB5C6B8(v88);
    if (v14)
    {
      return v15;
    }

    return 0;
  }

  v15 = 1;
  sub_1ABAFF488(v7, v8, v5, v4, 1);
  v37 = sub_1ABAA48D4();
  sub_1ABAFF488(v37, v38, v39, v40, 1);
  sub_1ABB5C6B8(v88);
  return v15;
}

uint64_t sub_1ABB56918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1819242356 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7368801 && a2 == 0xE300000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701603686 && a2 == 0xE400000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABB56C24(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x766974696D697270;
      break;
    case 2:
      result = 0x656369766564;
      break;
    case 3:
      result = 0x616D65686373;
      break;
    case 4:
      result = 1819242356;
      break;
    case 5:
      result = 7368801;
      break;
    case 6:
      result = 1701603686;
      break;
    case 7:
      result = 0x6E6F73726570;
      break;
    case 8:
      result = 0x72616D6563616C70;
      break;
    case 9:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB56D1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB56DA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB56E34(uint64_t a1)
{
  v2 = sub_1ABB5C918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB56E70(uint64_t a1)
{
  v2 = sub_1ABB5C918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB56ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB56EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB56C1C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB56F1C(uint64_t a1)
{
  v2 = sub_1ABB5C720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB56F58(uint64_t a1)
{
  v2 = sub_1ABB5C720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB56F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56D1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB56FC4(uint64_t a1)
{
  v2 = sub_1ABB5C774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57000(uint64_t a1)
{
  v2 = sub_1ABB5C774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5703C(uint64_t a1)
{
  v2 = sub_1ABB5CA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57078(uint64_t a1)
{
  v2 = sub_1ABB5CA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB570B4(uint64_t a1)
{
  v2 = sub_1ABB5C8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB570F0(uint64_t a1)
{
  v2 = sub_1ABB5C8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5712C(uint64_t a1)
{
  v2 = sub_1ABB5C870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57168(uint64_t a1)
{
  v2 = sub_1ABB5C870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB571A4(uint64_t a1)
{
  v2 = sub_1ABB5C81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB571E0(uint64_t a1)
{
  v2 = sub_1ABB5C81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5721C(uint64_t a1)
{
  v2 = sub_1ABB5CA68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57258(uint64_t a1)
{
  v2 = sub_1ABB5CA68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB57294(uint64_t a1)
{
  v2 = sub_1ABB5C9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB572D0(uint64_t a1)
{
  v2 = sub_1ABB5C9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB57310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56DA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB5733C(uint64_t a1)
{
  v2 = sub_1ABB5C96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57378(uint64_t a1)
{
  v2 = sub_1ABB5C96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB573B4(uint64_t a1)
{
  v2 = sub_1ABB5CABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB573F0(uint64_t a1)
{
  v2 = sub_1ABB5CABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CandidateType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v26 = sub_1ABAD219C(&qword_1EB4D34B0, &qword_1ABF3C508);
  v27 = sub_1ABA7BB64(v26);
  v138 = v28;
  v139 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v137 = v32;
  v120 = sub_1ABAD219C(&qword_1EB4D34B8, &qword_1ABF3C510);
  sub_1ABA7BB64(v120);
  v119 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v37);
  v118 = sub_1ABAD219C(&qword_1EB4D34C0, &qword_1ABF3C518);
  sub_1ABA7BB64(v118);
  v117[1] = v38;
  v40 = *(v39 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v42);
  v122 = sub_1ABAD219C(&qword_1EB4D34C8, &qword_1ABF3C520);
  sub_1ABA7BB64(v122);
  v121 = v43;
  v45 = *(v44 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v47);
  v124 = sub_1ABAD219C(&qword_1EB4D34D0, &qword_1ABF3C528);
  sub_1ABA7BB64(v124);
  v123 = v48;
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v52);
  v53 = sub_1ABAD219C(&qword_1EB4D34D8, &qword_1ABF3C530);
  v54 = sub_1ABA7BB64(v53);
  v135 = v55;
  v136 = v54;
  v57 = *(v56 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA7FBE0();
  v134 = v59;
  v126 = sub_1ABAD219C(&qword_1EB4D34E0, &qword_1ABF3C538);
  sub_1ABA7BB64(v126);
  v125 = v60;
  v62 = *(v61 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v63);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v64);
  v65 = sub_1ABAD219C(&qword_1EB4D34E8, &qword_1ABF3C540);
  v66 = sub_1ABA7BB64(v65);
  v127 = v67;
  v128 = v66;
  v69 = *(v68 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v71);
  v72 = sub_1ABAD219C(&qword_1EB4D34F0, &qword_1ABF3C548);
  v73 = sub_1ABA7BB64(v72);
  v130 = v74;
  v131 = v73;
  v76 = *(v75 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA7FBE0();
  v129 = v78;
  v79 = sub_1ABAD219C(&qword_1EB4D34F8, &qword_1ABF3C550);
  v80 = sub_1ABA7BB64(v79);
  v132 = v81;
  v133 = v80;
  v83 = *(v82 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v84);
  v86 = v117 - v85;
  v87 = sub_1ABAD219C(&qword_1EB4D3500, &qword_1ABF3C558);
  v142 = sub_1ABA7BB64(v87);
  v143 = v88;
  v90 = *(v89 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v91);
  v93 = v117 - v92;
  v94 = *v20;
  v140 = *(v20 + 1);
  v96 = *(v20 + 2);
  v95 = *(v20 + 3);
  v97 = v20[32];
  v98 = v25;
  v99 = v25[3];
  v100 = v98[4];
  sub_1ABAA02AC(v98);
  sub_1ABB5C720();
  v141 = v93;
  sub_1ABF252E4();
  if (!v97)
  {
    LOBYTE(v144) = 4;
    sub_1ABB5C96C();
    v107 = v141;
    v106 = v142;
    sub_1ABF24EC4();
    sub_1ABF24ED4();
    v108 = *(v135 + 8);
    v109 = sub_1ABA8C53C();
    v110(v109);
    (*(v143 + 8))(v107, v106);
    goto LABEL_30;
  }

  if (v97 != 1)
  {
    if (v96 | v140 | v94 | v95)
    {
      v111 = v96 | v140 | v95;
      if (v94 != 1 || v111)
      {
        if (v94 != 2 || v111)
        {
          if (v94 != 3 || v111)
          {
            if (v94 != 4 || v111)
            {
              if (v94 != 5 || v111)
              {
                if (v94 != 6 || v111)
                {
                  LOBYTE(v144) = 8;
                  sub_1ABB5C81C();
                  sub_1ABAA281C(&v146);
                  v114 = sub_1ABAB5C74(&v147);
                  v116 = &v148;
                }

                else
                {
                  LOBYTE(v144) = 7;
                  sub_1ABB5C870();
                  sub_1ABAA281C(&v143);
                  v114 = sub_1ABAB5C74(&v144);
                  v116 = &v145;
                }
              }

              else
              {
                LOBYTE(v144) = 6;
                sub_1ABB5C8C4();
                sub_1ABAA281C(&a9);
                v114 = sub_1ABAB5C74(&a10);
                v116 = &a11;
              }
            }

            else
            {
              LOBYTE(v144) = 5;
              sub_1ABB5C918();
              sub_1ABAA281C(&a12);
              v114 = sub_1ABAB5C74(&a13);
              v116 = &a14;
            }
          }

          else
          {
            LOBYTE(v144) = 3;
            sub_1ABB5C9C0();
            sub_1ABAA281C(&a15);
            v114 = sub_1ABAB5C74(&a16);
            v116 = &a17;
          }

          v115(v114, *(v116 - 32));
          goto LABEL_29;
        }

        LOBYTE(v144) = 2;
        sub_1ABB5CA14();
        sub_1ABAA281C(&a18);
        v113 = v127;
        v112 = v128;
      }

      else
      {
        LOBYTE(v144) = 1;
        sub_1ABB5CA68();
        v96 = v129;
        v20 = v141;
        v95 = v142;
        sub_1ABF24EC4();
        v113 = v130;
        v112 = v131;
      }

      (*(v113 + 8))(v96, v112);
    }

    else
    {
      LOBYTE(v144) = 0;
      sub_1ABB5CABC();
      v20 = v141;
      v95 = v142;
      sub_1ABF24EC4();
      (*(v132 + 8))(v86, v133);
    }

LABEL_29:
    (*(v143 + 8))(v20, v95);
    goto LABEL_30;
  }

  LOBYTE(v144) = 9;
  sub_1ABB5C774();
  v102 = v141;
  v101 = v142;
  sub_1ABF24EC4();
  v144 = v94;
  v145 = v140;
  v146 = v96;
  v147 = v95;
  sub_1ABB5C7C8();
  sub_1ABF24F84();
  v103 = *(v138 + 8);
  v104 = sub_1ABA7AC64();
  v105(v104);
  (*(v143 + 8))(v102, v101);
LABEL_30:
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    MEMORY[0x1AC5AA8A0](4);
    if (!v2)
    {
      return sub_1ABF25254();
    }

    sub_1ABF25254();
    sub_1ABAA0B5C();
    goto LABEL_6;
  }

  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) == 1)
  {
    MEMORY[0x1AC5AA8A0](9);
    sub_1ABAA0B5C();
    sub_1ABF23D34();
LABEL_6:

    return sub_1ABF23D34();
  }

  if (v4 | v2 | v1 | v3)
  {
    v6 = v4 | v2 | v3;
    if (v1 == 1 && v6 == 0)
    {
      v8 = 1;
    }

    else if (v1 != 2 || v6)
    {
      if (v1 != 3 || v6)
      {
        if (v1 != 4 || v6)
        {
          if (v1 != 5 || v6)
          {
            if (v1 != 6 || v6)
            {
              v8 = 8;
            }

            else
            {
              v8 = 7;
            }
          }

          else
          {
            v8 = 6;
          }
        }

        else
        {
          v8 = 5;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1AC5AA8A0](v8);
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateType.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1ABA7AB5C();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CandidateType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v184 = v25;
  v176 = sub_1ABAD219C(&qword_1EB4D3568, &qword_1ABF3C560);
  sub_1ABA7BB64(v176);
  v178 = v26;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v183 = v30;
  v31 = sub_1ABAD219C(&qword_1EB4D3570, &qword_1ABF3C568);
  v32 = sub_1ABA7BB64(v31);
  v174 = v33;
  v175 = v32;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  v182 = v37;
  v38 = sub_1ABAD219C(&qword_1EB4D3578, &qword_1ABF3C570);
  v39 = sub_1ABA7BB64(v38);
  v172 = v40;
  v173 = v39;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v186 = v44;
  v171 = sub_1ABAD219C(&qword_1EB4D3580, &qword_1ABF3C578);
  sub_1ABA7BB64(v171);
  v170 = v45;
  v47 = *(v46 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA7FBE0();
  v185 = v49;
  v167 = sub_1ABAD219C(&qword_1EB4D3588, &qword_1ABF3C580);
  sub_1ABA7BB64(v167);
  v168 = v50;
  v52 = *(v51 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7FBE0();
  v181 = v54;
  v169 = sub_1ABAD219C(&qword_1EB4D3590, &qword_1ABF3C588);
  sub_1ABA7BB64(v169);
  v177 = v55;
  v57 = *(v56 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA7FBE0();
  v187 = v59;
  v166 = sub_1ABAD219C(&qword_1EB4D3598, &qword_1ABF3C590);
  sub_1ABA7BB64(v166);
  v165 = v60;
  v62 = *(v61 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v63);
  sub_1ABA7FBE0();
  v180 = v64;
  v164 = sub_1ABAD219C(&qword_1EB4D35A0, &qword_1ABF3C598);
  sub_1ABA7BB64(v164);
  v163 = v65;
  v67 = *(v66 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v68);
  sub_1ABA7FBE0();
  v179 = v69;
  v162 = sub_1ABAD219C(&qword_1EB4D35A8, &qword_1ABF3C5A0);
  sub_1ABA7BB64(v162);
  v161 = v70;
  v72 = *(v71 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v154 - v74;
  v76 = sub_1ABAD219C(&qword_1EB4D35B0, &qword_1ABF3C5A8);
  sub_1ABA7BB64(v76);
  v160 = v77;
  v79 = *(v78 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v154 - v81;
  v83 = sub_1ABAD219C(&qword_1EB4D35B8, &unk_1ABF3C5B0);
  sub_1ABA7BB64(v83);
  v85 = v84;
  v87 = *(v86 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v154 - v89;
  v91 = v24[3];
  v92 = v24[4];
  v188 = v24;
  sub_1ABAA02AC(v24);
  sub_1ABB5C720();
  v93 = a10;
  sub_1ABF252C4();
  if (v93)
  {
    goto LABEL_8;
  }

  v158 = v82;
  v157 = v76;
  v159 = v75;
  v95 = v186;
  v94 = v187;
  v96 = v185;
  a10 = v85;
  v97 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v97, 0);
  if (v99 == v100 >> 1)
  {
LABEL_7:
    v113 = a10;
    v114 = sub_1ABF24B44();
    swift_allocError();
    v116 = v115;
    v117 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v116 = &type metadata for ViewService.DefaultResolverInteractionsView.CandidateType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v114 - 8) + 104))(v116, *MEMORY[0x1E69E6AF8], v114);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v113 + 8))(v90, v83);
LABEL_8:
    v118 = v188;
LABEL_9:
    sub_1ABA84B54(v118);
    sub_1ABA7BC90();
    return;
  }

  v156 = 0;
  if (v99 < (v100 >> 1))
  {
    v155 = *(v98 + v99);
    sub_1ABAD4E90(v99 + 1);
    v102 = v101;
    v104 = v103;
    swift_unknownObjectRelease();
    if (v102 == v104 >> 1)
    {
      v105 = v184;
      switch(v155)
      {
        case 1:
          LOBYTE(v189) = 1;
          sub_1ABB5CA68();
          v94 = v159;
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          v130 = sub_1ABA80580(&v193);
          v131(v130, v162);
          v132 = sub_1ABA8E124();
          v133(v132);
          sub_1ABAA3F88();
          v110 = 1;
          goto LABEL_20;
        case 2:
          LOBYTE(v189) = 2;
          sub_1ABB5CA14();
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          v120 = sub_1ABA80580(&a10);
          v121(v120, v164);
          v122 = sub_1ABA8E124();
          v123(v122);
          v94 = 0;
          v111 = 0;
          v112 = 0;
          v110 = 2;
          goto LABEL_13;
        case 3:
          LOBYTE(v189) = 3;
          sub_1ABB5C9C0();
          v94 = v180;
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          v124 = sub_1ABA80580(&a12);
          v125(v124, v166);
          v126 = sub_1ABA8E124();
          v127(v126);
          sub_1ABAA3F88();
          v110 = 3;
          goto LABEL_20;
        case 4:
          LOBYTE(v189) = 4;
          sub_1ABB5C96C();
          sub_1ABAA378C();
          v119 = sub_1ABF24DB4();
          v118 = v188;
          v110 = v119;
          v94 = v144;
          swift_unknownObjectRelease();
          v145 = sub_1ABA8CC7C();
          v146(v145);
          v147 = sub_1ABA8E124();
          v148(v147);
          v111 = 0;
          v112 = 0;
          v149 = 0;
          goto LABEL_21;
        case 5:
          LOBYTE(v189) = 5;
          sub_1ABB5C918();
          v94 = v181;
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          v134 = sub_1ABA80580(&a15);
          v135(v134, v167);
          v136 = sub_1ABA8E124();
          v137(v136);
          sub_1ABAA3F88();
          v110 = 4;
          goto LABEL_20;
        case 6:
          LOBYTE(v189) = 6;
          sub_1ABB5C8C4();
          v94 = v96;
          sub_1ABA974A0();
          swift_unknownObjectRelease();
          v138 = sub_1ABA80580(&a17);
          v139(v138, v171);
          v140 = sub_1ABA8E124();
          v141(v140);
          sub_1ABAA3F88();
          v110 = 5;
          goto LABEL_20;
        case 7:
          LOBYTE(v189) = 7;
          sub_1ABB5C870();
          sub_1ABA974A0();
          swift_unknownObjectRelease();
          (*(v172 + 8))(v95, v173);
          v128 = sub_1ABA8E124();
          v129(v128);
          sub_1ABAA3F88();
          v110 = 6;
          goto LABEL_20;
        case 8:
          LOBYTE(v189) = 8;
          sub_1ABB5C81C();
          v94 = v182;
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          (*(v174 + 8))(v94, v175);
          v142 = sub_1ABA8E124();
          v143(v142);
          sub_1ABAA3F88();
          v110 = 7;
          goto LABEL_20;
        case 9:
          LOBYTE(v189) = 9;
          sub_1ABB5C774();
          sub_1ABA974A0();
          sub_1ABB5CB10();
          sub_1ABF24E64();
          v118 = v188;
          swift_unknownObjectRelease();
          v150 = sub_1ABA96F6C();
          v151(v150);
          v152 = sub_1ABA8E124();
          v153(v152);
          v110 = v189;
          v94 = v190;
          v149 = 1;
          v111 = v191;
          v112 = v192;
          goto LABEL_21;
        default:
          LOBYTE(v189) = 0;
          sub_1ABB5CABC();
          sub_1ABAA378C();
          swift_unknownObjectRelease();
          v106 = sub_1ABA80580(&v192);
          v107(v106, v157);
          v108 = sub_1ABA8E124();
          v109(v108);
          v110 = 0;
          v94 = 0;
          v111 = 0;
          v112 = 0;
LABEL_13:
          v149 = 2;
LABEL_20:
          v118 = v188;
LABEL_21:
          *v105 = v110;
          *(v105 + 8) = v94;
          *(v105 + 16) = v111;
          *(v105 + 24) = v112;
          *(v105 + 32) = v149;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABB58B4C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  return sub_1ABF25294();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  return sub_1ABAFF488(v2, v3, v4, v5, v6);
}

double ViewService.DefaultResolverInteractionsView.CandidateID.init(id:bundleId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 2;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.init(id:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = *(a3 + 32);
  if (!*(a3 + 32))
  {
    if (v7)
    {
      v16 = a3[1];

      v14 = v8;
      v15 = v7;
      goto LABEL_7;
    }

LABEL_6:

    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v11 != 1)
  {
    goto LABEL_6;
  }

  v12 = a3[3];

  v14 = v10;
  v15 = v9;
LABEL_7:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = v8;
  *(a4 + 40) = v7;
  *(a4 + 48) = v10;
  *(a4 + 56) = v9;
  *(a4 + 64) = v11;
  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.CandidateID.== infix(_:_:)(uint64_t *a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v41 = *(v5 + 40);
  v42 = *(v5 + 32);
  v7 = *(v5 + 56);
  v40 = *(v5 + 48);
  v8 = *(v5 + 64);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v14 = *(v4 + 56);
  v15 = v2 == *v4 && v3 == *(v4 + 8);
  v39 = *(v4 + 64);
  if (v15 || (sub_1ABF25054()) && (v1 == v9 ? (v16 = v6 == v10) : (v16 = 0), v16 || (sub_1ABA7D000(), (sub_1ABF25054())))
  {
    v45[0] = v42;
    v45[1] = v41;
    v45[2] = v40;
    v45[3] = v7;
    v46 = v8;
    v43[0] = v11;
    v43[1] = v12;
    v43[2] = v13;
    v43[3] = v14;
    v44 = v39;
    sub_1ABB5E33C();
    sub_1ABAFF488(v17, v18, v19, v20, v21);
    v22 = sub_1ABAB50AC();
    sub_1ABAFF488(v22, v23, v24, v25, v26);
    v27 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(v45, v43);
    v28 = sub_1ABAB50AC();
    sub_1ABAFF544(v28, v29, v30, v31, v32);
    sub_1ABB5E33C();
    sub_1ABAFF544(v33, v34, v35, v36, v37);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1ABB58DF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701869940 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB58EF8(unsigned __int8 a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB58F38(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 1701869940;
}

uint64_t sub_1ABB58F7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB58FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB58DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB58FF8(uint64_t a1)
{
  v2 = sub_1ABB5CB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB59034(uint64_t a1)
{
  v2 = sub_1ABB5CB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CandidateID.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D35C8, &qword_1ABF3C5C0);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABB5E300();
  v15 = *(v0 + 40);
  v16 = *(v0 + 32);
  v13 = *(v0 + 56);
  v14 = *(v0 + 48);
  v17 = *(v0 + 64);
  v11 = v4[3];
  v12 = v4[4];
  sub_1ABAA02AC(v4);
  sub_1ABB5CB64();
  sub_1ABA8C6FC();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAFF488(v16, v15, v14, v13, v17);
    sub_1ABB5CBB8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABAFF544(v16, v15, v14, v13, v17);
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 64);
  sub_1ABF23D34();
  sub_1ABF23D34();
  v8 = *(v0 + 3);
  v7 = *(v0 + 2);
  return ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 64);
  sub_1ABF25234();
  sub_1ABAA0B5C();
  sub_1ABF23D34();
  sub_1ABF23D34();
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)();
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CandidateID.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D35E0, &qword_1ABF3C5C8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABB5CB64();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v10 = sub_1ABA8B854();
    v12 = v11;
    v23 = v10;
    LOBYTE(v25[0]) = 1;
    v21 = sub_1ABA8B854();
    v22 = v13;
    sub_1ABB5CC0C();
    sub_1ABF24E64();
    v14 = sub_1ABA7ABFC();
    v15(v14);
    v20 = v27;
    v19 = v28;
    v16 = v30;
    v18 = v29;
    v17 = v31;
    v24[0] = v23;
    v24[1] = v12;
    v24[2] = v21;
    v24[3] = v22;
    v24[4] = v27;
    v24[5] = v28;
    v24[6] = v29;
    v24[7] = v30;
    LOBYTE(v24[8]) = v31;
    memcpy(v4, v24, 0x41uLL);
    sub_1ABB24348(v24, v25);
    sub_1ABA84B54(v2);
    v25[0] = v23;
    v25[1] = v12;
    v25[2] = v21;
    v25[3] = v22;
    v25[4] = v20;
    v25[5] = v19;
    v25[6] = v18;
    v25[7] = v16;
    v26 = v17;
    sub_1ABB243A4(v25);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB5960C()
{
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CandidateID.hash(into:)();
  return sub_1ABF25294();
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.candidateInteractions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.tupleInteractions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.init(candidateInteractions:tupleInteractions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.originId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.occurredAt.getter()
{
  v2 = sub_1ABAA0880();
  v3 = *(type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v2) + 24);
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.tuple.getter()
{
  v1 = *(v0 + *(type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0) + 28));
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.tupleInteractionUserAlignment.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.candidateInteractions.getter()
{
  v1 = *(v0 + *(type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0) + 36));
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.init(eventId:originId:occurredAt:tuple:tupleInteractionUserAlignment:candidateInteractions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v12 = *a6;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v13 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v14 = v13[6];
  v15 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v15);
  result = (*(v16 + 32))(&a8[v14], a4);
  *&a8[v13[7]] = a5;
  a8[v13[8]] = v12;
  *&a8[v13[9]] = a7;
  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Event.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1ABA81488();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v7 = v6[6];
  if ((sub_1ABF21E54() & 1) == 0 || (sub_1ABB49A30(*(v3 + v6[7]), *(v2 + v6[7])) & 1) == 0 || *(v3 + v6[8]) != *(v2 + v6[8]))
  {
    return 0;
  }

  v8 = v6[9];
  v9 = *(v3 + v8);
  v10 = *(v2 + v8);

  return sub_1ABB5C470(v9, v10);
}

void sub_1ABB599B8()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D37E8, &qword_1ABF3D850);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB59C20()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D37D8, &unk_1ABF3D840);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB59E88()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D37C8, &qword_1ABF3D830);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A0F0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D37B8, &unk_1ABF3D820);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A358()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D37A8, &qword_1ABF3D810);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A5C0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D3798, &unk_1ABF3D800);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D37A0, &unk_1ABF617C0);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A828()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v8 = sub_1ABA7BB64(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA972D4();
  v12 = sub_1ABAD219C(&qword_1EB4D3788, &unk_1ABF3D7F0);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  sub_1ABAA06BC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA972D4();
  if (v6 != v4 && (sub_1ABA8BC40(), v17))
  {
    v18 = 0;
    v20 = *(v6 + 64);
    v19 = v6 + 64;
    v21 = *(v19 - 32);
    sub_1ABA8FEA0();
    sub_1ABAB5464();
    while (v22)
    {
      sub_1ABAA2514();
      v51 = v23;
LABEL_11:
      v27 = sub_1ABAA1734();
      v28(v27);
      v29 = sub_1ABAD219C(&qword_1EB4D3790, &unk_1ABF61850);
      v30 = sub_1ABAA14C8(v29);
      v31(v30);
      v32 = sub_1ABA8C548();
      sub_1ABA7B9B4(v32, v33, v34, v35);

LABEL_12:
      sub_1ABAE2F1C();
      v36 = sub_1ABA8B644();
      v37 = sub_1ABAA0A38();
      if (sub_1ABA7E1E0(v37, v38, v36) == 1)
      {
        goto LABEL_18;
      }

      v39 = sub_1ABAB5638();
      v40(v39);
      v0 = sub_1ABA94FC8(v0, &unk_1ABF61850);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        v49 = sub_1ABA8CA98();
        v50(v49);
        goto LABEL_18;
      }

      v43 = sub_1ABAB59F8();
      v44(v43);
      sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA03E8();
      v45 = sub_1ABA9546C();
      (unk_1ABF61850)(v45);
      (unk_1ABF61850)(v2, v7);
      v22 = v51;
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v1)
      {
        sub_1ABA8B644();
        v46 = sub_1ABAA0A38();
        sub_1ABA7B9B4(v46, v47, 1, v48);
        v51 = 0;
        goto LABEL_12;
      }

      ++v18;
      if (*(v19 + 8 * v24))
      {
        sub_1ABA9A2F8();
        v51 = v25;
        v18 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5AB68()
{
  sub_1ABA8BA68();
  v29 = v2;
  if (v0 != v1 && (v3 = v1, v4 = v0, sub_1ABAA2FD8(v0, v1), v5))
  {
    v6 = 0;
    v7 = *(v4 + 64);
    v8 = *(v4 + 32);
    sub_1ABA7D32C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v18 = v14 | (v6 << 6);
      v19 = (*(v4 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(v4 + 56) + 8 * v18);

      v23 = sub_1ABA94FC8(v20, v21);
      v25 = v24;

      if ((v25 & 1) == 0)
      {

        goto LABEL_17;
      }

      v26 = *(*(v3 + 56) + 8 * v23);

      v28 = v29(v27, v22);

      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v4 + 64 + 8 * v6))
      {
        sub_1ABA96BF4();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1ABA8D208();
  }
}

void sub_1ABB5ACA8()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v8 = sub_1ABA7BB64(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA972D4();
  v12 = sub_1ABAD219C(&qword_1EB4D3778, &unk_1ABF3D7E0);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  sub_1ABAA06BC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA972D4();
  if (v6 != v4 && (sub_1ABA8BC40(), v17))
  {
    v18 = 0;
    v20 = *(v6 + 64);
    v19 = v6 + 64;
    v21 = *(v19 - 32);
    sub_1ABA8FEA0();
    sub_1ABAB5464();
    while (v22)
    {
      sub_1ABAA2514();
      v51 = v23;
LABEL_11:
      v27 = sub_1ABAA1734();
      v28(v27);
      v29 = sub_1ABAD219C(&qword_1EB4D3780, &unk_1ABF61800);
      v30 = sub_1ABAA14C8(v29);
      v31(v30);
      v32 = sub_1ABA8C548();
      sub_1ABA7B9B4(v32, v33, v34, v35);

LABEL_12:
      sub_1ABAE2F1C();
      v36 = sub_1ABA8B644();
      v37 = sub_1ABAA0A38();
      if (sub_1ABA7E1E0(v37, v38, v36) == 1)
      {
        goto LABEL_18;
      }

      v39 = sub_1ABAB5638();
      v40(v39);
      v0 = sub_1ABA94FC8(v0, &unk_1ABF61800);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        v49 = sub_1ABA8CA98();
        v50(v49);
        goto LABEL_18;
      }

      v43 = sub_1ABAB59F8();
      v44(v43);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA03E8();
      v45 = sub_1ABA9546C();
      (unk_1ABF61800)(v45);
      (unk_1ABF61800)(v2, v7);
      v22 = v51;
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v1)
      {
        sub_1ABA8B644();
        v46 = sub_1ABAA0A38();
        sub_1ABA7B9B4(v46, v47, 1, v48);
        v51 = 0;
        goto LABEL_12;
      }

      ++v18;
      if (*(v19 + 8 * v24))
      {
        sub_1ABA9A2F8();
        v51 = v25;
        v18 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5AFB8()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D3760, &qword_1ABF3D7D0);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B220()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D3750, &unk_1ABF61910);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B488()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D3740, &qword_1ABF3D7A8);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B6F0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = sub_1ABA7BB64(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA5750(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1ABAD219C(&qword_1EB4D3728, &qword_1ABF618E0);
  v18 = sub_1ABA7AB80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA992E4();
  if (!v22 && (sub_1ABA97A24(), v22))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v25 = sub_1ABA7EF18();
      v26(v25);
      v27 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
      v28 = sub_1ABA80834(v27);
      v29(v28);
      v30 = sub_1ABAA521C();
      sub_1ABB5E2E8(v30, v31, v32, v33);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v34 = sub_1ABA885C8();
      sub_1ABAA5F50(v34);
      if (v22)
      {
        goto LABEL_19;
      }

      v35 = sub_1ABA7BF14();
      v36(v35);
      v37 = sub_1ABA96018();
      v38 = sub_1ABAFF5B8(v37);
      if ((v39 & 1) == 0)
      {
        v45 = sub_1ABA83FB0();
        v46(v45);
        goto LABEL_19;
      }

      v40 = sub_1ABA7D300(v38);
      v41(v40);
      sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8();
      v42 = sub_1ABA83714();
      v3(v42);
      v43 = sub_1ABA7AC64();
      v3(v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v23 >= v2)
      {
        v44 = sub_1ABA885C8();
        sub_1ABA90648(v44);
        goto LABEL_12;
      }

      sub_1ABA95254(v23);
      if (v24)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B958()
{
  sub_1ABB5E318();
  if (v2 != v3 && (sub_1ABAABC68(), sub_1ABAA2FD8(v4, v5), v6))
  {
    v7 = 0;
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    sub_1ABA7D32C();
    v12 = v11 & v10;
    sub_1ABAA1BB4();
    while (v12)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v13) != 9)
      {
        sub_1ABB5E330(v18);
        v20 = sub_1ABAFF5B8(v19);
        if (v21)
        {
          sub_1ABAA1EA4(v20);
          if (v6)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v1)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v15)
      {
        sub_1ABA96BF4();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BA38()
{
  sub_1ABB5E318();
  if (v2 != v3 && (sub_1ABAABC68(), sub_1ABAA2FD8(v4, v5), v6))
  {
    v7 = 0;
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    sub_1ABA7D32C();
    v12 = v11 & v10;
    sub_1ABAA1BB4();
    while (v12)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v13) != 7)
      {
        sub_1ABB5E330(v18);
        v20 = sub_1ABAFF5B8(v19);
        if (v21)
        {
          sub_1ABAA1EA4(v20);
          if (v6)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v1)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v15)
      {
        sub_1ABA96BF4();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BB00()
{
  sub_1ABB5E318();
  if (v2 != v3 && (sub_1ABAABC68(), sub_1ABAA2FD8(v4, v5), v6))
  {
    v7 = 0;
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    sub_1ABA7D32C();
    v12 = v11 & v10;
    sub_1ABAA1BB4();
    while (v12)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v13) != 5)
      {
        sub_1ABB5E330(v18);
        v20 = sub_1ABAFF5B8(v19);
        if (v21)
        {
          sub_1ABAA1EA4(v20);
          if (v6)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v1)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v15)
      {
        sub_1ABA96BF4();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BBC8()
{
  sub_1ABB5E318();
  if (v2 != v3 && (sub_1ABAABC68(), sub_1ABAA2FD8(v4, v5), v6))
  {
    v7 = 0;
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    sub_1ABA7D32C();
    v12 = v11 & v10;
    sub_1ABAA1BB4();
    while (v12)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v13) != 8)
      {
        sub_1ABB5E330(v18);
        v20 = sub_1ABAFF5B8(v19);
        if (v21)
        {
          sub_1ABAA1EA4(v20);
          if (v6)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v1)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v15)
      {
        sub_1ABA96BF4();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BC90()
{
  sub_1ABB5E318();
  if (v0 != v1 && (v2 = v0, sub_1ABAA2FD8(v0, v1), v4))
  {
    v5 = v3;
    v6 = 0;
    v7 = *(v2 + 64);
    v8 = *(v2 + 32);
    sub_1ABA7D32C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v18 = v14 | (v6 << 6);
      if (*(*(v2 + 48) + v18) != 4)
      {
        v19 = *(*(v2 + 56) + 8 * v18);
        v20 = v5();
        if (v21)
        {
          sub_1ABAA1EA4(v20);
          if (v4)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_15;
      }

      ++v15;
      if (*(v2 + 64 + 8 * v6))
      {
        sub_1ABA96BF4();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BD84()
{
  sub_1ABA7E2A8();
  sub_1ABAABC68();
  v2 = type metadata accessor for CodableLocation();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1ABA7AC18();
  v52 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA972D4();
  v50 = v7;
  v8 = sub_1ABAD219C(&qword_1EB4D3718, &qword_1ABF3D790);
  v9 = sub_1ABA7AB80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  if (v0 == v1 || *(v0 + 16) != *(v1 + 16))
  {
LABEL_17:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }

  else
  {
    v48 = v0;
    v49 = v13;
    v16 = 0;
    v18 = *(v0 + 64);
    v17 = v0 + 64;
    v19 = *(v17 - 32);
    sub_1ABA8FEA0();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    v53 = v15;
    while (v22)
    {
      sub_1ABAA2514();
      v54 = v25;
      v27 = v26 | (v16 << 6);
      v28 = v49;
LABEL_11:
      v33 = v48;
      v34 = v50;
      sub_1ABAFEEF4(*(v48 + 48) + *(v51 + 72) * v27, v50);
      v35 = *(*(v33 + 56) + 8 * v27);
      v36 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
      v37 = *(v36 + 48);
      sub_1ABB5E1C0(v34, v28);
      *(v28 + v37) = v35;
      sub_1ABA7B9B4(v28, 0, 1, v36);
      v15 = v53;
LABEL_12:
      sub_1ABAE2F1C();
      v38 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
      if (sub_1ABA7E1E0(v15, 1, v38) != 1)
      {
        v39 = *(v38 + 48);
        v40 = v52;
        sub_1ABB5E1C0(v15, v52);
        v41 = *&v15[v39];
        v42 = sub_1ABAF83B4();
        v44 = v43;
        sub_1ABAFEF58(v40);
        if (v44)
        {
          v45 = *(*(v1 + 56) + 8 * v42) == v41;
          v15 = v53;
          v22 = v54;
          if (v45)
          {
            continue;
          }
        }
      }

      goto LABEL_17;
    }

    v28 = v49;
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v24)
      {
        v46 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
        sub_1ABA7B9B4(v28, 1, 1, v46);
        v54 = 0;
        goto LABEL_12;
      }

      ++v16;
      if (*(v17 + 8 * v29))
      {
        sub_1ABA9A2F8();
        v54 = v30;
        v27 = v32 | (v31 << 6);
        v16 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1ABB5C07C()
{
  sub_1ABA8BA68();
  if (v0 != v1 && (v2 = v1, v3 = sub_1ABAA2FD8(v0, v1), v4))
  {
    v5 = 0;
    v7 = v3 + 64;
    v6 = *(v3 + 64);
    v8 = *(v3 + 32);
    sub_1ABA7D32C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    while (v11)
    {
      sub_1ABAA2514();
      v33 = v16;
LABEL_12:
      v20 = v15 | (v5 << 6);
      v21 = *(v14 + 48) + 24 * v20;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v14 + 56) + 8 * v20);

      if (!v22)
      {
        goto LABEL_18;
      }

      v26 = sub_1ABAF8474(v23);
      v28 = v27;

      if ((v28 & 1) == 0)
      {

        goto LABEL_18;
      }

      v29 = *(*(v2 + 56) + 8 * v26);

      sub_1ABD7AC08(v30, v25);
      v32 = v31;

      v11 = v33;
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v13)
      {
        goto LABEL_18;
      }

      ++v17;
      if (*(v7 + 8 * v5))
      {
        sub_1ABA96BF4();
        v33 = v19 & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA8D208();
  }
}

void sub_1ABB5C1D0()
{
  sub_1ABA7E2A8();
  if (v0 != v1 && (v2 = v1, v3 = v0, sub_1ABAA2FD8(v0, v1), v4))
  {
    v5 = 0;
    v6 = *(v3 + 64);
    v7 = *(v3 + 32);
    sub_1ABA7D32C();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v17 = v13 | (v5 << 6);
      v18 = (*(v3 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v3 + 56) + 8 * v17);

      v22 = sub_1ABA94FC8(v19, v20);
      v24 = v23;

      if ((v24 & 1) == 0)
      {

        goto LABEL_17;
      }

      type metadata accessor for KnosisQueryParam();
      v25 = *(*(v2 + 56) + 8 * v22);

      v27 = sub_1ABE75FEC(v26, v21);

      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v3 + 64 + 8 * v5))
      {
        sub_1ABA96BF4();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5C318()
{
  sub_1ABA8BA68();
  if (v0 != v1 && (v2 = v1, v3 = sub_1ABAA2FD8(v0, v1), v30))
  {
    v4 = 0;
    v6 = v3 + 64;
    v5 = *(v3 + 64);
    v7 = *(v3 + 32);
    sub_1ABA7D32C();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      sub_1ABAA2514();
      v32 = v15;
LABEL_12:
      v19 = v14 | (v4 << 6);
      v20 = (*(v13 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v13 + 56) + 16 * v19);
      v25 = *v23;
      v24 = v23[1];

      v26 = sub_1ABA94FC8(v21, v22);
      v28 = v27;

      if ((v28 & 1) == 0)
      {

        goto LABEL_22;
      }

      v29 = (*(v2 + 56) + 16 * v26);
      v30 = *v29 == v25 && v29[1] == v24;
      if (v30)
      {

        v10 = v32;
      }

      else
      {
        v31 = sub_1ABF25054();

        v10 = v32;
        if ((v31 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v12)
      {
        goto LABEL_22;
      }

      ++v16;
      if (*(v6 + 8 * v4))
      {
        sub_1ABA96BF4();
        v32 = v18 & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1ABA8D208();
  }
}

uint64_t sub_1ABB5C470(uint64_t result, uint64_t a2)
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
    memcpy(__dst, (*(v3 + 48) + 72 * v12), sizeof(__dst));
    v13 = *(*(v3 + 56) + v12);
    v21 = *&__dst[16];
    v22 = *__dst;
    v19 = *&__dst[32];
    v20 = *&__dst[48];
    v14 = __dst[64];
    sub_1ABB24348(__dst, v23);
    v15 = *(&v22 + 1) == 0;
    if (*(&v22 + 1))
    {
      v25[0] = v22;
      v25[1] = v21;
      v25[2] = v19;
      v25[3] = v20;
      v26 = v14;
      v16 = sub_1ABAF84E4();
      v18 = v17;
      result = sub_1ABB243A4(v25);
      if ((v18 & 1) != 0 && v13 == *(*(a2 + 56) + v16))
      {
        continue;
      }
    }

    return v15;
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

unint64_t sub_1ABB5C610()
{
  result = qword_1EB4D3488;
  if (!qword_1EB4D3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3488);
  }

  return result;
}

unint64_t sub_1ABB5C664()
{
  result = qword_1EB4D3498;
  if (!qword_1EB4D3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3498);
  }

  return result;
}

uint64_t sub_1ABB5C6B8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D34A8, &qword_1ABF3C500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABB5C720()
{
  result = qword_1EB4D3508;
  if (!qword_1EB4D3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3508);
  }

  return result;
}

unint64_t sub_1ABB5C774()
{
  result = qword_1EB4D3510;
  if (!qword_1EB4D3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3510);
  }

  return result;
}

unint64_t sub_1ABB5C7C8()
{
  result = qword_1EB4D3518;
  if (!qword_1EB4D3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3518);
  }

  return result;
}

unint64_t sub_1ABB5C81C()
{
  result = qword_1EB4D3520;
  if (!qword_1EB4D3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3520);
  }

  return result;
}

unint64_t sub_1ABB5C870()
{
  result = qword_1EB4D3528;
  if (!qword_1EB4D3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3528);
  }

  return result;
}

unint64_t sub_1ABB5C8C4()
{
  result = qword_1EB4D3530;
  if (!qword_1EB4D3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3530);
  }

  return result;
}

unint64_t sub_1ABB5C918()
{
  result = qword_1EB4D3538;
  if (!qword_1EB4D3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3538);
  }

  return result;
}

unint64_t sub_1ABB5C96C()
{
  result = qword_1EB4D3540;
  if (!qword_1EB4D3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3540);
  }

  return result;
}

unint64_t sub_1ABB5C9C0()
{
  result = qword_1EB4D3548;
  if (!qword_1EB4D3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3548);
  }

  return result;
}

unint64_t sub_1ABB5CA14()
{
  result = qword_1EB4D3550;
  if (!qword_1EB4D3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3550);
  }

  return result;
}

unint64_t sub_1ABB5CA68()
{
  result = qword_1EB4D3558;
  if (!qword_1EB4D3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3558);
  }

  return result;
}

unint64_t sub_1ABB5CABC()
{
  result = qword_1EB4D3560;
  if (!qword_1EB4D3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3560);
  }

  return result;
}

unint64_t sub_1ABB5CB10()
{
  result = qword_1EB4D35C0;
  if (!qword_1EB4D35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35C0);
  }

  return result;
}

unint64_t sub_1ABB5CB64()
{
  result = qword_1EB4D35D0;
  if (!qword_1EB4D35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35D0);
  }

  return result;
}

unint64_t sub_1ABB5CBB8()
{
  result = qword_1EB4D35D8;
  if (!qword_1EB4D35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35D8);
  }

  return result;
}

unint64_t sub_1ABB5CC0C()
{
  result = qword_1EB4D35E8;
  if (!qword_1EB4D35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35E8);
  }

  return result;
}

unint64_t sub_1ABB5CC84()
{
  result = qword_1EB4D35F0;
  if (!qword_1EB4D35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35F0);
  }

  return result;
}

unint64_t sub_1ABB5CCDC()
{
  result = qword_1EB4D35F8;
  if (!qword_1EB4D35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35F8);
  }

  return result;
}

unint64_t sub_1ABB5CD34()
{
  result = qword_1EB4D3600;
  if (!qword_1EB4D3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3600);
  }

  return result;
}

unint64_t sub_1ABB5CD8C()
{
  result = qword_1EB4D3608;
  if (!qword_1EB4D3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3608);
  }

  return result;
}

unint64_t sub_1ABB5CDE4()
{
  result = qword_1EB4D00F8;
  if (!qword_1EB4D00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00F8);
  }

  return result;
}

uint64_t sub_1ABB5CE70()
{
  result = sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABB5CF04(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1ABB5CF20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB5CF60(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABB5CFA8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1ABB5CFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB5D01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABB5D0B8()
{
  sub_1ABF21EB4();
  if (v0 <= 0x3F)
  {
    sub_1ABB5D174();
    if (v1 <= 0x3F)
    {
      sub_1ABB5D1C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABB5D174()
{
  if (!qword_1EB4D3610)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D3610);
    }
  }
}

void sub_1ABB5D1C4()
{
  if (!qword_1EB4D3618)
  {
    sub_1ABB5D228();
    v0 = sub_1ABF23A44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D3618);
    }
  }
}

unint64_t sub_1ABB5D228()
{
  result = qword_1EB4CF6C0;
  if (!qword_1EB4CF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6C0);
  }

  return result;
}

_BYTE *sub_1ABB5D27C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s13UserAlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13CandidateTypeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABB5D548(unsigned __int8 *a1, int a2)
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

  return sub_1ABA84BA4(a1);
}

_BYTE *sub_1ABB5D594(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABB5D640(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB5D71C()
{
  result = qword_1EB4D3620;
  if (!qword_1EB4D3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3620);
  }

  return result;
}

unint64_t sub_1ABB5D774()
{
  result = qword_1EB4D3628;
  if (!qword_1EB4D3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3628);
  }

  return result;
}

unint64_t sub_1ABB5D7CC()
{
  result = qword_1EB4D3630;
  if (!qword_1EB4D3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3630);
  }

  return result;
}

unint64_t sub_1ABB5D824()
{
  result = qword_1EB4D3638;
  if (!qword_1EB4D3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3638);
  }

  return result;
}

unint64_t sub_1ABB5D87C()
{
  result = qword_1EB4D3640;
  if (!qword_1EB4D3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3640);
  }

  return result;
}

unint64_t sub_1ABB5D8D4()
{
  result = qword_1EB4D3648;
  if (!qword_1EB4D3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3648);
  }

  return result;
}

unint64_t sub_1ABB5D92C()
{
  result = qword_1EB4D3650;
  if (!qword_1EB4D3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3650);
  }

  return result;
}

unint64_t sub_1ABB5D984()
{
  result = qword_1EB4D3658;
  if (!qword_1EB4D3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3658);
  }

  return result;
}

unint64_t sub_1ABB5D9DC()
{
  result = qword_1EB4D3660;
  if (!qword_1EB4D3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3660);
  }

  return result;
}

unint64_t sub_1ABB5DA34()
{
  result = qword_1EB4D3668;
  if (!qword_1EB4D3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3668);
  }

  return result;
}

unint64_t sub_1ABB5DA8C()
{
  result = qword_1EB4D3670;
  if (!qword_1EB4D3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3670);
  }

  return result;
}

unint64_t sub_1ABB5DAE4()
{
  result = qword_1EB4D3678;
  if (!qword_1EB4D3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3678);
  }

  return result;
}

unint64_t sub_1ABB5DB3C()
{
  result = qword_1EB4D3680;
  if (!qword_1EB4D3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3680);
  }

  return result;
}

unint64_t sub_1ABB5DB94()
{
  result = qword_1EB4D3688;
  if (!qword_1EB4D3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3688);
  }

  return result;
}

unint64_t sub_1ABB5DBEC()
{
  result = qword_1EB4D3690;
  if (!qword_1EB4D3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3690);
  }

  return result;
}

unint64_t sub_1ABB5DC44()
{
  result = qword_1EB4D3698;
  if (!qword_1EB4D3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3698);
  }

  return result;
}

unint64_t sub_1ABB5DC9C()
{
  result = qword_1EB4D36A0;
  if (!qword_1EB4D36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36A0);
  }

  return result;
}

unint64_t sub_1ABB5DCF4()
{
  result = qword_1EB4D36A8;
  if (!qword_1EB4D36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36A8);
  }

  return result;
}

unint64_t sub_1ABB5DD4C()
{
  result = qword_1EB4D36B0;
  if (!qword_1EB4D36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36B0);
  }

  return result;
}

unint64_t sub_1ABB5DDA4()
{
  result = qword_1EB4D36B8;
  if (!qword_1EB4D36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36B8);
  }

  return result;
}

unint64_t sub_1ABB5DDFC()
{
  result = qword_1EB4D36C0;
  if (!qword_1EB4D36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36C0);
  }

  return result;
}

unint64_t sub_1ABB5DE54()
{
  result = qword_1EB4D36C8;
  if (!qword_1EB4D36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36C8);
  }

  return result;
}

unint64_t sub_1ABB5DEAC()
{
  result = qword_1EB4D36D0;
  if (!qword_1EB4D36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36D0);
  }

  return result;
}

unint64_t sub_1ABB5DF04()
{
  result = qword_1EB4D36D8;
  if (!qword_1EB4D36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36D8);
  }

  return result;
}

unint64_t sub_1ABB5DF5C()
{
  result = qword_1EB4D36E0;
  if (!qword_1EB4D36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36E0);
  }

  return result;
}

unint64_t sub_1ABB5DFB4()
{
  result = qword_1EB4D36E8;
  if (!qword_1EB4D36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36E8);
  }

  return result;
}

unint64_t sub_1ABB5E00C()
{
  result = qword_1EB4D36F0;
  if (!qword_1EB4D36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36F0);
  }

  return result;
}

unint64_t sub_1ABB5E064()
{
  result = qword_1EB4D36F8;
  if (!qword_1EB4D36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36F8);
  }

  return result;
}

unint64_t sub_1ABB5E0BC()
{
  result = qword_1EB4D3700;
  if (!qword_1EB4D3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3700);
  }

  return result;
}

unint64_t sub_1ABB5E114()
{
  result = qword_1EB4D3708;
  if (!qword_1EB4D3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3708);
  }

  return result;
}

unint64_t sub_1ABB5E16C()
{
  result = qword_1EB4D3710;
  if (!qword_1EB4D3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3710);
  }

  return result;
}

uint64_t sub_1ABB5E1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB5E224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB5E278()
{
  result = qword_1EB4D37F8;
  if (!qword_1EB4D37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D37F8);
  }

  return result;
}

uint64_t sub_1ABB5E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ABA7B9B4(a1, a2, a3, a4);
  v6 = *(v4 - 128);
  return result;
}

void sub_1ABB5E300()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
}

unint64_t ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 10;
  if (result < 0xA)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1ABB5E370()
{
  result = qword_1EB4D3800;
  if (!qword_1EB4D3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3800);
  }

  return result;
}

uint64_t sub_1ABB5E3CC@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.UserAlignment.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s13UserAlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB5E580()
{
  result = qword_1EB4D3808;
  if (!qword_1EB4D3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3808);
  }

  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertToDeviceContextVectorData(from:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_1ABF21D04();
      }

      else
      {
        v3 = sub_1ABF21A14();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_1ABA7EDF8();
        sub_1ABF219D4();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_1ABF21D64();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertToDeviceContextVector(from:)(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v4 = v4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_8;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

LABEL_8:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      v8 = v4 / 4;
      v9 = sub_1ABA7EDF8();
      sub_1ABB0DBF0(v9, v10);
      result = sub_1ABB5F168(v8, v3, a2);
      break;
  }

  return result;
}

uint64_t sub_1ABB5E748(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  v9 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      LODWORD(v10) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_25;
      }

      v10 = v10;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a3 + 16);
      v11 = *(a3 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    case 3uLL:
      goto LABEL_21;
    default:
      v10 = BYTE6(a4);
LABEL_6:
      if (v10 < 1)
      {
        goto LABEL_18;
      }

      if (v7)
      {
        if (v7 == 2)
        {
          v14 = *(a3 + 16);
        }

        else
        {
          v14 = a3;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v6 - 0x2000000000000000) >> 62 != 3)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v15 = 4 * v6;
      if (v10 < 4 * v6)
      {
        v15 = v10;
      }

      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_23;
      }

      if (v16 < v14)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v14 == v16)
      {
LABEL_18:
        v9 = 0;
LABEL_21:
        *a2 = v9 / 4;
        return result;
      }

      if (result)
      {
        result = sub_1ABF21DA4();
        v9 = v16 - v14;
        if (!__OFSUB__(v16, v14))
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }

LABEL_28:
      __break(1u);
      return result;
  }
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertUUIDToData(from:)(uint64_t a1)
{
  v2 = a1 + *(*(sub_1ABF21F04() - 8) + 64);

  return sub_1ABB5E8DC(a1, v2);
}

uint64_t sub_1ABB5E8DC(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1ABA93E20(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1ABF21D04();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1AC5A7380]();
    }

    else
    {
      v6 = MEMORY[0x1AC5A73A0]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1ABA84B54(v8);
  return v6;
}

uint64_t sub_1ABB5E998(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v43 = a1;
  *(&v43 + 1) = a2;

  sub_1ABAD219C(&qword_1EB4D3810, &qword_1ABF3D9A8);
  if (swift_dynamicCast())
  {
    sub_1ABA946C0(v41, &v44);
    sub_1ABA93E20(&v44, v45);
    sub_1ABF21A84();
    v41[0] = v43;
    sub_1ABA84B54(&v44);
    goto LABEL_59;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1ABB5FA40(v41);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v41[0] = a1;
    *(&v41[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v41;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    sub_1ABA7EDF8();
    v4 = sub_1ABF24B74();
  }

  sub_1ABB5F248(v4, v5, &v44);
  v6 = *(&v44 + 1);
  v7 = v44;
  if (*(&v44 + 1) >> 60 != 15)
  {
    v41[0] = v44;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v41[0] = MEMORY[0x1AC5A73E0](v8);
  *(&v41[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v41[0]);
  v10 = sub_1ABB5F364(sub_1ABB5FAE0);
  v12 = *(&v41[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v41[0]);
  switch(*(&v41[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v41[0]) - LODWORD(v41[0]);
      if (__OFSUB__(DWORD1(v41[0]), v41[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v41[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v41[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v41[0] + 16);
      v20 = *(*&v41[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1ABF21D74();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v43 + 7) = 0;
      *&v43 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v41[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = sub_1ABA7D348();
      v27 = sub_1ABB807B0(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      sub_1ABA7EDF8();
      v8 = sub_1ABF23DF4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1ABF23E24();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v44 = v13;
      *(&v44 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v44 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1ABF24B74();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = sub_1ABA7D348();
      v17 = sub_1ABB807B0(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    sub_1ABA7D348();
    v17 = sub_1ABF23E04();
LABEL_46:
    *(&v43 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      sub_1ABA7EF44();
      sub_1ABF21D94();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    sub_1ABA7EF44();
    sub_1ABF21D94();
    sub_1ABAC9310(v40, v6);
    goto LABEL_58;
  }

  sub_1ABAC9310(v40, v6);
LABEL_59:
  v37 = v41[0];
  sub_1ABB0DBF0(*&v41[0], *(&v41[0] + 1));

  sub_1ABA96210(v37, *(&v37 + 1));
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertDataToUUID(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    v5 = a2 >> 62;
    v7 = HIDWORD(a1);
    switch(a2 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v8 = HIDWORD(a1) - a1;
LABEL_7:
        v11 = sub_1ABA7EDF8();
        sub_1ABB0DBF0(v11, v12);
LABEL_8:
        if (v8 == 16)
        {
          if (v5 == 2)
          {
            v14 = *(a1 + 16);
            v13 = *(a1 + 24);
            goto LABEL_18;
          }

          if (v5 != 1)
          {
            v28 = a1;
            v29 = BYTE2(a1);
            v30 = BYTE3(a1);
            v31 = v7;
            v32 = BYTE5(a1);
            v33 = BYTE6(a1);
            v34 = HIBYTE(a1);
            v35 = a2;
            v36 = BYTE2(a2);
            v37 = BYTE3(a2);
            v38 = BYTE4(a2);
            v39 = BYTE5(a2);
            v23 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
            sub_1ABF21EE4();

            v24 = sub_1ABF21F04();
            sub_1ABA7B9B4(a3, 0, 1, v24);
            v25 = sub_1ABA7EDF8();
            result = sub_1ABAC9310(v25, v26);
            v27 = *MEMORY[0x1E69E9840];
            return result;
          }

          v13 = a1 >> 32;
          if (a1 >> 32 >= a1)
          {
            v14 = a1;
LABEL_18:
            sub_1ABB5F900(v14, v13, a3);
            v20 = *MEMORY[0x1E69E9840];
            v21 = sub_1ABA7EDF8();

            return sub_1ABAC9310(v21, v22);
          }

LABEL_24:
          __break(1u);
        }

LABEL_13:
        v15 = sub_1ABA7EDF8();
        sub_1ABAC9310(v15, v16);
        break;
      case 2uLL:
        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v8 = v9 - v10;
        if (!__OFSUB__(v9, v10))
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      case 3uLL:
        goto LABEL_13;
      default:
        v8 = BYTE6(a2);
        goto LABEL_8;
    }
  }

  v17 = sub_1ABF21F04();
  v18 = *MEMORY[0x1E69E9840];

  return sub_1ABA7B9B4(a3, 1, 1, v17);
}

uint64_t sub_1ABB5F0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
    sub_1ABF21EE4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1ABF21F04();
  return sub_1ABA7B9B4(a2, v4, 1, v5);
}

uint64_t sub_1ABB5F168(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    v7 = sub_1ABF24164();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v8[0] = v7 + 32;
  v8[1] = v6;
  result = sub_1ABB5E748(v8, &v9, a2, a3);
  if (v3)
  {
    if (v9 <= v6)
    {
      *(v7 + 16) = v9;

LABEL_10:
      sub_1ABA96210(a2, a3);
      return v7;
    }

    goto LABEL_12;
  }

  if (v9 <= v6)
  {
    *(v7 + 16) = v9;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1ABB5F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1ABF21D04();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1ABF21A14();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1ABF219D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1ABF21D64();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1ABB5F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1ABB5F7E8(sub_1ABB5FB3C, v5, a1, a2);
}

uint64_t sub_1ABB5F364(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1ABA96210(v6, v5);
      *v4 = xmmword_1ABF3D990;
      sub_1ABA96210(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1ABF219E4() && __OFSUB__(v6, sub_1ABF21A04()))
      {
        goto LABEL_24;
      }

      v13 = sub_1ABF21A14();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1ABF219C4();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1ABB5F84C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1ABA96210(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1ABF3D990;
      sub_1ABA96210(0, 0xC000000000000000);
      sub_1ABF21D14();
      v6 = v20;
      v9 = sub_1ABB5F84C(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1ABA96210(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1ABB5F728@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1ABF21D04();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1AC5A7380]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1AC5A73A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1ABB5F7A0(uint64_t result)
{
  if (result)
  {
    result = sub_1ABF24AC4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1ABB5F7E8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1ABB5F84C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1ABF219E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1ABF21A04();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1ABF219F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1ABB5F900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1ABF219E4();
  v7 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1ABF219F4();
    return sub_1ABB5F0DC(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

_BYTE *_s5UtilsOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABB5FA40(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3818, &unk_1ABF3D9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1ABB5FAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1ABB5F310(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1ABB5FAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1ABB5F7A0(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

unint64_t sub_1ABB5FB5C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_1ABB807B0(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_1ABF23E24();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_1ABF24B74();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_1ABB807B0(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_1ABF23E04();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1ABB5FCE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1ABB5FD38(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1ABADE03C();
    v6 = v16;
    for (i = (a3 + 32); ; ++i)
    {
      v14 = *i;

      a1(&v15, &v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v15;
      v16 = v6;
      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_1ABADE03C();
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1ABB5FE68(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A29C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABB63504(v6);
  *a1 = v2;
  return result;
}

void ViewService.defaultResolverInteractionsView.getter(uint64_t a1@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v22[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v22];

  v7 = v22[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
      *(a1 + *(v18 + 24)) = v6;
      v19 = [swift_unknownObjectRetain() viewArtifactURL];
      sub_1ABF21CA4();
      swift_unknownObjectRelease();

      v20 = (a1 + *(v18 + 20));
      *v20 = v16;
      v20[1] = v17;
    }
  }

  else
  {
    v15 = v22[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t type metadata accessor for ViewService.DefaultResolverInteractionsView()
{
  result = qword_1EB4CF678;
  if (!qword_1EB4CF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1ABF21CF4();
  v4 = sub_1ABA7BBB0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ViewService.DefaultResolverInteractionsView.db.getter()
{
  v0 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
  sub_1ABA9A30C(v0);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1ABB60190(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = sub_1ABF21EB4();
  v47 = *(v53 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - v15;
  v18 = *a3;
  v17 = a3[1];
  v20 = a3[2];
  v19 = a3[3];
  sub_1ABF22BB4();
  v21 = *(a1 + 16);
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1ABF34060;
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69A0138];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = v24;
  *(v22 + 32) = v18;
  *(v22 + 40) = v17;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 72) = v20;
  *(v22 + 80) = v19;

  sub_1ABF22834();
  v25 = sub_1ABF22854();
  sub_1ABA7B9B4(v16, 0, 1, v25);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v26 = v57;
  v27 = sub_1ABF22B94();
  if (v26)
  {

    sub_1ABAB480C(v55, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v16, &qword_1EB4D3038, &unk_1ABF3A870);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = v27;
    v57 = 0;
    v54 = v12;
    v48 = v7;
    sub_1ABAB480C(v55, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v16, &qword_1EB4D3038, &unk_1ABF3A870);
    v30 = sub_1ABAAB7C8(v29);
    v31 = 0;
    v50 = v29 & 0xC000000000000001;
    v51 = v30;
    v49 = v29 & 0xFFFFFFFFFFFFFF8;
    v32 = v46;
    v47 += 32;
    v28 = MEMORY[0x1E69E7CC0];
    v33 = v45;
    while (1)
    {
      if (v51 == v31)
      {

        return v28;
      }

      if (v50)
      {
        MEMORY[0x1AC5AA170](v31, v29);
      }

      else
      {
        if (v31 >= *(v49 + 16))
        {
          goto LABEL_22;
        }

        v34 = *(v29 + 8 * v31 + 32);
      }

      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = v57;
      sub_1ABB33054();
      if (v35)
      {
        goto LABEL_23;
      }

      v36 = v52;
      sub_1ABF21E04();
      sub_1ABB33264();
      v57 = 0;
      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v37, v55);
      if (LOBYTE(v55[0]) == 10)
      {
        v38 = 0;
      }

      else
      {
        v38 = v55[0];
      }

      v39 = v54;
      (*v47)(v54, v36, v53);
      *(v39 + *(v48 + 20)) = v38;
      sub_1ABB6611C(v39, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v28 + 16);
        sub_1ABAD9CB8();
        v28 = v42;
      }

      v40 = *(v28 + 16);
      if (v40 >= *(v28 + 24) >> 1)
      {
        sub_1ABAD9CB8();
        v28 = v43;
      }

      sub_1ABB661E0(v54, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      *(v28 + 16) = v40 + 1;
      sub_1ABB66180(v33, v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v40, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      ++v31;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchCandidateInteractions(candidate:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
  sub_1ABA9A30C(v2);
  v4 = *v3;
  v5 = v3[1];
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1ABB60790@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t *a3@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v7 = swift_allocObject();

  result = sub_1ABB61538();
  if (!v3)
  {
    memcpy(__dst, a2, 0x41uLL);
    v9 = sub_1ABB60190(v7, a1, __dst);

    *a3 = v9;
  }

  return result;
}

uint64_t sub_1ABB60870(uint64_t a1)
{
  v2 = sub_1ABF21EB4();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47 - v15;

  sub_1ABE8B1C0(v17);
  v19 = static ViewService.DefaultResolverInteractionsView.stableHash(for:)(v18);

  sub_1ABF22BB4();
  v20 = *(a1 + 24);
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7360];
  *(v21 + 16) = xmmword_1ABF34740;
  v23 = MEMORY[0x1E69A01D0];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = v19;
  sub_1ABF22834();
  v24 = sub_1ABF22854();
  sub_1ABA7B9B4(v16, 0, 1, v24);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v25 = v54;
  v26 = sub_1ABF22B94();
  if (v25)
  {

    sub_1ABAB480C(v55, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v16, &qword_1EB4D3038, &unk_1ABF3A870);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = v26;
    v48 = v10;
    v49 = v6;
    v54 = v5;
    v50 = v2;
    sub_1ABAB480C(v55, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v16, &qword_1EB4D3038, &unk_1ABF3A870);
    v29 = sub_1ABAAB7C8(v28);
    v30 = 0;
    v52 = v28 & 0xC000000000000001;
    v53 = v29;
    v51 = v28 & 0xFFFFFFFFFFFFFF8;
    v31 = (v47 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = v54;
      if (v53 == v30)
      {

        return v27;
      }

      if (v52)
      {
        v33 = v28;
        MEMORY[0x1AC5AA170](v30, v28);
      }

      else
      {
        if (v30 >= *(v51 + 16))
        {
          goto LABEL_21;
        }

        v33 = v28;
        v34 = *(v28 + 8 * v30 + 32);
      }

      if (__OFADD__(v30, 1))
      {
        break;
      }

      v35 = v12;
      sub_1ABB33054();
      sub_1ABF21E04();
      sub_1ABB33264();
      v36 = v32;
      v38 = v37;

      if ((v38 - 1) < 9)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v48;
      (*v31)(v48, v36, v50);
      *(v40 + *(v49 + 20)) = v39;
      v12 = v35;
      sub_1ABB66180(v40, v35, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v27 + 16);
        sub_1ABAD9CB8();
        v27 = v44;
      }

      v41 = *(v27 + 16);
      v42 = v57;
      if (v41 >= *(v27 + 24) >> 1)
      {
        sub_1ABAD9CB8();
        v42 = v57;
        v27 = v45;
      }

      *(v27 + 16) = v41 + 1;
      sub_1ABB66180(v35, v27 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
      ++v30;
      v28 = v33;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t static ViewService.DefaultResolverInteractionsView.stableHash(for:)(uint64_t a1)
{
  v27 = sub_1ABB62E4C(a1);
  sub_1ABB5FE68(&v27);
  v1 = v27;
  v27 = 0;
  v28 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 48;
    do
    {
      v4 = *(v3 - 8);
      v5 = *(v3 + 8);
      v25 = *(v3 - 16);
      v26 = *v3;
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v9 = *(v3 + 32);
      v8 = *(v3 + 40);
      v10 = *(v3 + 48);

      v11 = sub_1ABA90670();
      sub_1ABAFF488(v11, v12, v13, v14, v15);
      MEMORY[0x1AC5A9410](v25, v4);
      MEMORY[0x1AC5A9410](58, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v26, v5);

      v16 = sub_1ABA90670();
      sub_1ABAFF544(v16, v17, v18, v19, v20);
      MEMORY[0x1AC5A9410](10, 0xE100000000000000);
      v3 += 72;
      --v2;
    }

    while (v2);

    v21 = v27;
    v22 = v28;
  }

  else
  {

    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = sub_1ABB5FB5C(5381, v21, v22);

  return v23;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchTupleInteraction(tuple:)()
{
  v1 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
  sub_1ABA9A30C(v1);
  v3 = *v2;
  v4 = v2[1];
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
  result = sub_1ABF22464();
  if (!v0)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABB60FA8@<X0>(uint64_t *a1@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v3 = swift_allocObject();

  result = sub_1ABB61538();
  if (!v1)
  {
    v5 = sub_1ABB60870(v3);

    *a1 = v5;
  }

  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchInteractionSet(tuples:)()
{
  v0 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
  sub_1ABA9A30C(v0);
  v2 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3828, &qword_1ABF3D9C8);
  return sub_1ABF22464();
}

uint64_t sub_1ABB61104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v9 = swift_allocObject();

  result = sub_1ABB61538();
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](result);
    v37[2] = a3;
    v37[3] = v9;
    v37[4] = a1;
    v39 = sub_1ABB5FD38(sub_1ABB660F8, v37, a2);
    v44 = a1;
    v38 = a4;

    v12 = sub_1ABE8B290(v11);
    sub_1ABAD219C(&qword_1EB4D3820, &qword_1ABF3D9C0);
    sub_1ABB5D228();
    v13 = sub_1ABF239C4();
    v14 = 0;
    v16 = v12 + 56;
    v15 = *(v12 + 56);
    v48 = v12;
    v17 = 1 << *(v12 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v41 = v16;
    v43 = v9;
    v42 = a3;
    v40 = v20;
    if ((v18 & v15) != 0)
    {
LABEL_9:
      while (1)
      {
        v22 = (*(v48 + 48) + 72 * (__clz(__rbit64(v19)) | (v14 << 6)));
        memcpy(__dst, v22, 0x41uLL);
        memcpy(v46, v22, 0x41uLL);
        sub_1ABB24348(__dst, v45);
        v23 = sub_1ABB60190(v9, v44, v46);
        swift_isUniquelyReferenced_nonNull_native();
        v46[0] = v13;
        v24 = sub_1ABAF84E4();
        if (__OFADD__(v13[2], (v25 & 1) == 0))
        {
          break;
        }

        v26 = v24;
        v27 = v25;
        sub_1ABAD219C(qword_1EB4D38C0, &qword_1ABF3DF30);
        if (sub_1ABF24C64())
        {
          v28 = sub_1ABAF84E4();
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_24;
          }

          v26 = v28;
        }

        if (v27)
        {
          sub_1ABB243A4(__dst);
          v13 = v46[0];
          v30 = *(v46[0] + 56);
          v31 = *(v30 + 8 * v26);
          *(v30 + 8 * v26) = v23;
        }

        else
        {
          v13 = v46[0];
          *(v46[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
          memcpy((v13[6] + 72 * v26), __dst, 0x41uLL);
          *(v13[7] + 8 * v26) = v23;
          v32 = v13[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_23;
          }

          v13[2] = v34;
        }

        v19 &= v19 - 1;
        v9 = v43;
        v16 = v41;
        v20 = v40;
        if (!v19)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v21 >= v20)
        {

          v35 = v38;
          v36 = v39;
          *v38 = v13;
          v35[1] = v36;
          return result;
        }

        v19 = *(v16 + 8 * v21);
        ++v14;
        if (v19)
        {
          v14 = v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB614E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  result = sub_1ABB60870(a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t *sub_1ABB61538()
{
  v2 = *v0;
  v3 = sub_1ABF22E24();
  if (v1)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
    v0[3] = sub_1ABF22E24();
    v0[4] = sub_1ABF22E24();
    v0[5] = sub_1ABF22E24();
    v5 = sub_1ABF22E24();

    v0[6] = v5;
  }

  return v0;
}

void *sub_1ABB616FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t sub_1ABB6173C()
{
  sub_1ABB616FC();

  return swift_deallocClassInstance();
}

uint64_t ViewService.DefaultResolverInteractionsView.DefaultResolverInteractionsViewSource.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ABB617C0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.DefaultResolverInteractionsViewSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB618C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.SourceStreams.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1ABB61908@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.SourceStreams.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB61930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABB6592C();
  v5 = sub_1ABB62F9C();
  v6 = MEMORY[0x1E69A0180];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABB619A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB658D8();
  v7 = sub_1ABB62F9C();
  v8 = MEMORY[0x1E69A0180];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABB61A74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1ABB61AA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_1ABB61B6C(uint64_t a1)
{
  v2 = sub_1ABB65884();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABB61BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB65884();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABB61C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v11 = a1[2];
  v12 = a1[3];

  MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

  MEMORY[0x1AC5A9410](v2, v3);

  MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

  MEMORY[0x1AC5A9410](v4, v5);

  if (v11 == v7 && v12 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1ABF25054();
  }

  return v9 & 1;
}

uint64_t ViewService.DefaultResolverInteractionsView.fetchAllEvents()()
{
  v1 = type metadata accessor for ViewService.DefaultResolverInteractionsView();
  sub_1ABA9A30C(v1);
  v3 = *v2;
  v4 = v2[1];
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D3830, &qword_1ABF3D9D0);
  result = sub_1ABF22464();
  if (!v0)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABB61DE0@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v2 = sub_1ABAD219C(&unk_1EB4D3890, &qword_1ABF3DF18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  _s31DefaultResolverInteractionsViewV16CachedStatementsCMa();
  v17 = swift_allocObject();

  result = sub_1ABB61538();
  if (!v1)
  {
    v34 = v12;
    v40 = v10;
    sub_1ABF22BB4();
    v19 = *(v17 + 48);
    v20 = sub_1ABF22854();
    sub_1ABA7B9B4(v16, 1, 1, v20);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v21 = sub_1ABF22B94();
    sub_1ABAB480C(v38, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v16, &qword_1EB4D3038, &unk_1ABF3A870);
    result = sub_1ABAAB7C8(v21);
    v22 = result;
    v23 = 0;
    v36 = v21 & 0xFFFFFFFFFFFFFF8;
    v37 = v21 & 0xC000000000000001;
    v24 = MEMORY[0x1E69E7CC0];
    v33 = v6;
    while (1)
    {
      if (v22 == v23)
      {

        *v32 = v24;
        return result;
      }

      if (v37)
      {
        result = MEMORY[0x1AC5AA170](v23, v21);
        v25 = result;
      }

      else
      {
        if (v23 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
        break;
      }

      *&v38[0] = v25;
      sub_1ABB621FC(v38, v17, v5);

      if (sub_1ABA7E1E0(v5, 1, v6) == 1)
      {
        result = sub_1ABAB480C(v5, &unk_1EB4D3890, &qword_1ABF3DF18);
      }

      else
      {
        v26 = v34;
        sub_1ABB66180(v5, v34, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        sub_1ABB66180(v26, v40, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v24 + 16);
          sub_1ABAD9D90();
          v24 = v30;
        }

        v27 = *(v24 + 16);
        v28 = v35;
        if (v27 >= *(v24 + 24) >> 1)
        {
          sub_1ABAD9D90();
          v28 = v35;
          v24 = v31;
        }

        *(v24 + 16) = v27 + 1;
        result = sub_1ABB66180(v40, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
        v6 = v33;
      }

      ++v23;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB621FC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57[-v12];
  v65 = sub_1ABF21EB4();
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  sub_1ABF22BC4();
  if (!*(&__src[1] + 1))
  {
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
    goto LABEL_7;
  }

  v70 = sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v19 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
    v20 = a3;
    v21 = 1;
    return sub_1ABA7B9B4(v20, v21, 1, v19);
  }

  v63 = v73[0];
  sub_1ABF22BC4();
  if (!*(&__src[1] + 1))
  {
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v18 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_10;
  }

  v18 = v73[0];
  v17 = v73[1];
LABEL_10:
  v59 = v17;
  sub_1ABF22BC4();
  v60 = v18;
  if (*(&__src[1] + 1))
  {
    swift_dynamicCast();
    v22 = v3;
  }

  else
  {
    v22 = v3;
    sub_1ABAB480C(__src, &qword_1EB4D3050, &qword_1ABF3DF20);
  }

  sub_1ABF21E04();
  sub_1ABF22BB4();
  v76 = a2;
  v23 = *(a2 + 40);
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v24 = swift_allocObject();
  v69 = xmmword_1ABF34740;
  *(v24 + 16) = xmmword_1ABF34740;
  v25 = MEMORY[0x1E69A01D0];
  *(v24 + 56) = MEMORY[0x1E69E7360];
  *(v24 + 64) = v25;
  *(v24 + 32) = v63;
  sub_1ABF22834();
  v26 = sub_1ABF22854();
  sub_1ABA7B9B4(v13, 0, 1, v26);
  memset(__src, 0, 40);
  v27 = sub_1ABF22BA4();
  v61 = a3;
  if (v22)
  {

    sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v13, &qword_1EB4D3038, &unk_1ABF3A870);
    v28 = 0;
  }

  else
  {
    v29 = v27;
    sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    sub_1ABAB480C(v13, &qword_1EB4D3038, &unk_1ABF3A870);
    if (v29)
    {
      sub_1ABB33264();
      v31 = v30;

      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v31, __src);
      if (LOBYTE(__src[0]) == 10)
      {
        v28 = 0;
      }

      else
      {
        v28 = LOBYTE(__src[0]);
      }
    }

    else
    {
      v28 = 0;
    }
  }

  sub_1ABB5D228();
  v32 = sub_1ABF239C4();
  v33 = *(v76 + 32);
  v34 = swift_allocObject();
  *(v34 + 16) = v69;
  *(v34 + 56) = MEMORY[0x1E69E7360];
  *(v34 + 64) = MEMORY[0x1E69A01D0];
  *(v34 + 32) = v63;
  sub_1ABF22834();
  sub_1ABA7B9B4(v11, 0, 1, v26);
  memset(__src, 0, 40);
  v35 = sub_1ABF22B94();
  sub_1ABAB480C(__src, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  sub_1ABAB480C(v11, &qword_1EB4D3038, &unk_1ABF3A870);
  *&v69 = sub_1ABAAB7C8(v35);
  if (v69)
  {
    v58 = v28;
    v36 = 0;
    v68 = v35 & 0xC000000000000001;
    v62 = v35 & 0xFFFFFFFFFFFFFF8;
    v67 = v35;
    while (1)
    {
      if (v68)
      {
        MEMORY[0x1AC5AA170](v36, v35);
      }

      else
      {
        if (v36 >= *(v62 + 16))
        {
          goto LABEL_56;
        }

        v37 = *(v35 + 8 * v36 + 32);
      }

      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        while (1)
        {
          swift_unexpectedError();
          __break(1u);
LABEL_58:
          sub_1ABF25104();
          __break(1u);
        }
      }

      sub_1ABF22BC4();
      v76 = v36 + 1;
      if (v74)
      {
        if (swift_dynamicCast())
        {
          v38 = v71;
          v39 = v72;
          goto LABEL_32;
        }
      }

      else
      {
        sub_1ABAB480C(v73, &qword_1EB4D3050, &qword_1ABF3DF20);
      }

      v38 = 0;
      v39 = 0xE000000000000000;
LABEL_32:
      sub_1ABF22BC4();
      if (!v74)
      {
        sub_1ABAB480C(v73, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_36:
        v40 = 0;
        v41 = 0xE000000000000000;
        goto LABEL_37;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v40 = v71;
      v41 = v72;
LABEL_37:
      *&__src[0] = v38;
      *(&__src[0] + 1) = v39;
      *&__src[1] = v40;
      *(&__src[1] + 1) = v41;
      memset(&__src[2], 0, 32);
      LOBYTE(__src[4]) = 2;
      sub_1ABB33264();
      ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)(v42, v73);
      if (LOBYTE(v73[0]) == 10)
      {
        v43 = 0;
      }

      else
      {
        v43 = v73[0];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v32;
      v44 = sub_1ABAF84E4();
      if (__OFADD__(v32[2], (v45 & 1) == 0))
      {
        goto LABEL_54;
      }

      v46 = v44;
      v47 = v45;
      sub_1ABAD219C(&qword_1EB4D38B8, &qword_1ABF3DF28);
      if (sub_1ABF24C64())
      {
        v48 = sub_1ABAF84E4();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_58;
        }

        v46 = v48;
      }

      v32 = v73[0];
      if (v47)
      {
        *(*(v73[0] + 56) + v46) = v43;
        sub_1ABB243A4(__src);
      }

      else
      {
        *(v73[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
        memcpy((v32[6] + 72 * v46), __src, 0x41uLL);
        *(v32[7] + v46) = v43;
        v50 = v32[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_55;
        }

        v32[2] = v52;
      }

      ++v36;
      v35 = v67;
      if (v76 == v69)
      {

        LOBYTE(v28) = v58;
        goto LABEL_51;
      }
    }
  }

LABEL_51:
  v53 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v54 = v61;
  (*(v64 + 32))(v61 + v53[6], v66, v65);
  v55 = v60;
  *v54 = v63;
  v54[1] = v55;
  v54[2] = v59;
  *(v54 + v53[7]) = MEMORY[0x1E69E7CC0];
  *(v54 + v53[8]) = v28;
  *(v54 + v53[9]) = v32;
  v20 = v54;
  v21 = 0;
  v19 = v53;
  return sub_1ABA7B9B4(v20, v21, 1, v19);
}

void *sub_1ABB62B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = sub_1ABADCEBC();
  v5 = sub_1ABB645D8(&v7, v4 + 4, v1, a1);

  sub_1ABAB4C48();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void sub_1ABB62C34()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB62CE0()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB62D8C()
{
  sub_1ABAA37B0();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v5 == v4)
    {
      sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
      v6 = sub_1ABAA21A8();
      sub_1ABA81494(v6);
      *(v2 + 16) = v0;
      *(v2 + 24) = (2 * (v7 / 8)) | 1;
    }

    if (v3 != v1)
    {
      type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1ABB62E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = sub_1ABADD06C();
  v5 = sub_1ABB65B80(&v7, v4 + 32, v1, a1);

  sub_1ABAB4C48();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1ABB62F08@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1ABB60FA8(a1);
}

unint64_t sub_1ABB62F44()
{
  result = qword_1EB4D3838;
  if (!qword_1EB4D3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3838);
  }

  return result;
}

unint64_t sub_1ABB62F9C()
{
  result = qword_1EB4CF690;
  if (!qword_1EB4CF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF690);
  }

  return result;
}

unint64_t sub_1ABB62FF4()
{
  result = qword_1EB4D3848;
  if (!qword_1EB4D3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3848);
  }

  return result;
}

unint64_t sub_1ABB6304C()
{
  result = qword_1EB4D00F0;
  if (!qword_1EB4D00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00F0);
  }

  return result;
}

unint64_t sub_1ABB630A4()
{
  result = qword_1EB4CF6A8;
  if (!qword_1EB4CF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6A8);
  }

  return result;
}

unint64_t sub_1ABB630FC()
{
  result = qword_1EB4D3850;
  if (!qword_1EB4D3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3850);
  }

  return result;
}

unint64_t sub_1ABB63154()
{
  result = qword_1EB4D3858;
  if (!qword_1EB4D3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3858);
  }

  return result;
}

unint64_t sub_1ABB631D0()
{
  result = sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    result = sub_1ABB2CA7C();
    if (v2 <= 0x3F)
    {
      result = sub_1ABAAE1D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *_s31DefaultResolverInteractionsViewV37DefaultResolverInteractionsViewSourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB63398()
{
  sub_1ABAA37B0();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1ABA8E6E4();
    if (v4 == v3)
    {
      sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
      v5 = sub_1ABAA21A8();
      sub_1ABA81494(v5);
      sub_1ABA992FC(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1ABB63444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
      v9 = swift_allocObject();
      sub_1ABA81494(v9);
      v4[2] = v6;
      v4[3] = 2 * (v10 / 8);
    }

    if (v5 != a3)
    {
      memcpy(v4 + 4, (a2 + 8 * a3), 8 * v6);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1ABB63504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB63828(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABB635F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB635F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v17 = v4;
      v18 = a3;
      v16 = v5;
      for (i = v5; ; ++i)
      {
        memcpy(__dst, v4, 0x41uLL);
        memcpy(v25, v4 - 72, 0x41uLL);
        v6 = __dst[0];
        v7 = __dst[1];
        v8 = v25[1];
        v26 = v25[0];
        v10 = v25[2];
        v9 = v25[3];
        v22 = __dst[2];
        v23 = __dst[3];
        sub_1ABB24348(__dst, __src);
        sub_1ABB24348(v25, __src);

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
        __src[0] = v22;
        __src[1] = v23;

        MEMORY[0x1AC5A9410](v6, v7);

        v11 = __src[0];
        v12 = __src[1];
        __src[0] = v10;
        __src[1] = v9;

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

        MEMORY[0x1AC5A9410](v26, v8);

        if (v11 == __src[0] && v12 == __src[1])
        {
          break;
        }

        v14 = sub_1ABF25054();

        sub_1ABB243A4(v25);
        result = sub_1ABB243A4(__dst);
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x41uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x41uLL);
        if (!i)
        {
          goto LABEL_13;
        }

        v4 -= 72;
      }

      sub_1ABB243A4(v25);
      result = sub_1ABB243A4(__dst);
LABEL_13:
      a3 = v18 + 1;
      v4 = v17 + 72;
      v5 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB63828(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v124 = *a1;
    if (!v124)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v98 = v5;
    if (v5 + 1 < v4)
    {
      v9 = *a3;
      v10 = (*a3 + 72 * v8);
      memcpy(__dst, v10, 0x41uLL);
      memcpy(v121, v10, 0x41uLL);
      memcpy(v123, (v9 + 72 * v7), 0x41uLL);
      memcpy(__src, (v9 + 72 * v7), 0x41uLL);
      sub_1ABB24348(__dst, v119);
      sub_1ABB24348(v123, v119);
      v108 = sub_1ABB61C1C(v121, __src);
      if (v107)
      {
        memcpy(v118, __src, 0x41uLL);
        sub_1ABB243A4(v118);
        memcpy(v119, v121, 0x41uLL);
        sub_1ABB243A4(v119);
LABEL_115:

        return;
      }

      v95 = v6;
      memcpy(v118, __src, 0x41uLL);
      sub_1ABB243A4(v118);
      memcpy(v119, v121, 0x41uLL);
      sub_1ABB243A4(v119);
      v101 = 72 * v7;
      v103 = v4;
      v6 = (v9 + 72 * v7 + 144);
      v11 = v7 + 2;
      while (1)
      {
        v12 = v8;
        v13 = v11;
        if (v8 + 1 >= v4)
        {
          break;
        }

        memcpy(v116, v6, 0x41uLL);
        memcpy(v117, v6 - 72, 0x41uLL);
        v14 = v116[0];
        v15 = v116[1];
        v124 = v117[0];
        v110 = v117[1];
        v17 = v117[2];
        v16 = v117[3];
        v114 = v116[2];
        v115 = v116[3];
        sub_1ABB24348(v116, &v112);
        sub_1ABB24348(v117, &v112);

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
        v112 = v114;
        v113 = v115;

        MEMORY[0x1AC5A9410](v14, v15);

        v18 = v112;
        v19 = v113;
        v112 = v17;
        v113 = v16;

        MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

        MEMORY[0x1AC5A9410](v124, v110);

        if (v18 == v112 && v19 == v113)
        {
          v21 = 0;
        }

        else
        {
          v21 = sub_1ABF25054();
        }

        sub_1ABB243A4(v117);
        sub_1ABB243A4(v116);
        v6 += 72;
        v8 = v12 + 1;
        v11 = v13 + 1;
        v4 = v103;
        if ((v108 ^ v21))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if ((v108 & 1) == 0)
      {
        v6 = v95;
LABEL_29:
        v7 = v98;
        goto LABEL_30;
      }

      v22 = v98;
      if (v8 < v98)
      {
        goto LABEL_139;
      }

      if (v98 <= v12)
      {
        if (v4 >= v13)
        {
          v23 = v13;
        }

        else
        {
          v23 = v4;
        }

        v24 = 72 * v23 - 72;
        v25 = v8;
        v6 = v95;
        v26 = v101;
        do
        {
          if (v22 != --v25)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            memcpy(v117, (v27 + v26), 0x41uLL);
            memmove((v27 + v26), (v27 + v24), 0x48uLL);
            memcpy((v27 + v24), v117, 0x41uLL);
          }

          ++v22;
          v24 -= 72;
          v26 += 72;
        }

        while (v22 < v25);
        goto LABEL_29;
      }

      v6 = v95;
      v7 = v98;
    }

LABEL_30:
    v28 = a3[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    v105 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = *(v6 + 2);
      sub_1ABAD8820();
      v6 = v85;
    }

    v41 = *(v6 + 2);
    v42 = v41 + 1;
    if (v41 >= *(v6 + 3) >> 1)
    {
      sub_1ABAD8820();
      v6 = v86;
    }

    *(v6 + 2) = v42;
    v43 = v6 + 32;
    v44 = &v6[16 * v41 + 32];
    *v44 = v98;
    *(v44 + 1) = v8;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v41)
    {
      while (1)
      {
        v46 = v42 - 1;
        v47 = &v43[16 * v42 - 16];
        v48 = &v6[16 * v42];
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v49 = *(v6 + 4);
          v50 = *(v6 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_71:
          if (v52)
          {
            goto LABEL_122;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_125;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_130;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v42 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v42 < 2)
        {
          goto LABEL_124;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_86:
        if (v67)
        {
          goto LABEL_127;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_129;
        }

        if (v74 < v66)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v46 - 1 >= v42)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v78 = &v43[16 * v46 - 16];
        v79 = *v78;
        v80 = &v43[16 * v46];
        v81 = *(v80 + 1);
        sub_1ABB64180((*a3 + 72 * *v78), (*a3 + 72 * *v80), (*a3 + 72 * v81), v45);
        if (v107)
        {
          goto LABEL_115;
        }

        if (v81 < v79)
        {
          goto LABEL_117;
        }

        v82 = v6;
        v6 = *(v6 + 2);
        if (v46 > v6)
        {
          goto LABEL_118;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        if (v46 >= v6)
        {
          goto LABEL_119;
        }

        v42 = (v6 - 1);
        sub_1ABE7A0CC(v80 + 16, &v6[-v46 - 1], &v43[16 * v46]);
        *(v82 + 2) = v6 - 1;
        v83 = v6 > 2;
        v6 = v82;
        if (!v83)
        {
          goto LABEL_100;
        }
      }

      v53 = &v43[16 * v42];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_120;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_121;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_123;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_126;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_134;
        }

        if (v51 < v77)
        {
          v46 = v42 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v105;
    v4 = a3[1];
    if (v105 >= v4)
    {
      goto LABEL_103;
    }
  }

  v29 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v29 >= v28)
  {
    v29 = a3[1];
  }

  if (v29 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v6 = sub_1ABE7A0B4(v6);
LABEL_105:
    v87 = v6 + 16;
    v88 = *(v6 + 2);
    while (v88 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_143;
      }

      v89 = v6;
      v90 = &v6[16 * v88];
      v6 = *v90;
      v91 = &v87[2 * v88];
      v92 = *(v91 + 1);
      sub_1ABB64180((*a3 + 72 * *v90), (*a3 + 72 * *v91), (*a3 + 72 * v92), v124);
      if (v107)
      {
        break;
      }

      if (v92 < v6)
      {
        goto LABEL_131;
      }

      if (v88 - 2 >= *v87)
      {
        goto LABEL_132;
      }

      *v90 = v6;
      *(v90 + 1) = v92;
      v93 = *v87 - v88;
      if (*v87 < v88)
      {
        goto LABEL_133;
      }

      v88 = *v87 - 1;
      sub_1ABE7A0CC(v91 + 16, v93, v91);
      *v87 = v88;
      v6 = v89;
    }

    goto LABEL_115;
  }

  if (v8 == v29)
  {
    goto LABEL_51;
  }

  v96 = v6;
  v109 = *a3;
  v30 = (*a3 + 72 * v8);
  v31 = v7 - v8 + 1;
  v99 = v29;
LABEL_39:
  v102 = v30;
  v104 = v8;
  v100 = v31;
  for (i = v31; ; ++i)
  {
    memcpy(__dst, v30, 0x41uLL);
    memcpy(v123, v30 - 72, 0x41uLL);
    v32 = __dst[0];
    v33 = __dst[1];
    v34 = v123[0];
    v124 = v123[1];
    v36 = v123[2];
    v35 = v123[3];
    __src[0] = __dst[2];
    __src[1] = __dst[3];
    sub_1ABB24348(__dst, v121);
    sub_1ABB24348(v123, v121);

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);
    v121[0] = __src[0];
    v121[1] = __src[1];

    MEMORY[0x1AC5A9410](v32, v33);

    v37 = v121[0];
    v38 = v121[1];
    v121[0] = v36;
    v121[1] = v35;

    MEMORY[0x1AC5A9410](14906, 0xE200000000000000);

    MEMORY[0x1AC5A9410](v34, v124);

    if (v37 == v121[0] && v38 == v121[1])
    {

      sub_1ABB243A4(v123);
      sub_1ABB243A4(__dst);
LABEL_49:
      v8 = v104 + 1;
      v30 = v102 + 72;
      v31 = v100 - 1;
      if (v104 + 1 == v99)
      {
        v8 = v99;
        v6 = v96;
        v7 = v98;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v40 = sub_1ABF25054();

    sub_1ABB243A4(v123);
    sub_1ABB243A4(__dst);
    if ((v40 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v109)
    {
      break;
    }

    memcpy(v121, v30, 0x41uLL);
    memcpy(v30, v30 - 72, 0x48uLL);
    memcpy(v30 - 72, v121, 0x41uLL);
    if (!i)
    {
      goto LABEL_49;
    }

    v30 -= 72;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}