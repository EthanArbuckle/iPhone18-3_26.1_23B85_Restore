uint64_t AnonymousSession.Configuration.Application.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AD70, &qword_1C93FE2A8);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2248();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_1C93B22F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
  }

  return sub_1C939EA94(a1);
}

Swift::Int sub_1C93B08C4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  AnonymousSession.Configuration.Application.hash(into:)();
  return Hasher._finalize()();
}

void AnonymousSession.Configuration.Application.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;

    sub_1C93B1340();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

void sub_1C93B09D0()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  memcpy(v14, v1, sizeof(v14));
  v8 = AnySessionConfiguration.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2954();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      sub_1C93B2930();
      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
        sub_1C93B2954();
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0B64()
{
  sub_1C93A5B40();
  v3 = type metadata accessor for PropertyDescription();
  v4 = sub_1C939ED4C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C939D4D4();
  v7 = ContainerID.propertyDescriptions.getter();
  sub_1C93B28D0(v7);
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v2, v0, v8);
      v13 = *v0;
      v14 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v10)
      {
        v12 = sub_1C93B28DC(v9);
        sub_1C93B2900(v12);
      }

      sub_1C93B2828();
    }

    while (!v11);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0CE8()
{
  sub_1C93A5B40();
  v3 = type metadata accessor for PropertyDescription();
  v4 = sub_1C939ED4C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C939D4D4();
  v7 = Entitlements.propertyDescriptions.getter();
  sub_1C93B28D0(v7);
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v2, v0, v8);
      v13 = *v0;
      v14 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v10)
      {
        v12 = sub_1C93B28DC(v9);
        sub_1C93B2900(v12);
      }

      sub_1C93B2828();
    }

    while (!v11);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0E74()
{
  sub_1C93A5B40();
  v4 = v3;
  v5 = type metadata accessor for PropertyDescription();
  v6 = sub_1C939ED4C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939D4D4();
  v9 = v4();
  sub_1C93B28D0(v9);
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B2680(v2, v0, type metadata accessor for PropertyDescription);
      v13 = *v0;
      v14 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        sub_1C93B2900((v10 > 1));
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0FF8()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  v16 = *v1;
  v17 = v1[1];
  v18 = *(v1 + 4);
  v8 = AnonymousSession.Configuration.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      v14 = *v0;
      v15 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B11A4()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v19 = *(v1 + 6);
  v8 = AuthenticatedSession.ResolvedUser.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      v14 = *v0;
      v15 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B1340()
{
  sub_1C93A5B40();
  v4 = v3;
  v5 = type metadata accessor for PropertyDescription();
  v6 = sub_1C939ED4C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939D4D4();
  v9 = v4();
  sub_1C93B28D0(v9);
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B2680(v2, v0, type metadata accessor for PropertyDescription);
      v13 = *v0;
      v14 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        sub_1C93B2900((v10 > 1));
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B14D4()
{
  sub_1C93A5B40();
  v3 = v2;
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  v8 = AuthenticatedSession.Configuration.Application.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v3)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v1, v0, v9);
      v14 = *v0;
      v15 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B1658()
{
  sub_1C93A5B40();
  v1 = v0;
  v2 = type metadata accessor for OSLogPrivacy();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C93A59B8();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PropertyDescription();
  v11 = sub_1C939D44C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93A59B8();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v42 - v20);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    static OSLogPrivacy.public.getter();
    LOBYTE(v43) = 1;
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = MEMORY[0x1E69E93B0];
    sub_1C93B2680(v9, v6, MEMORY[0x1E69E93B0]);
    v28 = *(v10 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93B26E8(v9, v27);
    *v21 = 0xD000000000000016;
    v21[1] = 0x80000001C9406310;
    v21[2] = v24;
    v21[3] = v26;
    sub_1C93A8768(v6, v21 + v28);
    v23 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = *(v23 + 16);
    v29 = *(v23 + 24);
    if (v30 >= v29 >> 1)
    {
      v23 = sub_1C93A4F7C(v29 > 1, v30 + 1, 1, v23);
    }

    *(v23 + 16) = v30 + 1;
    sub_1C93A87CC(v21, v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v30);
    v22 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v23 + 16);
  if (v31)
  {
    v45 = v22;
    sub_1C939DC14(0, v31, 0);
    v32 = v45;
    v33 = *(v13 + 80);
    v42 = v23;
    v34 = v23 + ((v33 + 32) & ~v33);
    v35 = *(v13 + 72);
    do
    {
      sub_1C93B2680(v34, v18, type metadata accessor for PropertyDescription);
      v36 = v18[1];
      v43 = *v18;
      v44 = v36;

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v18[2], v18[3]);
      v37 = v43;
      v38 = v44;
      sub_1C93B26E8(v18, type metadata accessor for PropertyDescription);
      v45 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1C939DC14((v39 > 1), v40 + 1, 1);
        v32 = v45;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      v34 += v35;
      --v31;
    }

    while (v31);

    v43 = v32;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B19B8()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v8 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      v14 = *v0;
      v15 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B1B34()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  memcpy(v16, v1, sizeof(v16));
  v8 = AuthenticatedSession.Configuration.Account.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      v14 = *v0;
      v15 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B1CB0()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription();
  v5 = sub_1C939ED4C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  memcpy(v14, v1, sizeof(v14));
  v8 = AuthenticatedSession.Configuration.propertyDescriptions.getter();
  sub_1C93B28D0(v8);
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2954();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v9);
      sub_1C93B2930();
      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        v13 = sub_1C93B28DC(v10);
        sub_1C93B2900(v13);
        sub_1C93B2954();
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B1E5C()
{
  sub_1C93A5B40();
  v4 = v3;
  v5 = type metadata accessor for PropertyDescription();
  v6 = sub_1C939ED4C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939D4D4();
  v9 = v4();
  sub_1C93B28D0(v9);
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B2680(v2, v0, type metadata accessor for PropertyDescription);
      v13 = *v0;
      v14 = v0[1];

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](v0[2], v0[3]);
      sub_1C93B2918();
      sub_1C93B2850();
      if (v11)
      {
        sub_1C93B2900((v10 > 1));
      }

      sub_1C93B2828();
    }

    while (!v12);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

size_t AnonymousSession.Configuration.Application.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C93A59B8();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for PropertyDescription();
  v10 = sub_1C939D44C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v0[1];
  if (v17)
  {
    v18 = *v0;

    static OSLogPrivacy.public.getter();
    v29[0] = v18;
    v29[1] = v17;

    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = MEMORY[0x1E69E93B0];
    sub_1C93B2680(v8, v5, MEMORY[0x1E69E93B0]);
    v23 = *(v9 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93B26E8(v8, v22);
    *v16 = 0x4449656C646E7562;
    v16[1] = 0xE800000000000000;
    v16[2] = v19;
    v16[3] = v21;
    sub_1C93A8768(v5, v16 + v23);
    v24 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    if (v26 >= v25 >> 1)
    {
      v28 = sub_1C93B28DC(v25);
      v24 = sub_1C93A4F7C(v28, v26 + 1, 1, v24);
    }

    *(v24 + 16) = v26 + 1;
    sub_1C93A87CC(v16, v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

unint64_t sub_1C93B2248()
{
  result = qword_1EC39AD68;
  if (!qword_1EC39AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD68);
  }

  return result;
}

unint64_t sub_1C93B229C()
{
  result = qword_1EE02B3E0;
  if (!qword_1EE02B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3E0);
  }

  return result;
}

unint64_t sub_1C93B22F0()
{
  result = qword_1EE02ADA8;
  if (!qword_1EE02ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02ADA8);
  }

  return result;
}

unint64_t sub_1C93B2348()
{
  result = qword_1EC39AD78;
  if (!qword_1EC39AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD78);
  }

  return result;
}

unint64_t sub_1C93B239C(uint64_t a1)
{
  result = sub_1C93B23C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93B23C4()
{
  result = qword_1EC39AD80;
  if (!qword_1EC39AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD80);
  }

  return result;
}

uint64_t sub_1C93B2418(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93B246C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s11ApplicationV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C93B257C()
{
  result = qword_1EC39AD88;
  if (!qword_1EC39AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD88);
  }

  return result;
}

unint64_t sub_1C93B25D4()
{
  result = qword_1EC39AD90;
  if (!qword_1EC39AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD90);
  }

  return result;
}

unint64_t sub_1C93B262C()
{
  result = qword_1EC39AD98;
  if (!qword_1EC39AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD98);
  }

  return result;
}

uint64_t sub_1C93B2680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C93B26E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C93B2748()
{
  result = qword_1EE02B3A8;
  if (!qword_1EE02B3A8)
  {
    sub_1C93B27AC(&qword_1EC39ADA0, &qword_1C94045C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3A8);
  }

  return result;
}

uint64_t sub_1C93B27AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1C93B2828()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1C93B2870()
{

  return BidirectionalCollection<>.joined(separator:)();
}

char *sub_1C93B288C()
{

  return sub_1C939DC14(0, v0, 0);
}

uint64_t sub_1C93B28A8()
{
}

void sub_1C93B28E8()
{

  JUMPOUT(0x1CCA87780);
}

char *sub_1C93B2900(char *a1)
{

  return sub_1C939DC14(a1, v1, 1);
}

uint64_t sub_1C93B2918()
{

  return sub_1C93B26E8(v0, v1);
}

uint64_t sub_1C93B2930()
{
  v3 = v0[1];
  *(v1 - 280) = *v0;
  *(v1 - 272) = v3;
}

uint64_t sub_1C93B29B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001C9406310 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93B2A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93B29B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93B2A7C(uint64_t a1)
{
  v2 = sub_1C93B2C1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93B2AB8(uint64_t a1)
{
  v2 = sub_1C93B2C1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.Configuration.System.encode(to:)(void *a1)
{
  v4 = sub_1C93A1890(&qword_1EC39ADA8, &qword_1C93FE4F8);
  v5 = sub_1C93B34FC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2C1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1C93B2C1C()
{
  result = qword_1EC39ADB0;
  if (!qword_1EC39ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADB0);
  }

  return result;
}

Swift::Int AnonymousSession.Configuration.System.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.System.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = sub_1C93A1890(&qword_1EC39ADB8, &qword_1C93FE500);
  v7 = sub_1C93B34FC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2C1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return sub_1C939EA94(a1);
}

Swift::Int sub_1C93B2E34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.System.description.getter()
{
  if (*v0 == 1)
  {
    return sub_1C93B27F4(1);
  }

  else
  {
    return 0x7261646E6174732ELL;
  }
}

size_t AnonymousSession.Configuration.System.propertyDescriptions.getter()
{
  v2 = type metadata accessor for OSLogPrivacy();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-v7];
  v9 = type metadata accessor for PropertyDescription();
  v10 = sub_1C93B34FC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  static OSLogPrivacy.public.getter();
  v25[15] = 1;
  v17 = String.init<A>(describing:)();
  v19 = v18;
  sub_1C93A86A8(v8, v6);
  v20 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v8);
  *v16 = 0xD000000000000016;
  v16[1] = 0x80000001C9406310;
  v16[2] = v17;
  v16[3] = v19;
  sub_1C93A8768(v6, v16 + v20);
  v21 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C93A4F7C(v22 > 1, v23 + 1, 1, v21);
  }

  *(v21 + 16) = v23 + 1;
  sub_1C93A87CC(v16, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23);
  return v21;
}

unint64_t sub_1C93B3104()
{
  result = qword_1EC39ADC0;
  if (!qword_1EC39ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADC0);
  }

  return result;
}

unint64_t sub_1C93B3158(uint64_t a1)
{
  result = sub_1C93B3180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93B3180()
{
  result = qword_1EC39ADC8;
  if (!qword_1EC39ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADC8);
  }

  return result;
}

uint64_t _s6SystemVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6SystemVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s6SystemV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C93B33F8()
{
  result = qword_1EC39ADD0;
  if (!qword_1EC39ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADD0);
  }

  return result;
}

unint64_t sub_1C93B3450()
{
  result = qword_1EC39ADD8;
  if (!qword_1EC39ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADD8);
  }

  return result;
}

unint64_t sub_1C93B34A8()
{
  result = qword_1EC39ADE0;
  if (!qword_1EC39ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ADE0);
  }

  return result;
}

void sub_1C93B3550()
{
  sub_1C93A5B40();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SessionInvalidationContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v13 = sub_1C93A5A08(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v32 = 0;
  v33 = 0;
  v28[2] = &v32;
  v29 = v8;
  v30 = v6;
  sub_1C93B40E8(v4, v28, &v31, v2);
  v18 = v32;
  if (v32)
  {
    v19 = v33;
    v20 = type metadata accessor for TaskPriority();
    sub_1C93A1710(v17, 1, 1, v20);
    sub_1C93B5C2C();
    sub_1C93B52C0(v6, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v22 = (*(v10 + 80) + 49) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v18;
    *(v23 + 40) = v19;
    *(v23 + 48) = v8;
    sub_1C939D4EC();
    sub_1C93B5218(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, v25);

    sub_1C93B4BE0(0, 0, v17, v27, v23);

    sub_1C93A14F4(v18);
  }

  sub_1C93A5B58();
}

uint64_t sub_1C93B373C(uint64_t (*a1)(uint64_t))
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  v3 = *v1;
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  v5 = MEMORY[0x1CCA87780](8251, 0xE200000000000000);
  v6 = a1(v5);
  MEMORY[0x1CCA87780](v6);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t AuthenticatedSession.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AuthenticatedSession.resolvedUser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_acquiredInfo;
  v4 = v3 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 28);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 48);
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v10 = *(v4 + 32);
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;

  sub_1C93A1B1C(v7, v10);
}

uint64_t AuthenticatedSession.resolvedUserPersonaUniqueString.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_acquiredInfo;
  v2 = (v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AuthenticatedSession.anyContainer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer);
  v2 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer + 8);
  return swift_unknownObjectRetain();
}

uint64_t AuthenticatedSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AuthenticatedSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)();
  return v3;
}

void AuthenticatedSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)()
{
  sub_1C93A5B40();
  v1 = v0;
  v54 = v2;
  v55 = v3;
  v56 = v4;
  v57 = v5;
  v7 = v6;
  v9 = v8;
  v53 = v8;
  v51 = v10;
  v11 = v4;
  v52 = type metadata accessor for SessionValidity(0);
  v12 = sub_1C939D430(v52);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A59A8();
  v17 = (v16 - v15);
  v18 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v50 - v21);
  v23 = type metadata accessor for AnySessionAcquiredInfo();
  v24 = sub_1C93A5A08(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C93A59A8();
  v29 = v28 - v27;
  v30 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v31 = sub_1C93A5A08(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C93A59A8();
  v36 = v35 - v34;
  sub_1C93B5BFC();
  sub_1C93B52C0(v11, v1 + v37, v38);
  memcpy((v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration), v51, 0xA8uLL);
  sub_1C93B52C0(v9, v29, type metadata accessor for AnySessionAcquiredInfo);
  AuthenticatedSession.AcquiredInfo.init(_:)(v29, v36);
  sub_1C93B5218(v36, v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_acquiredInfo, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  v39 = (v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer);
  v40 = v54;
  v41 = v55;
  *v39 = v7;
  v39[1] = v40;
  v42 = v57;
  *v17 = v57;
  v17[1] = v41;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  sub_1C93A1478(v42);
  *v22 = 0;
  v43 = *(v19 + 36);
  v44 = sub_1C93A1890(&qword_1EC39AC48, &unk_1C93FDC90);
  sub_1C93A5A08(v44);
  bzero(v22 + v43, *(v45 + 64));
  sub_1C93B5218(v17, v22 + v43, type metadata accessor for SessionValidity);
  memcpy((v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_sessionValidity), v22, v20);
  ObjectType = swift_getObjectType();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = *(v40 + 32);

  v48(sub_1C93B3E5C, v47, ObjectType, v40);
  swift_unknownObjectRelease();
  sub_1C93A14F4(v57);
  sub_1C93B5320(v53, type metadata accessor for AnySessionAcquiredInfo);
  sub_1C93B5BE4();
  sub_1C93B5320(v56, v49);

  sub_1C93A5B58();
}

uint64_t sub_1C93B3DB0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C93B3550();
  }

  return result;
}

uint64_t sub_1C93B3E84()
{
  sub_1C93B4184(*(v0 + 16));
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1C93B3FF8;

  return v9(ObjectType, v2);
}

uint64_t sub_1C93B3FF8()
{
  sub_1C939ED74();
  v3 = v2;
  sub_1C939D504();
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void sub_1C93B40E8(void (*a1)(char *), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = (v4 + *a4);
  os_unfair_lock_lock(v7);
  v8 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  a1(v7 + *(v8 + 28));
  os_unfair_lock_unlock(v7);
  if (v5)
  {
    __break(1u);
  }
}

void sub_1C93B4184(uint64_t a1)
{
  v2 = type metadata accessor for SessionValidity(0);
  v3 = sub_1C939D430(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for SessionInvalidationContext(0);
  v10 = sub_1C93A5A08(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59A8();
  v15 = v14 - v13;
  v16 = (a1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_sessionValidity);
  os_unfair_lock_lock(v16);
  v17 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  sub_1C93B52C0(v16 + *(v17 + 28), v8, type metadata accessor for SessionValidity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v8;
    v19 = *(sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98) + 48);
    sub_1C939D4EC();
    sub_1C93B5218(&v8[v20], v15, v21);
    type metadata accessor for CloudCoreError();
    sub_1C93B5278(&qword_1EC39AC78, type metadata accessor for CloudCoreError);
    swift_allocError();
    v23 = v22;
    v24 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
    v25 = *(v24 + 48);
    *v23 = v18;
    sub_1C93B5C2C();
    sub_1C93B52C0(v15, &v23[v26], v27);
    sub_1C93A1710(v23, 0, 4, v24);
    swift_willThrow();
    v28 = type metadata accessor for SessionInvalidationContext;
    v29 = v15;
  }

  else
  {
    sub_1C93B5C14();
    v29 = v8;
  }

  sub_1C93B5320(v29, v28);
  os_unfair_lock_unlock(v16);
}

void _s17CloudCoreInternal20AuthenticatedSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C93A59A8();
  v14 = v13 - v12;
  v15 = v6 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_sessionValidity;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_sessionValidity));
  v16 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  a1(v15 + *(v16 + 28), v14);
  if (v7)
  {
    (*(v10 + 32))(a6, v14, a4);
  }

  type metadata accessor for SessionValidity(0);
  sub_1C93B5CD0();
}

uint64_t AuthenticatedSession.deinit()
{
  sub_1C93B5BE4();
  sub_1C93B5320(v0 + v1, v2);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration), sizeof(__dst));
  sub_1C93B4E84(__dst);
  sub_1C939ED5C();
  sub_1C93B5320(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer);
  swift_unknownObjectRelease();
  v6 = v0 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_sessionValidity;
  v7 = *(sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80) + 28);
  sub_1C93B5C14();
  sub_1C93B5320(v6 + v8, v9);
  return v0;
}

uint64_t AuthenticatedSession.__deallocating_deinit()
{
  AuthenticatedSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C93B4660@<X0>(uint64_t *a1@<X8>)
{
  result = AuthenticatedSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)();
  *a1 = result;
  return result;
}

void sub_1C93B4688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  _s17CloudCoreInternal20AuthenticatedSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(v12, v16, v17, v18, v19, v14);
  if (v7)
  {
    (*(v10 + 32))(a6, v14, a4);
  }
}

void AuthenticatedSession.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v1 = v0;
  v48 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v2 = sub_1C939D430(v48);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C93A59B8();
  v47 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v46 = v45 - v8;
  v9 = type metadata accessor for OSLogPrivacy();
  v10 = sub_1C93A5A08(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59B8();
  v45[0] = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  v18 = type metadata accessor for SessionID(0);
  v19 = sub_1C939D430(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C93A59B8();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v45 - v26;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v28 = (type metadata accessor for PropertyDescription() - 8);
  v29 = *v28;
  v51 = *(*v28 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v45[1] = v31;
  *(v31 + 16) = xmmword_1C93FDC70;
  v32 = (v31 + v30);
  sub_1C93B52C0(v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_id, v27, type metadata accessor for SessionID);
  static OSLogPrivacy.public.getter();
  sub_1C93B52C0(v27, v24, type metadata accessor for SessionID);
  v33 = String.init<A>(describing:)();
  v35 = v34;
  v50 = MEMORY[0x1E69E93B0];
  v36 = v45[0];
  sub_1C93B52C0(v17, v45[0], MEMORY[0x1E69E93B0]);
  v37 = v28[8];
  static OSLogPrivacy.auto.getter();
  v49 = MEMORY[0x1E69E93B0];
  sub_1C93B5320(v17, MEMORY[0x1E69E93B0]);
  *v32 = 25705;
  v32[1] = 0xE200000000000000;
  v32[2] = v33;
  v32[3] = v35;
  sub_1C93A8768(v36, v32 + v37);
  sub_1C93B5BE4();
  sub_1C93B5320(v27, v38);
  v39 = v32 + v51;
  memcpy(v54, (v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_configuration), 0xA8uLL);
  static OSLogPrivacy.auto.getter();
  memcpy(v53, v54, sizeof(v53));
  sub_1C93B4ED8(v54, &v52);
  String.init<A>(describing:)();
  sub_1C93B5CAC();
  v40 = v28[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93B5320(v17, v49);
  strcpy(v39, "configuration");
  *(v39 + 7) = -4864;
  *(v39 + 2) = v35;
  *(v39 + 3) = v33;
  sub_1C93A8768(v36, &v39[v40]);
  v41 = v32 + 2 * v51;
  v42 = v46;
  sub_1C93B52C0(v1 + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_acquiredInfo, v46, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  static OSLogPrivacy.auto.getter();
  sub_1C93B52C0(v42, v47, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  String.init<A>(describing:)();
  sub_1C93B5CAC();
  v43 = v28[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93B5320(v17, v49);
  strcpy(v41, "acquiredInfo");
  v41[13] = 0;
  *(v41 + 7) = -5120;
  *(v41 + 2) = type metadata accessor for AuthenticatedSession.AcquiredInfo;
  *(v41 + 3) = v33;
  sub_1C93A8768(v36, &v41[v43]);
  sub_1C939ED5C();
  sub_1C93B5320(v42, v44);
  sub_1C93A5B58();
}

uint64_t sub_1C93B4BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1C93B5474(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1C93A4810(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1C93B54E4(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1C93B54E4(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C93B54E4(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_1C93B4F38()
{
  result = qword_1EE02AF68;
  if (!qword_1EE02AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF68);
  }

  return result;
}

uint64_t sub_1C93B4F8C(uint64_t a1)
{
  result = sub_1C93B5278(&qword_1EE02AF60, type metadata accessor for AuthenticatedSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AuthenticatedSession()
{
  result = qword_1EE02B6F8;
  if (!qword_1EE02B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93B5078(uint64_t a1)
{
  result = sub_1C93B5278(&qword_1EC39ADE8, type metadata accessor for AuthenticatedSession);
  *(a1 + 8) = result;
  return result;
}

void sub_1C93B50D8()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C93AC8A0();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1C93B5218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C93B5278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93B52C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93B5320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C939D430(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C93B53A0()
{
  v1 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5A08(v1);
  v3 = *(v2 + 80);
  sub_1C93B5CF4();
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = sub_1C93B5C44(v5);
  *v6 = v7;
  sub_1C93B5C64(v6);

  return sub_1C93D92F4();
}

uint64_t sub_1C93B5474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93B54E4(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93B554C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C93B5644;

  return v7(a1);
}

uint64_t sub_1C93B5644()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C939D510();

  return v5();
}

uint64_t sub_1C93B5728()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C93B5C44(v3);
  *v4 = v5;
  v6 = sub_1C93B5C8C(v4);

  return v7(v6);
}

uint64_t sub_1C93B57C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C93B5C44(v3);
  *v4 = v5;
  v6 = sub_1C93B5C8C(v4);

  return v7(v6);
}

uint64_t sub_1C93B5858()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C939D510();

  return v5();
}

uint64_t sub_1C93B5938()
{
  sub_1C93A5B40();
  v1 = type metadata accessor for SessionInvalidationContext(0);
  v2 = (*(*(v1 - 1) + 80) + 49) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = type metadata accessor for Date();
  sub_1C939D430(v7);
  v9 = *(v8 + 8);
  v9(v0 + v2, v7);
  sub_1C93A17C8(*(v6 + v1[5] + 8), *(v6 + v1[5] + 16));
  v10 = *(v0 + v2 + v1[6] + 8);

  v11 = (v0 + v2 + v1[7]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_1C93A17C8(*v11, v12);
  }

  v13 = *(v6 + v1[8] + 8);

  v14 = v6 + v1[9];
  v15 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  if (!sub_1C93A4810(v14, 1, v15))
  {
    v20 = *(v14 + 8);

    v21 = v14 + *(v15 + 20);
    type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C93A17C8(*(v21 + 8), *(v21 + 16));
    }

    else if (!EnumCaseMultiPayload)
    {
      v9(v21, v7);
    }
  }

  sub_1C93A5B58();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1C93B5AF0()
{
  v1 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5A08(v1);
  v3 = *(v2 + 80);
  sub_1C93B5CF4();
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = sub_1C93B5C44(v5);
  *v6 = v7;
  sub_1C93B5C64(v6);

  return sub_1C93D92F4();
}

uint64_t sub_1C93B5C8C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1C93B5CAC()
{
  v4 = *(v0 + 48);

  return sub_1C93B52C0(v2, v1, v4);
}

void sub_1C93B5CD0()
{
  v3 = *(v1 - 88);
  v4 = *(v1 - 72);

  j__os_unfair_lock_unlock(v0);
}

void sub_1C93B5CF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t AuthenticatedSession.AcquiredInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v5 = (a2 + v4[6]);
  v6 = (a2 + v4[8]);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0xF000000000000000;
  v7 = v4[9];
  v37 = v7;
  v8 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A1710(a2 + v7, 1, 1, v8);
  sub_1C93B8CAC();
  sub_1C93A5A40();
  sub_1C93B86C8();
  v9 = type metadata accessor for AnySessionAcquiredInfo();
  v10 = (a1 + v9[5]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (a2 + v4[5]);
  *v13 = v11;
  v13[1] = v12;
  v14 = (a1 + v9[7]);
  v15 = v14[1];
  *v5 = *v14;
  v5[1] = v15;
  v16 = (a1 + v9[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v6[1];
  v36 = *v6;
  v21 = v6[2];
  *v6 = *v16;
  v6[1] = v18;
  v6[2] = v19;
  sub_1C93A1CEC(v17, v18, v19);
  sub_1C93A1988(v11, v12);

  sub_1C93A17AC(v36, v20, v21);
  sub_1C93B5F54(a1 + v9[9], a2 + v37);
  v22 = (a1 + v9[6]);
  v23 = v22[1];
  if (v23)
  {
    v24 = v22[5];
    v25 = v22[6];
    v26 = v22[3];
    v27 = v22[4];
    v28 = v22[2];
    v29 = *v22;
    v30 = (a2 + v4[10]);
    v31 = a2 + v4[7];
    *v31 = v29;
    *(v31 + 8) = v23;
    *(v31 + 16) = v28 & 1;
    *(v31 + 24) = v26;
    *(v31 + 32) = v27;
    *(v31 + 40) = v24;
    *(v31 + 48) = v25;
    v32 = (a1 + v9[10]);
    v34 = *v32;
    v33 = v32[1];
    sub_1C93A1ABC(v29, v23, v28, v26, v27);

    result = sub_1C93B8674();
    *v30 = v34;
    v30[1] = v33;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticatedSession.AcquiredInfo()
{
  result = qword_1EE02BB00;
  if (!qword_1EE02BB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93B5F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticatedSession.AcquiredInfo.privilegedInfoHash.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1C93A5A40();
  sub_1C93A1988(v4, v5);
  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.AcquiredInfo.privilegedInfoHash.setter()
{
  v3 = v1 + *(sub_1C93B8D70() + 20);
  result = sub_1C93A17C8(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t AuthenticatedSession.AcquiredInfo.privilegedInfoHash.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 20);
  return sub_1C93A5AA4();
}

uint64_t AuthenticatedSession.AcquiredInfo.userPersonaUniqueString.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.AcquiredInfo.userPersonaUniqueString.setter()
{
  v3 = (v1 + *(sub_1C93B8D70() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AuthenticatedSession.AcquiredInfo.userPersonaUniqueString.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 24);
  return sub_1C93A5AA4();
}

uint64_t AuthenticatedSession.AcquiredInfo.user.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v9 = *(v3 + 32);
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;

  sub_1C93A1B1C(v6, v9);
}

__n128 AuthenticatedSession.AcquiredInfo.user.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 28);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 48);

  sub_1C93A1798(v8, v9);

  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  result = *(a1 + 3);
  *(v6 + 40) = *(a1 + 5);
  *(v6 + 24) = result;
  return result;
}

uint64_t AuthenticatedSession.AcquiredInfo.user.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 28);
  return sub_1C93A5AA4();
}

uint64_t AuthenticatedSession.AcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1C93A1CEC(v4, v5, v6);
}

__n128 AuthenticatedSession.AcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 32);
  sub_1C93A17AC(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t AuthenticatedSession.AcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 32);
  return sub_1C93A5AA4();
}

uint64_t AuthenticatedSession.AcquiredInfo.previousInvalidationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 36);

  return sub_1C93A1DE4(v3, a1);
}

uint64_t AuthenticatedSession.AcquiredInfo.previousInvalidationContext.setter()
{
  sub_1C93A59DC();
  v2 = v1 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 36);

  return sub_1C93A1820(v0, v2);
}

uint64_t AuthenticatedSession.AcquiredInfo.previousInvalidationContext.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 36);
  return sub_1C93A5AA4();
}

uint64_t AuthenticatedSession.AcquiredInfo.serviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.AcquiredInfo.serviceName.setter()
{
  v3 = (v1 + *(sub_1C93B8D70() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AuthenticatedSession.AcquiredInfo.serviceName.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AuthenticatedSession.AcquiredInfo() + 40);
  return sub_1C93A5AA4();
}

uint64_t static AuthenticatedSession.AcquiredInfo.== infix(_:_:)()
{
  v2 = sub_1C93A59E8();
  v3 = type metadata accessor for SessionInvalidationContext(v2);
  v4 = sub_1C939D430(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v9 = v8 - v7;
  v10 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v10);
  v12 = *(v11 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85[-v14];
  v16 = sub_1C93A1890(&qword_1EC39A9F8, &qword_1C93FCE08);
  sub_1C939D430(v16);
  v18 = *(v17 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85[-v20];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  if ((MEMORY[0x1CCA874A0](*(v1 + v22[5]), *(v1 + v22[5] + 8), *(v0 + v22[5]), *(v0 + v22[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v23 = v22[6];
  sub_1C93A5BDC();
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v28 = *v26 == *v27 && v24 == v25;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v88 = v15;
  v87 = v9;
  v29 = v1 + v22[7];
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  v32 = *(v29 + 24);
  v33 = *(v29 + 48);
  v97[0] = *v29;
  v97[1] = v30;
  v98 = v31;
  v99 = v32;
  v91 = *(v29 + 32);
  v100 = v91;
  v101 = v33;
  v34 = v0 + v22[7];
  v89 = v22;
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  v38 = *(v34 + 48);
  v92[0] = *v34;
  v92[1] = v35;
  v93 = v36;
  v94 = v37;
  v90 = *(v34 + 32);
  v95 = v90;
  v96 = v38;

  sub_1C93A1B1C(v32, v91);

  sub_1C93A1B1C(v37, v90);

  LOBYTE(v37) = static AuthenticatedSession.ResolvedUser.== infix(_:_:)(v97, v92);
  v39 = v94;
  v40 = v95;

  sub_1C93A1798(v39, v40);

  v41 = v99;
  v42 = v100;

  sub_1C93A1798(v41, v42);

  if ((v37 & 1) == 0)
  {
    return 0;
  }

  v43 = v89[8];
  v44 = *(v1 + v43 + 8);
  *&v91 = *(v1 + v43);
  v45 = *(v1 + v43 + 16);
  v46 = (v0 + v43);
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  if (v45 >> 60 == 15)
  {
    v50 = v44;
    sub_1C93A1CEC(v91, v44, v45);
    v51 = sub_1C939ED80();
    sub_1C93A1CEC(v51, v52, v53);
    if (v49 >> 60 == 15)
    {
      sub_1C93A17AC(v91, v50, v45);
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v49 >> 60 == 15)
  {
    v57 = v91;
    v50 = v44;
    sub_1C93A1CEC(v91, v44, v45);
    v58 = sub_1C939ED80();
    sub_1C93A1CEC(v58, v59, v60);
    sub_1C93A1CEC(v57, v50, v45);
    sub_1C93A17C8(v50, v45);
LABEL_23:
    sub_1C93A17AC(v91, v50, v45);
    v61 = sub_1C939ED80();
LABEL_24:
    sub_1C93A17AC(v61, v62, v63);
    return 0;
  }

  v65 = v91;
  *&v90 = v44;
  sub_1C93A1CEC(v91, v44, v45);
  if (v65 != v47)
  {
    v69 = sub_1C939ED80();
    sub_1C93A1CEC(v69, v70, v71);
    v72 = v91;
    v73 = v90;
    sub_1C93A1CEC(v91, v90, v45);
    v74 = sub_1C939ED80();
    sub_1C93A17AC(v74, v75, v76);
    sub_1C93A17C8(v73, v45);
    v61 = v72;
    v62 = v73;
    v63 = v45;
    goto LABEL_24;
  }

  v66 = v91;
  sub_1C93A1CEC(v91, v48, v49);
  v67 = v90;
  sub_1C93A1CEC(v66, v90, v45);
  v86 = MEMORY[0x1CCA874A0](v67, v45, v48, v49);
  sub_1C93A17AC(v66, v48, v49);
  sub_1C93A17C8(v67, v45);
  sub_1C93A17AC(v66, v67, v45);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v54 = v89;
  v55 = v89[9];
  v56 = *(v16 + 48);
  sub_1C93A1DE4(v1 + v55, v21);
  sub_1C93A1DE4(v0 + v55, &v21[v56]);
  sub_1C93B8DA4(v21);
  if (!v28)
  {
    sub_1C93A1DE4(v21, v88);
    sub_1C93B8DA4(&v21[v56]);
    if (!v68)
    {
      sub_1C93AEB5C();
      sub_1C93AE50C();
      static SessionInvalidationContext.== infix(_:_:)();
      v78 = v77;
      sub_1C93B8674();
      sub_1C93B8674();
      sub_1C93A4838(v21, &qword_1EC39A9F0, &qword_1C93FCE00);
      if ((v78 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }

    sub_1C93B8C7C();
    sub_1C93B8674();
LABEL_33:
    sub_1C93A4838(v21, &qword_1EC39A9F8, &qword_1C93FCE08);
    return 0;
  }

  sub_1C93B8DA4(&v21[v56]);
  if (!v28)
  {
    goto LABEL_33;
  }

  sub_1C93A4838(v21, &qword_1EC39A9F0, &qword_1C93FCE00);
LABEL_36:
  v79 = v54[10];
  sub_1C93A5BDC();
  if (v80)
  {
    if (v81)
    {
      v84 = *v82 == *v83 && v80 == v81;
      if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v81)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C93B6AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1919251317 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000025 && 0x80000001C9406030 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C9406010 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C93B6D3C(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 5;
      goto LABEL_7;
    case 3:
      result = 1919251317;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000012;
      break;
    case 6:
      result = 0x4E65636976726573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93B6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93B6AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93B6E54(uint64_t a1)
{
  v2 = sub_1C93B8620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93B6E90(uint64_t a1)
{
  v2 = sub_1C93B8620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.AcquiredInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C93A1890(&qword_1EC39ADF8, &qword_1C93FE8A0);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B8620();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v37) = 0;
  type metadata accessor for SessionID(0);
  sub_1C93B8CDC();
  sub_1C93B88B0(v14, v15);
  sub_1C93A5A14();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
    v37 = sub_1C93A5AD0(v16[5]);
    v38 = v17;
    v43 = 1;
    sub_1C93A1988(v37, v17);
    sub_1C93A4928();
    sub_1C93B8D38();
    sub_1C93A5A14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v37, v38);
    sub_1C93A5AD0(v16[6]);
    LOBYTE(v37) = 2;
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3 + v16[7];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = *(v18 + 48);
    v37 = *v18;
    v38 = v19;
    LOBYTE(v39) = v20;
    v40 = v21;
    v36 = *(v18 + 32);
    v41 = v36;
    v42 = v22;
    v43 = 3;

    sub_1C93A1B1C(v21, v36);
    v23 = sub_1C93A497C();

    sub_1C93B8D38();
    sub_1C93A5A14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v23)
    {
      v24 = v40;
      v25 = v41;

      sub_1C93A1798(v24, v25);
    }

    else
    {
      v26 = v40;
      v27 = v41;

      sub_1C93A1798(v26, v27);

      v28 = sub_1C93A5AD0(v16[8]);
      v30 = *(v29 + 16);
      v37 = v28;
      v38 = v31;
      v39 = v30;
      v43 = 4;
      sub_1C93A1CEC(v28, v31, v30);
      sub_1C93A49D0();
      sub_1C93B8D38();
      sub_1C93A5A14();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_1C93A17AC(v37, v38, v39);
      v32 = v16[9];
      LOBYTE(v37) = 5;
      type metadata accessor for SessionInvalidationContext(0);
      sub_1C93B8C94();
      sub_1C93B88B0(v33, v34);
      sub_1C93A5A14();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_1C93A5AD0(v16[10]);
      LOBYTE(v37) = 6;
      sub_1C93A5A14();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    }
  }

  return (*(v7 + 8))(v12, v5);
}

void AuthenticatedSession.AcquiredInfo.hash(into:)()
{
  v2 = v0;
  v3 = sub_1C93A59DC();
  v31 = type metadata accessor for SessionInvalidationContext(v3);
  v4 = sub_1C939D430(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A5B7C();
  type metadata accessor for UUID();
  sub_1C93B88B0(&qword_1EC39AA08, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v11 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v12 = (v0 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  Data.hash(into:)();
  v15 = (v0 + v11[6]);
  if (v15[1])
  {
    v16 = *v15;
    sub_1C93A5AF4();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  v17 = (v0 + v11[7]);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v22 = v17[3];
  v21 = v17[4];
  v23 = v17[5];
  v24 = v17[6];
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v20);
  if (v21)
  {
    if (v21 == 1)
    {
      v25 = 1;
    }

    else
    {
      if (v21 != 2)
      {
        MEMORY[0x1CCA87E40](2);
        String.hash(into:)();
        if (v24)
        {
          goto LABEL_11;
        }

        goto LABEL_13;
      }

      v25 = 3;
    }
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x1CCA87E40](v25);
  if (v24)
  {
LABEL_11:
    sub_1C93A5AF4();
    String.hash(into:)();
    goto LABEL_14;
  }

LABEL_13:
  sub_1C93A5B28();
LABEL_14:
  v26 = (v2 + v11[8]);
  if (v26[2] >> 60 == 15)
  {
    sub_1C93A5B28();
  }

  else
  {
    v28 = *v26;
    v27 = v26[1];
    sub_1C93A5AF4();
    MEMORY[0x1CCA87E60](v28);
    Data.hash(into:)();
  }

  sub_1C93A1DE4(v2 + v11[9], v1);
  if (sub_1C93A4810(v1, 1, v31) == 1)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    sub_1C93A5AF4();
    SessionInvalidationContext.hash(into:)();
    sub_1C93B8C7C();
    sub_1C93B8674();
  }

  v29 = (v2 + v11[10]);
  if (v29[1])
  {
    v30 = *v29;
    sub_1C93A5AF4();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }
}

Swift::Int AuthenticatedSession.AcquiredInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.AcquiredInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61[1] = a2;
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v4);
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C93A5B7C();
  v9 = type metadata accessor for SessionID(v8);
  v10 = sub_1C939D430(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59A8();
  *&v62 = v14 - v13;
  v15 = sub_1C93A1890(&qword_1EC39AE08, &qword_1C93FE8A8);
  v16 = sub_1C939D44C(v15);
  v63 = v17;
  v64 = v16;
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v61 - v21;
  v23 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v24 = sub_1C939D430(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C93A59A8();
  v29 = v28 - v27;
  v31 = (v28 - v27 + v30[8]);
  *v31 = 0;
  v31[1] = 0;
  v67 = v31;
  v68 = v30;
  v31[2] = 0xF000000000000000;
  v32 = v30[9];
  v33 = type metadata accessor for SessionInvalidationContext(0);
  v34 = v32;
  v35 = v29;
  sub_1C93A1710(v29 + v32, 1, 1, v33);
  v37 = a1[3];
  v36 = a1[4];
  v69 = a1;
  sub_1C93A4890(a1, v37);
  sub_1C93B8620();
  v65 = v22;
  v38 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v42 = v67;
    sub_1C939EA94(v69);

    sub_1C93A17AC(*v42, v42[1], v42[2]);
    return sub_1C93A4838(v35 + v34, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v61[0] = v33;
    v66 = v2;
    LOBYTE(v70) = 0;
    sub_1C93B8CDC();
    sub_1C93B88B0(v39, v40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v34;
    sub_1C93AE50C();
    v74 = 1;
    sub_1C93A4A6C();
    sub_1C93B8D48();
    v45 = v67;
    v44 = v68;
    *(v35 + v68[5]) = v70;
    LOBYTE(v70) = 2;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = (v35 + v44[6]);
    *v47 = v46;
    v47[1] = v48;
    v74 = 3;
    sub_1C93A4AC0();
    sub_1C93B8D48();
    v49 = *(&v70 + 1);
    v50 = v71;
    v51 = v35 + v44[7];
    *v51 = v70;
    *(v51 + 8) = v49;
    *(v51 + 16) = v50;
    *(v51 + 24) = v72;
    *(v51 + 40) = v73;
    v74 = 4;
    sub_1C93A4B14();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v62 = v70;
    v52 = v71;
    sub_1C93A17AC(*v45, v45[1], v45[2]);
    *v45 = v62;
    v45[2] = v52;
    LOBYTE(v70) = 5;
    sub_1C93B8C94();
    sub_1C93B88B0(v53, v54);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1C93A1820(v66, v35 + v41);
    LOBYTE(v70) = 6;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v56;
    v58 = (v35 + v44[10]);
    v59 = sub_1C93B8D98();
    v60(v59);
    *v58 = v55;
    v58[1] = v57;
    sub_1C93B86C8();
    sub_1C939EA94(v69);
    return sub_1C93B8674();
  }
}

Swift::Int sub_1C93B7B7C()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

size_t AuthenticatedSession.AcquiredInfo.propertyDescriptions.getter()
{
  v1 = v0;
  v2 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v2);
  v4 = *(v3 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v147 = v136 - v6;
  v148 = type metadata accessor for SessionInvalidationContext(0);
  v7 = sub_1C939D430(v148);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59B8();
  v136[0] = v10 - v11;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A5B70();
  v136[1] = v13;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v14);
  v150 = v136 - v15;
  v153 = type metadata accessor for PropertyDescription();
  v16 = *(v153 - 8);
  v17 = v16;
  v18 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v153);
  sub_1C93A59B8();
  v138 = (v19 - v20);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A5B70();
  v149 = v22;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C93A5B70();
  v146 = v24;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C93A5B70();
  v144 = v26;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v27);
  v137 = v136 - v28;
  v29 = type metadata accessor for OSLogPrivacy();
  v30 = sub_1C93A5A08(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C93A59B8();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v136 - v37;
  v39 = type metadata accessor for SessionID(0);
  v40 = sub_1C939D430(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v44 = *(v16 + 72);
  v45 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C93FE890;
  v151 = v45;
  v143 = v46;
  v47 = (v46 + v45);
  v154 = v0;
  sub_1C93B86C8();
  static OSLogPrivacy.auto.getter();
  sub_1C93B86C8();
  v48 = String.init<A>(describing:)();
  v50 = v49;
  sub_1C93B8C64();
  v142 = v51;
  v139 = v35;
  sub_1C93B86C8();
  v52 = *(v153 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93B8C4C();
  v141 = v53;
  sub_1C93B8674();
  *v47 = 0x496E6F6973736573;
  v47[1] = 0xE900000000000044;
  v47[2] = v48;
  v47[3] = v50;
  sub_1C93A5878();
  v140 = v54;
  sub_1C93A4BBC();
  sub_1C93B8CC4();
  sub_1C93B8674();
  v152 = v44;
  v55 = (v47 + v44);
  v56 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v57 = v1 + v56[7];
  v59 = *v57;
  v58 = *(v57 + 8);
  LOBYTE(v1) = *(v57 + 16);
  v61 = *(v57 + 24);
  v60 = *(v57 + 32);
  v63 = *(v57 + 40);
  v62 = *(v57 + 48);
  static OSLogPrivacy.auto.getter();
  v155 = v59;
  v156 = v58;
  LOBYTE(v157) = v1;
  v158 = v61;
  v159 = v60;
  v160 = v63;
  v161 = v62;

  v64 = v61;
  v65 = v38;
  v66 = v153;
  sub_1C93A1B1C(v64, v60);

  v67 = String.init<A>(describing:)();
  v69 = v68;
  sub_1C93B86C8();
  v70 = *(v66 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93B8674();
  *v55 = 1919251317;
  v55[1] = 0xE400000000000000;
  v55[2] = v67;
  v55[3] = v69;
  sub_1C93A4BBC();
  v71 = (v154 + v56[6]);
  v72 = v71[1];
  if (v72)
  {
    v142 = 2 * v152;
    v73 = *v71;
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.public.getter();
    v155 = v73;
    v156 = v72;
    v74 = String.init<A>(describing:)();
    v76 = v75;
    sub_1C93B8C64();
    sub_1C93B86C8();
    v77 = *(v153 + 24);
    v78 = v137;
    static OSLogPrivacy.auto.getter();

    sub_1C93B8C4C();
    sub_1C93B8674();
    sub_1C93B8D8C();
    *v78 = v79 + 5;
    v78[1] = 0x80000001C9406060;
    v78[2] = v74;
    v78[3] = v76;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v80 = sub_1C93A4F7C(1uLL, 3, 1, v143);
    *(v80 + 16) = 3;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  else
  {
    v80 = v143;
  }

  v81 = (v154 + v56[5]);
  if (!sub_1C93A41A4(*v81, v81[1]))
  {
    v82 = *v81;
    v83 = v81[1];
    static OSLogPrivacy.auto.getter();
    v155 = v82;
    v156 = v83;
    v84 = sub_1C93A5A40();
    sub_1C93A1988(v84, v85);
    v86 = String.init<A>(describing:)();
    v88 = v87;
    sub_1C93B8C64();
    sub_1C93B8DC4();
    v89 = *(v153 + 24);
    v90 = v144;
    static OSLogPrivacy.auto.getter();
    sub_1C93B8C4C();
    sub_1C93B8674();
    sub_1C93B8D8C();
    *v90 = v91;
    v90[1] = 0x80000001C9405FF0;
    v90[2] = v86;
    v90[3] = v88;
    sub_1C93A5878();
    sub_1C93A4BBC();
    sub_1C93B8D18();
    if (v93)
    {
      v80 = sub_1C93B8CF4(v92);
    }

    *(v80 + 16) = v86;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  v94 = (v154 + v56[8]);
  v95 = v94[2];
  v145 = v56;
  if (v95 >> 60 != 15)
  {
    v96 = *v94;
    v97 = v94[1];
    v143 = 0x80000001C9406030;
    v98 = sub_1C93B8D28();
    sub_1C93A1CEC(v98, v99, v100);
    sub_1C93A1988(v97, v95);
    static OSLogPrivacy.auto.getter();
    v155 = v96;
    v156 = v97;
    v157 = v95;
    sub_1C93A1988(v97, v95);
    v101 = String.init<A>(describing:)();
    v103 = v102;
    sub_1C93B8C64();
    sub_1C93B8DC4();
    v104 = *(v153 + 24);
    v105 = v146;
    static OSLogPrivacy.auto.getter();
    v106 = sub_1C93B8D28();
    sub_1C93A17AC(v106, v107, v108);
    sub_1C93B8C4C();
    v144 = v65;
    sub_1C93B8674();
    sub_1C93B8D8C();
    v110 = v109 + 19;
    v111 = v143;
    *v105 = v110;
    v105[1] = v111;
    v105[2] = v101;
    v105[3] = v103;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v113 = *(v80 + 16);
    v112 = *(v80 + 24);
    if (v113 >= v112 >> 1)
    {
      v80 = sub_1C93A4F7C(v112 > 1, v113 + 1, 1, v80);
    }

    v114 = sub_1C93B8D28();
    sub_1C93A17AC(v114, v115, v116);
    *(v80 + 16) = v113 + 1;
    sub_1C939D4BC();
    sub_1C93AE50C();
    v56 = v145;
  }

  v117 = v147;
  sub_1C93A1DE4(v154 + v56[9], v147);
  if (sub_1C93A4810(v117, 1, v148) == 1)
  {
    sub_1C93A4838(v117, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    sub_1C93B86C8();
    static OSLogPrivacy.auto.getter();
    sub_1C93B86C8();
    v118 = String.init<A>(describing:)();
    v120 = v119;
    sub_1C93B8C64();
    sub_1C93B8DC4();
    v121 = *(v153 + 24);
    v122 = v149;
    static OSLogPrivacy.auto.getter();
    sub_1C93B8C4C();
    sub_1C93B8674();
    sub_1C93B8D8C();
    *v122 = v123 + 9;
    v122[1] = 0x80000001C9406010;
    v122[2] = v118;
    v122[3] = v120;
    sub_1C93A5878();
    sub_1C93A4BBC();
    sub_1C93B8C7C();
    sub_1C93B8674();
    sub_1C93B8D18();
    if (v93)
    {
      v80 = sub_1C93B8CF4(v124);
    }

    sub_1C93B8C7C();
    sub_1C93B8674();
    *(v80 + 16) = v118;
    sub_1C939D4BC();
    sub_1C93AE50C();
    v56 = v145;
  }

  v125 = (v154 + v56[10]);
  v126 = v125[1];
  if (v126)
  {
    v127 = *v125;
    v128 = v125[1];
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v155 = v127;
    v156 = v126;
    v129 = String.init<A>(describing:)();
    v131 = v130;
    sub_1C93B8C64();
    sub_1C93B8DC4();
    v132 = *(v153 + 24);
    v133 = v138;
    static OSLogPrivacy.auto.getter();

    sub_1C93B8C4C();
    sub_1C93B8674();
    *v133 = 0x4E65636976726573;
    v133[1] = 0xEB00000000656D61;
    v133[2] = v129;
    v133[3] = v131;
    sub_1C93A5878();
    sub_1C93A4BBC();
    sub_1C93B8D18();
    if (v93)
    {
      v80 = sub_1C93B8CF4(v134);
    }

    *(v80 + 16) = v126;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  return v80;
}

unint64_t sub_1C93B8620()
{
  result = qword_1EC39AE00;
  if (!qword_1EC39AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE00);
  }

  return result;
}

uint64_t sub_1C93B8674()
{
  v1 = sub_1C93A59DC();
  v3 = v2(v1);
  sub_1C939D430(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C93B86C8()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93B8764(void *a1)
{
  a1[1] = sub_1C93B88B0(&qword_1EC39AE10, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  a1[2] = sub_1C93B88B0(&qword_1EC39AE18, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  result = sub_1C93B88B0(&qword_1EC39AE20, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  a1[3] = result;
  return result;
}

uint64_t sub_1C93B8858(uint64_t a1)
{
  result = sub_1C93B88B0(&qword_1EC39AE30, type metadata accessor for AuthenticatedSession.AcquiredInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93B88B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93B8920()
{
  v0 = type metadata accessor for SessionID(319);
  if (v1 <= 0x3F)
  {
    sub_1C93B8A1C(319, qword_1EE02C1D8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C93B8A1C(319, &qword_1EE02C628);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_1C93A5334();
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_1C93B8A1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *_s12AcquiredInfoV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93B8B48()
{
  result = qword_1EC39AE38;
  if (!qword_1EC39AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE38);
  }

  return result;
}

unint64_t sub_1C93B8BA0()
{
  result = qword_1EC39AE40;
  if (!qword_1EC39AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE40);
  }

  return result;
}

unint64_t sub_1C93B8BF8()
{
  result = qword_1EC39AE48;
  if (!qword_1EC39AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE48);
  }

  return result;
}

size_t sub_1C93B8CF4@<X0>(unint64_t a1@<X8>)
{

  return sub_1C93A4F7C(a1 > 1, v1, 1, v2);
}

uint64_t sub_1C93B8D48()
{
  v2 = *(v0 - 184);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93B8D70()
{

  return type metadata accessor for AuthenticatedSession.AcquiredInfo();
}

uint64_t sub_1C93B8DC4()
{

  return sub_1C93B86C8();
}

uint64_t AuthenticatedSession.Configuration.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AuthenticatedSession.Configuration.containerID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t AuthenticatedSession.Configuration.application.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_1C93A5D1C(v4, v5);
}

__n128 AuthenticatedSession.Configuration.application.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);

  sub_1C93A5D7C(v4, v5);
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t AuthenticatedSession.Configuration.account.getter@<X0>(void *a1@<X8>)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 56), 0x60uLL);
  return sub_1C93A8830(v8, &v7);
}

void *AuthenticatedSession.Configuration.account.setter(const void *a1)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  sub_1C93A80A4(&v7);
  return memcpy((v1 + 56), a1, 0x60uLL);
}

uint64_t AuthenticatedSession.Configuration.encryption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C939EBDC(v2, v3);
}

uint64_t AuthenticatedSession.Configuration.encryption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A5E70(*(v1 + 152), *(v1 + 160));
  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  return result;
}

uint64_t static AuthenticatedSession.Configuration.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B238 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EE02B248;
  v3 = byte_1EE02B250;
  *a1 = qword_1EE02B240;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
}

uint64_t static AuthenticatedSession.Configuration.standard(containerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
}

BOOL static AuthenticatedSession.Configuration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v37 = *(a1 + 17);
  v32 = a1[3];
  v36 = a1[5];
  v34 = a1[4];
  v35 = a1[6];
  memcpy(__dst, a1 + 7, sizeof(__dst));
  v29 = a1[20];
  v30 = a1[19];
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = *(a2 + 17);
  v11 = a2[4];
  v31 = a2[3];
  v12 = a2[6];
  v33 = a2[5];
  memcpy(v44, a2 + 7, 0x60uLL);
  v13 = a2[19];
  v14 = a2[20];
  if (v4 == v7 && v5 == v8)
  {
    v17 = 0;
    if (v6 != v9)
    {
      return v17;
    }

    v28 = a2[20];
    v16 = a2[19];
  }

  else
  {
    v28 = a2[20];
    v16 = a2[19];
    v17 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v6 ^ v9))
    {
      return v17;
    }
  }

  if (((v37 ^ v10) & 1) == 0)
  {
    v42[0] = v32;
    v42[1] = v34;
    v42[2] = v36;
    v42[3] = v35;
    v41[0] = v31;
    v41[1] = v11;
    v41[2] = v33;
    v41[3] = v12;

    sub_1C93A5D1C(v36, v35);

    sub_1C93A5D1C(v33, v12);
    v18 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(v42, v41);

    v19 = sub_1C93A8DA0();
    sub_1C93A5D7C(v19, v20);

    v21 = sub_1C93A8DA0();
    sub_1C93A5D7C(v21, v22);
    if (!v18)
    {
      return 0;
    }

    memcpy(v40, __dst, sizeof(v40));
    sub_1C939D51C();
    memcpy(v23, v24, v25);
    sub_1C93A8830(__dst, v38);
    sub_1C93A8830(v44, v38);
    v26 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v40, __src);
    memcpy(v41, __src, sizeof(v41));
    sub_1C93A80A4(v41);
    memcpy(v42, v40, sizeof(v42));
    sub_1C93A80A4(v42);
    if (v26)
    {
      v40[0] = v30;
      v40[1] = v29;
      __src[0] = v16;
      __src[1] = v28;
      sub_1C939EBDC(v30, v29);
      sub_1C939EBDC(v16, v28);
      v17 = static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.== infix(_:_:)(v40, __src);
      sub_1C93A5E70(__src[0], __src[1]);
      sub_1C93A5E70(v40[0], v40[1]);
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

uint64_t sub_1C93B9398(char a1)
{
  result = 0x656E6961746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 0x746163696C707061;
      break;
    case 3:
      result = 0x746E756F636361;
      break;
    case 4:
      result = 0x6974707972636E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93B944C(uint64_t a1)
{
  v2 = sub_1C93BA538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93B9488(uint64_t a1)
{
  v2 = sub_1C93BA538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AE50, &qword_1C93FEB28);
  v4 = sub_1C939D44C(v3);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = v1[1];
  v38 = *v1;
  v11 = *(v1 + 16);
  v37 = *(v1 + 17);
  v12 = v1[3];
  v35 = v1[4];
  v36 = v12;
  v13 = v1[5];
  v33 = v1[6];
  v34 = v13;
  sub_1C939ED08();
  memcpy(v14, v15, v16);
  v17 = v1[20];
  v31 = v1[19];
  v32 = v17;
  v18 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BA538();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v44[0] = v38;
  v44[1] = v10;
  LOBYTE(v44[2]) = v11;
  v43[0] = 0;
  sub_1C93A814C();
  sub_1C93BAA14();
  v19 = v39;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {

    return (*(v46 + 8))(v9, v3);
  }

  else
  {
    v21 = v35;
    v22 = v36;
    v23 = v34;

    LOBYTE(v44[0]) = v37;
    v43[0] = 1;
    sub_1C93A81A0();
    sub_1C93BAA14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44[0] = v22;
    v44[1] = v21;
    v44[2] = v23;
    v24 = v33;
    v44[3] = v33;
    v43[0] = 2;

    sub_1C93A5D1C(v23, v24);
    sub_1C93A81F4();
    sub_1C93BAA14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v46;
    v26 = v44[2];
    v27 = v44[3];

    sub_1C93A5D7C(v26, v27);
    sub_1C939D51C();
    memcpy(v28, v29, v30);
    v43[103] = 3;
    sub_1C93A8830(v45, v43);
    sub_1C93A8248();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v43, v44, 0x60uLL);
    sub_1C93A80A4(v43);
    v41 = v31;
    v42 = v32;
    v40 = 4;
    sub_1C939EBDC(v31, v32);
    sub_1C93A829C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A5E70(v41, v42);
    return (*(v25 + 8))(v9, v3);
  }
}

uint64_t AuthenticatedSession.Configuration.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v1 + 17);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[19];
  v11 = v1[20];
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v4);
  Hasher._combine(_:)(v5);
  if (v7)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  if (v9 == 1)
  {
    v12 = 1;
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
    if (v9)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      goto LABEL_10;
    }

    v12 = 0;
  }

  MEMORY[0x1CCA87E40](v12);
LABEL_10:
  memcpy(v15, v1 + 7, sizeof(v15));
  AuthenticatedSession.Configuration.Account.hash(into:)();
  if (!v11)
  {
    v13 = 0;
    return MEMORY[0x1CCA87E40](v13);
  }

  if (v11 == 1)
  {
    v13 = 2;
    return MEMORY[0x1CCA87E40](v13);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AuthenticatedSession.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v27 = sub_1C93A1890(&qword_1EC39AE60, &qword_1C93FEB30);
  v5 = sub_1C939D44C(v27);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BA538();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1C939EA94(a1);
  }

  v9 = a2;
  sub_1C93A849C();
  sub_1C93BA9E4();
  v26 = v31;
  sub_1C93A84F0();
  sub_1C93BA9E4();
  v25 = v30;
  v43 = v32;
  v10 = v30;
  LOBYTE(v29[0]) = 2;
  sub_1C93A8544();
  sub_1C93BA9E4();
  v11 = v30;
  v23 = v32;
  v24 = v31;
  v22 = v33;
  v45 = 3;
  sub_1C93A8598();
  sub_1C93BA9E4();
  memcpy(__dst, v41, sizeof(__dst));
  v44 = 4;
  sub_1C93A85EC();
  sub_1C93BA9E4();
  v12 = sub_1C93BAA04();
  v13(v12);
  v14 = v39;
  v28 = v40;
  v29[0] = v25;
  v29[1] = v26;
  LOBYTE(v29[2]) = v43;
  BYTE1(v29[2]) = v10;
  v29[3] = v11;
  v29[4] = v24;
  v29[5] = v23;
  v29[6] = v22;
  sub_1C939D51C();
  memcpy(v15, v16, v17);
  v29[19] = v14;
  v29[20] = v28;
  memcpy(v9, v29, 0xA8uLL);
  sub_1C93B4ED8(v29, &v30);
  sub_1C939EA94(a1);
  v30 = v25;
  v31 = v26;
  LOBYTE(v32) = v43;
  BYTE1(v32) = v10;
  v33 = v11;
  v34 = v24;
  v35 = v23;
  v36 = v22;
  sub_1C939D51C();
  memcpy(v18, v19, v20);
  v37 = v14;
  v38 = v28;
  return sub_1C93B4E84(&v30);
}

Swift::Int sub_1C93B9D84()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v105 = *(v1 - 8);
  v2 = v105;
  v106 = v1;
  v3 = *(v105 + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v98 = (&v91 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v91 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v91 - v10);
  v12 = type metadata accessor for OSLogPrivacy();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v91 - v17;
  v19 = *v0;
  v20 = *(v0 + 8);
  v21 = *(v0 + 16);
  LODWORD(v104) = *(v0 + 17);
  v22 = *(v0 + 32);
  v94 = *(v0 + 24);
  v95 = v22;
  v23 = *(v0 + 40);
  v96 = *(v0 + 48);
  v97 = v23;
  sub_1C939ED08();
  memcpy(v24, v25, v26);
  v27 = *(v0 + 160);
  v99 = *(v0 + 152);
  v102 = v27;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v28 = (v105[80] + 32) & ~v105[80];
  v100 = *(v2 + 72);
  v92 = v28 + v100;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C93FCDF0;
  v103 = v28;
  v30 = (v29 + v28);
  static OSLogPrivacy.public.getter();
  v110[0] = v19;
  v110[1] = v20;
  LOBYTE(v110[2]) = v21;
  v31 = v106;

  v32 = String.init<A>(describing:)();
  v34 = v33;
  sub_1C93A86A8(v18, v16);
  v35 = *(v31 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v18);
  *v30 = 0x656E6961746E6F63;
  v30[1] = 0xEB00000000444972;
  v30[2] = v32;
  v30[3] = v34;
  v105 = v16;
  sub_1C93A8768(v16, v30 + v35);
  v36 = v104;
  v104 = v18;
  if (v36 == 1)
  {
    static OSLogPrivacy.auto.getter();
    LOBYTE(v110[0]) = 1;
    v37 = String.init<A>(describing:)();
    v38 = v105;
    v40 = v39;
    sub_1C93A86A8(v18, v105);
    v41 = *(v31 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v18);
    *v11 = 0x6D6574737973;
    v11[1] = 0xE600000000000000;
    v11[2] = v37;
    v11[3] = v40;
    sub_1C93A8768(v38, v11 + v41);
    v29 = sub_1C93A4F7C(1uLL, 2, 1, v29);
    *(v29 + 16) = 2;
    sub_1C93A87CC(v11, v29 + v92);
  }

  v43 = v94;
  v42 = v95;
  v110[0] = v94;
  v110[1] = v95;
  v45 = v96;
  v44 = v97;
  v110[2] = v97;
  v110[3] = v96;
  memset(v109, 0, 32);

  sub_1C93A5D1C(v44, v45);
  v46 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(v110, v109);
  v48 = *(&v109[1] + 1);
  v47 = *&v109[1];

  sub_1C93A5D7C(v47, v48);
  v49 = v110[2];
  v50 = v110[3];

  sub_1C93A5D7C(v49, v50);
  v51 = v100;
  v52 = v101;
  if (v46)
  {
    v53 = v102;
    v54 = v103;
    v55 = v101;
  }

  else
  {
    v56 = v45;
    v57 = v100;
    v58 = v104;
    static OSLogPrivacy.auto.getter();
    v110[0] = v43;
    v110[1] = v42;
    v110[2] = v44;
    v110[3] = v56;

    sub_1C93A5D1C(v44, v56);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    v62 = v105;
    sub_1C93A86A8(v58, v105);
    v63 = *(v106 + 24);
    v64 = v93;
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v58);
    *v64 = 0x746163696C707061;
    v64[1] = 0xEB000000006E6F69;
    v64[2] = v59;
    v64[3] = v61;
    sub_1C93A8768(v62, v64 + v63);
    sub_1C93BAA28();
    v54 = v103;
    if (v66)
    {
      v29 = sub_1C939ED90(v65 > 1);
    }

    v51 = v57;
    v55 = v52;
    *(v29 + 16) = v59;
    sub_1C93A87CC(v64, v29 + v54 + v61 * v57);
    v53 = v102;
  }

  sub_1C939D51C();
  memcpy(v67, v68, v69);
  v107[0] = 0;
  memset(&v107[8], 0, 33);
  memset(&v107[48], 0, 48);
  sub_1C93A8830(v111, v110);
  v70 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v108, v107);
  memcpy(v109, v107, sizeof(v109));
  sub_1C93A80A4(v109);
  memcpy(v110, v108, sizeof(v110));
  sub_1C93A80A4(v110);
  if (!v70)
  {
    v71 = v51;
    v72 = v104;
    static OSLogPrivacy.auto.getter();
    sub_1C939D51C();
    memcpy(v73, v74, v75);
    sub_1C93A8830(v111, v107);
    String.init<A>(describing:)();
    sub_1C93BAA38();
    v76 = *(v106 + 24);
    v77 = v98;
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v72);
    *v77 = 0x746E756F636361;
    v77[1] = 0xE700000000000000;
    v77[2] = v70;
    v77[3] = v53;
    sub_1C93A8768(v52, v77 + v76);
    sub_1C93BAA28();
    if (v66)
    {
      v29 = sub_1C939ED90(v78 > 1);
    }

    v51 = v71;
    v54 = v103;
    *(v29 + 16) = v70;
    sub_1C93A87CC(v98, v29 + v54 + v53 * v71);
    v53 = v102;
  }

  v79 = v99;
  if (v53 != 1)
  {
    if (!v53)
    {
      sub_1C93A5E70(v99, 0);
      sub_1C93A5E70(0, 0);
      sub_1C93A5E70(v79, 0);
      return v29;
    }

    sub_1C939EBDC(v99, v53);
  }

  v80 = v54;
  v81 = sub_1C93A8DA0();
  sub_1C93A5E70(v81, v82);
  sub_1C93A5E70(0, 0);
  v83 = sub_1C93A8DA0();
  sub_1C93A5E70(v83, v84);
  v85 = v104;
  static OSLogPrivacy.auto.getter();
  v108[0] = v79;
  v108[1] = v53;
  v86 = sub_1C93A8DA0();
  sub_1C939EBDC(v86, v87);
  String.init<A>(describing:)();
  sub_1C93BAA38();
  v88 = *(v106 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v85);
  *v55 = 0x6974707972636E65;
  v55[1] = 0xEA00000000006E6FLL;
  v55[2] = v79;
  v55[3] = v53;
  sub_1C93A8768(v52, v55 + v88);
  sub_1C93BAA28();
  if (v66)
  {
    v29 = sub_1C939ED90(v89 > 1);
  }

  *(v29 + 16) = v79;
  sub_1C93A87CC(v55, v29 + v80 + v53 * v51);
  return v29;
}

unint64_t sub_1C93BA538()
{
  result = qword_1EC39AE58;
  if (!qword_1EC39AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE58);
  }

  return result;
}

unint64_t sub_1C93BA590()
{
  result = qword_1EE02AF58;
  if (!qword_1EE02AF58)
  {
    type metadata accessor for AuthenticatedSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF58);
  }

  return result;
}

unint64_t sub_1C93BA5E8(void *a1)
{
  a1[1] = sub_1C93BA620();
  a1[2] = sub_1C93BA674();
  result = sub_1C93BA6C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1C93BA620()
{
  result = qword_1EE02AF70;
  if (!qword_1EE02AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF70);
  }

  return result;
}

unint64_t sub_1C93BA674()
{
  result = qword_1EE02AF88;
  if (!qword_1EE02AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF88);
  }

  return result;
}

unint64_t sub_1C93BA6C8()
{
  result = qword_1EE02AF80;
  if (!qword_1EE02AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF80);
  }

  return result;
}

unint64_t sub_1C93BA720()
{
  result = qword_1EE02AF78;
  if (!qword_1EE02AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF78);
  }

  return result;
}

unint64_t sub_1C93BA774(uint64_t a1)
{
  result = sub_1C93BA79C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93BA79C()
{
  result = qword_1EC39AE68;
  if (!qword_1EC39AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE68);
  }

  return result;
}

_BYTE *_s13ConfigurationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93BA8E0()
{
  result = qword_1EC39AE70;
  if (!qword_1EC39AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE70);
  }

  return result;
}

unint64_t sub_1C93BA938()
{
  result = qword_1EC39AE78;
  if (!qword_1EC39AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE78);
  }

  return result;
}

unint64_t sub_1C93BA990()
{
  result = qword_1EC39AE80;
  if (!qword_1EC39AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE80);
  }

  return result;
}

uint64_t sub_1C93BA9E4()
{
  v2 = *(v0 + 64);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93BAA04()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 64);
  return result;
}

uint64_t sub_1C93BAA38()
{
  v3 = *(v0 + 112);

  return sub_1C93A86A8(v1, v3);
}

double static AuthenticatedSession.Configuration.Account.standard.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.persona.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t AuthenticatedSession.Configuration.Account.persona.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

void AuthenticatedSession.Configuration.Account.accessGrantedVia.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_1C93BABF0(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
}

uint64_t AuthenticatedSession.Configuration.Account.explicitCredentials.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1C93BAC10(v2, v3);
}

__n128 AuthenticatedSession.Configuration.Account.explicitCredentials.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  sub_1C93BAC60(v1[6], v1[7]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v10;
  v1[10] = v3;
  v1[11] = v4;
  return result;
}

void sub_1C93BABF0(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1C93BAC10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C93BAC60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL static AuthenticatedSession.Configuration.Account.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v60 = v2;
  v61 = v3;
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = a1[40];
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v43 = *(a1 + 9);
  v44 = *(a1 + 10);
  v45 = *(a1 + 11);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = a2[40];
  v46 = *(a2 + 7);
  v47 = *(a2 + 6);
  v39 = *(a2 + 8);
  v40 = *(a2 + 9);
  v41 = *(a1 + 8);
  v13 = *(a2 + 10);
  v42 = *(a2 + 11);
  v15 = *(a2 + 1);
  v14 = *(a2 + 2);
  v16 = *(a1 + 2);
  v54 = *(a1 + 1);
  v55 = v16;
  v48 = v15;
  v49 = v14;

  LOBYTE(v16) = static AuthenticatedSession.Configuration.Account.Persona.== infix(_:_:)(&v54, &v48);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v54 = v6;
  v55 = v5;
  LOBYTE(v56) = v7;
  v48 = v10;
  v49 = v11;
  LOBYTE(v50) = v12;
  sub_1C939F004(v6, v5, v7);
  sub_1C939F004(v10, v11, v12);
  v17 = static AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.== infix(_:_:)(&v54, &v48);
  sub_1C93BABF0(v48, v49, v50);
  sub_1C93BABF0(v54, v55, v56);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if (!v8)
  {
    sub_1C93BAC10(v9, 0);
    if (!v46)
    {
      sub_1C93BAC10(v47, 0);
      sub_1C93BC77C();
      sub_1C93BAC60(v36, v37);
      return 1;
    }

    sub_1C93BC7D8();
    sub_1C93BAC10(v24, v25);
    goto LABEL_12;
  }

  v54 = v9;
  v55 = v8;
  v56 = v41;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  if (!v46)
  {
    sub_1C93BC77C();
    sub_1C93BAC10(v26, v27);
    sub_1C93BC7D8();
    sub_1C93BAC10(v28, v29);
    sub_1C93BC77C();
    sub_1C93BAC10(v30, v31);

LABEL_12:
    sub_1C93BC77C();
    sub_1C93BAC60(v32, v33);
    sub_1C93BC7D8();
    sub_1C93BAC60(v34, v35);
    return 0;
  }

  v48 = v47;
  v49 = v46;
  v50 = v39;
  v51 = v40;
  v52 = v13;
  v53 = v42;
  v38 = static AuthenticatedSession.Configuration.Account.ExplicitCredentials.== infix(_:_:)(&v54, &v48);
  sub_1C93BC77C();
  sub_1C93BAC10(v18, v19);
  sub_1C93BAC10(v47, v46);
  sub_1C93BC77C();
  sub_1C93BAC10(v20, v21);

  sub_1C93BC77C();
  sub_1C93BAC60(v22, v23);
  return (v38 & 1) != 0;
}

uint64_t sub_1C93BAFF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x80000001C9406450 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F73726570 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C9406410 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001C9406430 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C93BB154(char a1)
{
  result = 0x616E6F73726570;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

uint64_t sub_1C93BB1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93BAFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93BB21C(uint64_t a1)
{
  v2 = sub_1C93BC210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BB258(uint64_t a1)
{
  v2 = sub_1C93BC210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Account.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AE88, &qword_1C93FEEA0);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v25 - v9;
  v11 = *v1;
  v12 = *(v1 + 2);
  v32 = *(v1 + 1);
  v33 = v12;
  v13 = *(v1 + 3);
  v30 = *(v1 + 4);
  v31 = v13;
  v41 = v1[40];
  v14 = *(v1 + 6);
  v16 = *(v1 + 8);
  v15 = *(v1 + 9);
  v25 = *(v1 + 7);
  v26 = v16;
  v28 = v15;
  v29 = v14;
  v17 = *(v1 + 11);
  v27 = *(v1 + 10);
  v18 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BC210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35) = 0;
  v19 = v34;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v20 = v41;
    v21 = v30;
    v22 = v31;
    v34 = v17;
    v23 = v29;
    v35 = v32;
    v36 = v33;
    v42 = 1;
    sub_1C93BC264();

    sub_1C93BC7C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v35 = v22;
    v36 = v21;
    LOBYTE(v37) = v20;
    v42 = 2;
    sub_1C939F004(v22, v21, v20);
    sub_1C93BC2B8();
    sub_1C93BC7C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93BABF0(v35, v36, v37);
    v35 = v23;
    v36 = v25;
    v37 = v26;
    v38 = v28;
    v39 = v27;
    v40 = v34;
    v42 = 3;
    sub_1C93BAC10(v23, v25);
    sub_1C93BC30C();
    sub_1C93BC7C8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93BAC60(v35, v36);
  }

  return (*(v6 + 8))(v10, v3);
}

void AuthenticatedSession.Configuration.Account.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 72);
  v9 = *(v0 + 88);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);
  Hasher._combine(_:)(*v0);
  if (!v1)
  {
    MEMORY[0x1CCA87E40](0);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1CCA87E40](0);
    if (v4)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      if (!v7)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v10 = 0;
    goto LABEL_12;
  }

  MEMORY[0x1CCA87E40](1);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v5 == 1)
  {
    MEMORY[0x1CCA87E40](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();

    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v10 = 2;
LABEL_12:
  MEMORY[0x1CCA87E40](v10);
  if (!v7)
  {
LABEL_17:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  String.hash(into:)();
  if (!v9)
  {
    goto LABEL_17;
  }

  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int AuthenticatedSession.Configuration.Account.hashValue.getter()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Account.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Account.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AE90, &qword_1C93FEEA8);
  v6 = sub_1C939D44C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BC210();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1C939EA94(a1);
    return sub_1C93BC7E8();
  }

  else
  {
    LOBYTE(v31) = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(__src[0]) = 1;
    sub_1C93BC3B8();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v31;
    v29 = v32;
    LOBYTE(__src[0]) = 2;
    sub_1C93BC40C();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v11;
    v12 = v31;
    v28 = v32;
    v49 = v33;
    v50 = 3;
    sub_1C93BC460();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v10 & 1;
    v26 = v10 & 1;
    v14 = sub_1C939EDAC();
    v15(v14);
    v16 = v43;
    v25 = v43;
    v23 = v44;
    v22 = v45;
    v17 = v46;
    v18 = v47;
    v24 = v46;
    v21 = v48;
    sub_1C93BC7E8();
    LOBYTE(__src[0]) = v13;
    __src[1] = v27;
    __src[2] = v29;
    __src[3] = v12;
    __src[4] = v28;
    v19 = v49;
    LOBYTE(__src[5]) = v49;
    __src[6] = v16;
    __src[7] = v23;
    __src[8] = v22;
    __src[9] = v17;
    __src[10] = v18;
    __src[11] = v21;
    memcpy(a2, __src, 0x60uLL);
    sub_1C93A8830(__src, &v31);
    sub_1C939EA94(a1);
    LOBYTE(v31) = v26;
    v32 = v27;
    v33 = v29;
    v34 = v12;
    v35 = v28;
    v36 = v19;
    v37 = v25;
    v38 = v23;
    v39 = v22;
    v40 = v24;
    v41 = v18;
    v42 = v21;
    return sub_1C93A80A4(&v31);
  }
}

Swift::Int sub_1C93BBAC8()
{
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Account.hash(into:)();
  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Account.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  LOBYTE(v2[0]) = 0;
  *(v2 + 8) = 0u;
  *(&v2[1] + 8) = 0u;
  BYTE8(v2[2]) = 0;
  memset(&v2[3], 0, 48);
  v1 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v0, v2);
  memcpy(v4, v2, sizeof(v4));
  sub_1C93A80A4(v4);
  if (!v1)
  {
    sub_1C93B1B34();
  }
}

size_t AuthenticatedSession.Configuration.Account.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v94 - v6;
  v8 = type metadata accessor for PropertyDescription();
  v9 = sub_1C939D44C(v8);
  v108 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v94 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v94 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v94 - v22);
  v24 = *v0;
  v25 = *(v0 + 1);
  v26 = *(v0 + 2);
  v28 = *(v0 + 3);
  v27 = *(v0 + 4);
  LODWORD(v103) = v0[40];
  v102 = *(v0 + 6);
  v29 = *(v0 + 7);
  v104 = v27;
  v105 = v29;
  v30 = *(v0 + 8);
  v100 = *(v0 + 9);
  v101 = v30;
  v31 = *(v0 + 11);
  v99 = *(v0 + 10);
  v97 = v25;
  v98 = v31;
  v107 = v21;
  if (v24 == 1)
  {
    v95 = v28;
    static OSLogPrivacy.public.getter();
    LOBYTE(v109) = 1;
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_1C93A86A8(v7, v5);
    v35 = *(v8 + 24);
    static OSLogPrivacy.auto.getter();
    v96 = v7;
    sub_1C93A870C(v7);
    *v23 = 0xD00000000000001ELL;
    v23[1] = 0x80000001C9406450;
    v23[2] = v32;
    v23[3] = v34;
    v36 = v23 + v35;
    v37 = v5;
    sub_1C93A8768(v5, v36);
    v38 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v40 = *(v38 + 16);
    v39 = *(v38 + 24);
    v0 = (v40 + 1);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1C93A4F7C(v39 > 1, v40 + 1, 1, v38);
    }

    *(v38 + 16) = v0;
    sub_1C93BC790();
    sub_1C93A87CC(v23, v41 + v42 * v40);
    v5 = v37;
    v28 = v95;
    v7 = v96;
    v8 = v107;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  if (v26)
  {
    static OSLogPrivacy.public.getter();
    v109 = v97;
    v110 = v26;

    String.init<A>(describing:)();
    sub_1C93BC82C();
    v43 = *(v8 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v7);
    *v20 = 0x616E6F73726570;
    v20[1] = 0xE700000000000000;
    v20[2] = v26;
    v20[3] = v0;
    sub_1C93A8768(v5, v20 + v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1C939D528();
    }

    sub_1C93B8D18();
    if (v45)
    {
      v38 = sub_1C93B8CF4(v44);
    }

    *(v38 + 16) = v26;
    sub_1C93BC790();
    sub_1C93A87CC(v20, v46 + v47 * v0);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v48 = v106;
  v49 = v104;
  v50 = v103;
  if (v103)
  {
    v51 = sub_1C93BC7BC();
    sub_1C939F004(v51, v52, v50);
    v53 = sub_1C93BC7BC();
    sub_1C93BABF0(v53, v54, v50);
    v55 = 0;
    v56 = 0;
  }

  else
  {
    if (!v104)
    {
      swift_bridgeObjectRelease_n();
      sub_1C93BC810();
      sub_1C93BABF0(0, 0, 0);
      sub_1C93BC810();
      sub_1C93BC810();
      goto LABEL_22;
    }

    v57 = sub_1C93BC7AC();
    sub_1C939F004(v57, v58, v59);
    v60 = sub_1C93BC7AC();
    sub_1C939F004(v60, v61, v62);
    v63 = sub_1C93BC7AC();
    sub_1C939F004(v63, v64, v65);

    v66 = sub_1C93BC7AC();
    sub_1C93BABF0(v66, v67, v68);
    sub_1C93BABF0(0, 0, 0);
    v69 = sub_1C93BC7AC();
    sub_1C93BABF0(v69, v70, v71);
    v55 = sub_1C93BC7BC();
  }

  sub_1C93BABF0(v55, v56, 0);
  static OSLogPrivacy.public.getter();
  v109 = v28;
  v110 = v49;
  LOBYTE(v111) = v50;
  v72 = sub_1C93BC7BC();
  sub_1C939F004(v72, v73, v50);
  String.init<A>(describing:)();
  sub_1C93BC82C();
  v74 = v5;
  v75 = *(v8 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v17 = 0xD000000000000010;
  v17[1] = 0x80000001C9406410;
  v17[2] = v49;
  v17[3] = v50;
  v76 = v17 + v75;
  v5 = v74;
  sub_1C93A8768(v74, v76);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1C939D528();
  }

  sub_1C93B8D18();
  if (v45)
  {
    v38 = sub_1C93B8CF4(v77);
  }

  *(v38 + 16) = v49;
  sub_1C93BC790();
  sub_1C93A87CC(v17, v78 + v79 * v50);
LABEL_22:
  v80 = v105;
  if (v105)
  {
    v104 = 0x80000001C9406430;
    v81 = v98;

    v82 = v100;

    static OSLogPrivacy.auto.getter();
    v83 = v102;
    v109 = v102;
    v110 = v80;
    v111 = v101;
    v112 = v82;
    v113 = v99;
    v114 = v81;

    v103 = String.init<A>(describing:)();
    v97 = v84;
    sub_1C93A86A8(v7, v5);
    v96 = v5;
    v85 = *(v107 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93BAC60(v83, v80);
    sub_1C93A870C(v7);
    v87 = v103;
    v86 = v104;
    *v48 = 0xD000000000000013;
    v48[1] = v86;
    v88 = v96;
    v89 = v97;
    v48[2] = v87;
    v48[3] = v89;
    sub_1C93A8768(v88, v48 + v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1C939D528();
    }

    sub_1C93B8D18();
    if (v45)
    {
      v38 = sub_1C93B8CF4(v90);
    }

    *(v38 + 16) = v81;
    sub_1C93BC790();
    sub_1C93A87CC(v48, v91 + v92 * v7);
  }

  return v38;
}

unint64_t sub_1C93BC210()
{
  result = qword_1EE02B808;
  if (!qword_1EE02B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B808);
  }

  return result;
}

unint64_t sub_1C93BC264()
{
  result = qword_1EE02B720;
  if (!qword_1EE02B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B720);
  }

  return result;
}

unint64_t sub_1C93BC2B8()
{
  result = qword_1EE02B790;
  if (!qword_1EE02B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B790);
  }

  return result;
}

unint64_t sub_1C93BC30C()
{
  result = qword_1EE02B788;
  if (!qword_1EE02B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B788);
  }

  return result;
}

uint64_t sub_1C93BC364()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

unint64_t sub_1C93BC3B8()
{
  result = qword_1EE02AF98;
  if (!qword_1EE02AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF98);
  }

  return result;
}

unint64_t sub_1C93BC40C()
{
  result = qword_1EE02AFB0;
  if (!qword_1EE02AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFB0);
  }

  return result;
}

unint64_t sub_1C93BC460()
{
  result = qword_1EE02AFA8;
  if (!qword_1EE02AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFA8);
  }

  return result;
}

unint64_t sub_1C93BC4B8()
{
  result = qword_1EC39AE98;
  if (!qword_1EC39AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AE98);
  }

  return result;
}

unint64_t sub_1C93BC50C(uint64_t a1)
{
  result = sub_1C93BC534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93BC534()
{
  result = qword_1EC39AEA0;
  if (!qword_1EC39AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEA0);
  }

  return result;
}

_BYTE *_s7AccountV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93BC678()
{
  result = qword_1EC39AEA8;
  if (!qword_1EC39AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEA8);
  }

  return result;
}

unint64_t sub_1C93BC6D0()
{
  result = qword_1EE02B7F8;
  if (!qword_1EE02B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7F8);
  }

  return result;
}

unint64_t sub_1C93BC728()
{
  result = qword_1EE02B800;
  if (!qword_1EE02B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B800);
  }

  return result;
}

void sub_1C93BC790()
{
  v2 = *(v1 - 144);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t sub_1C93BC7E8()
{

  return sub_1C93BAC60(0, 0);
}

void sub_1C93BC810()
{

  sub_1C93BABF0(v0, 0, 0);
}

uint64_t sub_1C93BC82C()
{

  return sub_1C93A86A8(v0, v1);
}

uint64_t static AuthenticatedSession.Configuration.Account.AuthorizationUI.tcc(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

id static AuthenticatedSession.Configuration.Account.AuthorizationUI.dataclass(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return a1;
}

void static AuthenticatedSession.Configuration.Account.AuthorizationUI.systemService.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t static AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        v8 = *a1;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
        if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v43 = sub_1C93A5ADC();
        sub_1C939F004(v43, v44, 1);
        v45 = sub_1C93BD618();
        sub_1C939F004(v45, v46, 1);
        v47 = sub_1C93BD618();
        sub_1C939F004(v47, v48, 1);
        v49 = sub_1C93A5ADC();
        sub_1C939F004(v49, v50, 1);

        v51 = sub_1C93BD618();
        sub_1C93BABF0(v51, v52, 1);
        v53 = sub_1C93A5ADC();
        sub_1C93BABF0(v53, v54, 1);
        v55 = sub_1C93A5ADC();
        sub_1C93BABF0(v55, v56, 1);
        v29 = sub_1C93BD618();
        v31 = 1;
        goto LABEL_19;
      }
    }

    else if (v7 == 2 && (v5 | v6) == 0)
    {
      v41 = sub_1C93BD618();
      sub_1C93BABF0(v41, v42, 2);
      sub_1C93BABF0(0, 0, 2);
      v14 = 1;
      return v14 & 1;
    }
  }

  else if (!*(a2 + 16))
  {
    v59[0] = *a1;
    v59[1] = v2;
    v58[0] = v6;
    v58[1] = v5;
    v15 = sub_1C93A5ADC();
    sub_1C939F004(v15, v16, 0);
    v17 = sub_1C93BD618();
    sub_1C939F004(v17, v18, 0);
    v19 = sub_1C93BD618();
    sub_1C939F004(v19, v20, 0);
    v21 = sub_1C93A5ADC();
    sub_1C939F004(v21, v22, 0);
    v14 = static BundleID.== infix(_:_:)(v59, v58);
    v23 = sub_1C93BD618();
    sub_1C93BABF0(v23, v24, 0);
    v25 = sub_1C93A5ADC();
    sub_1C93BABF0(v25, v26, 0);
    v27 = sub_1C93A5ADC();
    sub_1C93BABF0(v27, v28, 0);
    v29 = sub_1C93BD618();
    v31 = 0;
LABEL_19:
    sub_1C93BABF0(v29, v30, v31);
    return v14 & 1;
  }

  v33 = sub_1C93BD618();
  sub_1C939F004(v33, v34, v4);
  v35 = sub_1C93A5ADC();
  sub_1C939F004(v35, v36, v7);
  v37 = sub_1C93BD618();
  sub_1C93BABF0(v37, v38, v4);
  v39 = sub_1C93A5ADC();
  sub_1C93BABF0(v39, v40, v7);
  v14 = 0;
  return v14 & 1;
}

Swift::Int sub_1C93BCA88()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Account.AuthorizationUI.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static AuthenticatedSession.Configuration.Account.AuthorizationUI.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v6;
  v10[0] = v4;
  v10[1] = v5;
  v11 = v7;
  sub_1C939F004(v2, v3, v6);
  sub_1C939F004(v4, v5, v7);
  v8 = static AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload.== infix(_:_:)(v12, v10);
  sub_1C93BABF0(v4, v5, v7);
  sub_1C93BABF0(v2, v3, v6);
  return v8 & 1;
}

uint64_t sub_1C93BCB8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93BCC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93BCB8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93BCC4C(uint64_t a1)
{
  v2 = sub_1C93BD1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BCC88(uint64_t a1)
{
  v2 = sub_1C93BD1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.encode(to:)(void *a1)
{
  v16 = sub_1C93A1890(&qword_1EC39AEB0, &qword_1C93FF190);
  v3 = sub_1C939D44C(v16);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = a1[4];
  v13 = *(v1 + 16);
  sub_1C93A4890(a1, a1[3]);
  sub_1C939F004(v10, v11, v13);
  sub_1C93BD1D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v10;
  v18 = v11;
  v19 = v13;
  sub_1C93BD224();
  v14 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1C93BABF0(v17, v18, v19);
  return (*(v5 + 8))(v9, v14);
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1CCA87E40](1);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();
    }

    v4 = 2;
    return MEMORY[0x1CCA87E40](v4);
  }

  v3 = v0[1];
  MEMORY[0x1CCA87E40](0);
  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x1CCA87E40](v4);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int _s17CloudCoreInternal20AuthenticatedSessionC13ConfigurationV7AccountV15AuthorizationUIV7PayloadO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    MEMORY[0x1CCA87E40](0);
    if (v2)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v4 = 0;
LABEL_8:
    MEMORY[0x1CCA87E40](v4);
    return Hasher._finalize()();
  }

  if (v3 != 1)
  {
    v4 = 2;
    goto LABEL_8;
  }

  MEMORY[0x1CCA87E40](1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Account.AuthorizationUI.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AEB8, &qword_1C93FF198);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BD1D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_1C93BD278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v12, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 16) = v14;
  }

  return sub_1C939EA94(a1);
}

unint64_t sub_1C93BD1D0()
{
  result = qword_1EE02B7F0;
  if (!qword_1EE02B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7F0);
  }

  return result;
}

unint64_t sub_1C93BD224()
{
  result = qword_1EE02B798;
  if (!qword_1EE02B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B798);
  }

  return result;
}

unint64_t sub_1C93BD278()
{
  result = qword_1EE02AFB8;
  if (!qword_1EE02AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFB8);
  }

  return result;
}

unint64_t sub_1C93BD2D0()
{
  result = qword_1EC39AEC0;
  if (!qword_1EC39AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEC0);
  }

  return result;
}

unint64_t sub_1C93BD328()
{
  result = qword_1EC39AEC8;
  if (!qword_1EC39AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEC8);
  }

  return result;
}

__n128 sub_1C93BD37C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C93BD3A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C93BD3E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C93BD424(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *_s15AuthorizationUIV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C93BD4FC()
{
  result = qword_1EC39AED0;
  if (!qword_1EC39AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AED0);
  }

  return result;
}

unint64_t sub_1C93BD554()
{
  result = qword_1EE02B7E0;
  if (!qword_1EE02B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7E0);
  }

  return result;
}

unint64_t sub_1C93BD5AC()
{
  result = qword_1EE02B7E8;
  if (!qword_1EE02B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B7E8);
  }

  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.hsa2RecoveryKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1C93A5A40();
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.hsa2RecoveryKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.init(username:password:hsa2RecoveryKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static AuthenticatedSession.Configuration.Account.ExplicitCredentials.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          if (v3 == v9 && v5 == v8)
          {
            return 1;
          }

          sub_1C93A5A40();
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C93BD894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64726F7773736170 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F63655232617368 && a2 == 0xEF79654B79726576)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93BD9B4(char a1)
{
  if (!a1)
  {
    return 0x656D616E72657375;
  }

  if (a1 == 1)
  {
    return 0x64726F7773736170;
  }

  return 0x6F63655232617368;
}

uint64_t sub_1C93BDA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93BD894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93BDA48(uint64_t a1)
{
  v2 = sub_1C93BDC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BDA84(uint64_t a1)
{
  v2 = sub_1C93BDC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AED8, &qword_1C93FF510);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v18[3] = v1[3];
  v18[4] = v13;
  v14 = v1[4];
  v18[1] = v1[5];
  v18[2] = v14;
  v15 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BDC64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  v16 = v18[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1C93BDC64()
{
  result = qword_1EC39AEE0;
  if (!qword_1EC39AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEE0);
  }

  return result;
}

void AuthenticatedSession.Configuration.Account.ExplicitCredentials.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AuthenticatedSession.Configuration.Account.ExplicitCredentials.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AEE8, &unk_1C93FF518);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93BDC64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1C939EA94(a1);
  }

  v30 = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v29 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v16;
  v28 = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v20 = v17;
  (*(v8 + 8))(v12, v5);
  v22 = v26;
  v21 = v27;
  *a2 = v14;
  a2[1] = v21;
  a2[2] = v25;
  a2[3] = v22;
  a2[4] = v20;
  a2[5] = v19;

  sub_1C939EA94(a1);
}

Swift::Int sub_1C93BE058()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[2];
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Account.ExplicitCredentials.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93BE0E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1C93F5B80();
}

uint64_t AuthenticatedSession.Configuration.Account.ExplicitCredentials.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogPrivacy();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v38 = v0[3];
  v39 = v14;
  v15 = v0[5];
  v35 = v0[4];
  v40 = v15;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v16 = *(v2 + 72);
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C93FE890;
  v36 = v17;
  v19 = (v18 + v17);
  swift_bridgeObjectRetain_n();
  static OSLogPrivacy.auto.getter();
  v41._countAndFlagsBits = v12;
  v41._object = v13;
  v20 = String.init<A>(describing:)();
  v22 = v21;
  sub_1C93A86A8(v11, v9);
  v23 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v11);
  *v19 = 0x656D616E72657375;
  v19[1] = 0xE800000000000000;
  v19[2] = v20;
  v19[3] = v22;
  sub_1C93A8768(v9, v19 + v23);

  v24 = (v19 + v16);
  v25 = String.count.getter();
  v26._countAndFlagsBits = 42;
  v26._object = 0xE100000000000000;
  v27 = String.init(repeating:count:)(v26, v25);

  static OSLogPrivacy.auto.getter();
  v41 = v27;
  String.init<A>(describing:)();
  sub_1C939D54C();
  v39 = v1;
  v28 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v11);
  *v24 = 0x64726F7773736170;
  v24[1] = 0xE800000000000000;
  v24[2] = v27._countAndFlagsBits;
  v24[3] = v23;
  sub_1C93A8768(v9, v24 + v28);

  if (v40)
  {
    v29 = String.count.getter();
    v30._countAndFlagsBits = 42;
    v30._object = 0xE100000000000000;
    v31 = String.init(repeating:count:)(v30, v29);

    static OSLogPrivacy.auto.getter();
    v41 = v31;
    String.init<A>(describing:)();
    sub_1C939D54C();
    v32 = *(v39 + 24);
    v33 = v37;
    static OSLogPrivacy.auto.getter();

    sub_1C93A870C(v11);
    *v33 = 0x6F63655232617368;
    v33[1] = 0xEF79654B79726576;
    v33[2] = v31._countAndFlagsBits;
    v33[3] = v23;
    sub_1C93A8768(v9, v33 + v32);
    v18 = sub_1C93A4F7C(1uLL, 3, 1, v18);
    *(v18 + 16) = 3;
    sub_1C93A87CC(v33, v18 + v36 + 2 * v16);
  }

  return v18;
}

unint64_t sub_1C93BE4B8()
{
  result = qword_1EC39AEF0;
  if (!qword_1EC39AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEF0);
  }

  return result;
}

unint64_t sub_1C93BE50C(uint64_t a1)
{
  result = sub_1C93BE534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93BE534()
{
  result = qword_1EC39AEF8;
  if (!qword_1EC39AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AEF8);
  }

  return result;
}

__n128 sub_1C93BE588(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C93BE59C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C93BE5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s19ExplicitCredentialsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93BE718()
{
  result = qword_1EC39AF00;
  if (!qword_1EC39AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF00);
  }

  return result;
}

unint64_t sub_1C93BE770()
{
  result = qword_1EC39AF08;
  if (!qword_1EC39AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF08);
  }

  return result;
}

unint64_t sub_1C93BE7C8()
{
  result = qword_1EC39AF10;
  if (!qword_1EC39AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF10);
  }

  return result;
}

uint64_t static AuthenticatedSession.Configuration.Account.Persona.custom(userPersonaUniqueString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static AuthenticatedSession.Configuration.Account.Persona.Payload.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1C93BE8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93BE96C(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1C93BE9AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001C9406060 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93BEA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93BE8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93BEA80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A9208();
  *a1 = result;
  return result;
}

uint64_t sub_1C93BEAA8(uint64_t a1)
{
  v2 = sub_1C93BEEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BEAE4(uint64_t a1)
{
  v2 = sub_1C93BEEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93BEB24(uint64_t a1)
{
  v2 = sub_1C93BEF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BEB60(uint64_t a1)
{
  v2 = sub_1C93BEF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93BEBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93BE9AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93BEBCC(uint64_t a1)
{
  v2 = sub_1C93BEF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BEC08(uint64_t a1)
{
  v2 = sub_1C93BEF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Account.Persona.Payload.encode(to:)()
{
  sub_1C93C0358();
  v37 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39AF18, &qword_1C93FF7A0);
  v6 = sub_1C939D44C(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939D578();
  v11 = sub_1C93A1890(&qword_1EC39AF20, &qword_1C93FF7A8);
  v12 = sub_1C939D44C(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v30 - v17;
  v18 = sub_1C93A1890(&qword_1EC39AF28, &qword_1C93FF7B0);
  sub_1C939D44C(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = v0[1];
  v34 = *v0;
  v27 = v4[4];
  sub_1C93A4890(v4, v4[3]);
  sub_1C93BEEF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_1C93BEF48();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v36;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v35 + 8))(v2, v28);
  }

  else
  {
    sub_1C93BEF9C();
    v29 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v32 + 8))(v29, v33);
  }

  (*(v20 + 8))(v25, v18);
  sub_1C939EDBC();
}

unint64_t sub_1C93BEEF4()
{
  result = qword_1EE02B768;
  if (!qword_1EE02B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B768);
  }

  return result;
}

unint64_t sub_1C93BEF48()
{
  result = qword_1EC39AF30;
  if (!qword_1EC39AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF30);
  }

  return result;
}

unint64_t sub_1C93BEF9C()
{
  result = qword_1EE02B740;
  if (!qword_1EE02B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B740);
  }

  return result;
}

void AuthenticatedSession.Configuration.Account.Persona.Payload.init(from:)()
{
  sub_1C93C0358();
  v66 = v0;
  v3 = v2;
  v62 = v4;
  v65 = sub_1C93A1890(&qword_1EC39AF38, &qword_1C93FF7B8);
  sub_1C939D44C(v65);
  v63 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939D578();
  v9 = sub_1C93A1890(&qword_1EC39AF40, &qword_1C93FF7C0);
  sub_1C939D44C(v9);
  v61 = v10;
  v12 = *(v11 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = sub_1C93A1890(&qword_1EC39AF48, &unk_1C93FF7C8);
  sub_1C939D44C(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93BEEF4();
  v22 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_8;
  }

  v58 = v9;
  v59 = v15;
  v66 = v1;
  v23 = v65;
  v24 = KeyedDecodingContainer.allKeys.getter();
  sub_1C93BFA64(v24, 0);
  v60 = v3;
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v39 = &type metadata for AuthenticatedSession.Configuration.Account.Persona.Payload;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v64 + 8);
    v42 = sub_1C939D56C();
    v43(v42);
    v3 = v60;
LABEL_8:
    v44 = v3;
LABEL_9:
    sub_1C939EA94(v44);
    sub_1C939EDBC();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v67 = *(v26 + v27);
    v29 = sub_1C93C029C(v27 + 1, v28 >> 1, v25, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v63;
    if (v31 == v33 >> 1)
    {
      if (v67)
      {
        sub_1C93BEF48();
        v35 = v66;
        sub_1C939EDD4();
        v36 = v64;
        v61 = v29;
        v50 = KeyedDecodingContainer.decode(_:forKey:)();
        v52 = v51;
        swift_unknownObjectRelease();
        (*(v34 + 8))(v35, v23);
        v53 = *(v36 + 8);
        v54 = sub_1C939D56C();
        v55(v54);
      }

      else
      {
        sub_1C93BEF9C();
        v45 = v59;
        sub_1C939EDD4();
        v46 = v64;
        swift_unknownObjectRelease();
        (*(v61 + 8))(v45, v58);
        v47 = *(v46 + 8);
        v48 = sub_1C939D56C();
        v49(v48);
        v50 = 0;
        v52 = 0;
      }

      v44 = v60;
      v56 = v62;
      *v62 = v50;
      v56[1] = v52;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AuthenticatedSession.Configuration.Account.Persona.payload.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL static AuthenticatedSession.Configuration.Account.Persona.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      return v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

LABEL_10:

    return 0;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1C93BF598(uint64_t a1)
{
  v2 = sub_1C93BFA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93BF5D4(uint64_t a1)
{
  v2 = sub_1C93BFA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Account.Persona.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39AF50, &qword_1C93FF7D8);
  sub_1C939D44C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93BFA9C();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[0] = v11;
  v14[1] = v12;
  sub_1C93BFAF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v5 + 8))(v10, v3);
  sub_1C939EDBC();
}

uint64_t _s17CloudCoreInternal8BundleIDV4hash4intoys6HasherVz_tF_0()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCA87E40](0);
  }

  v1 = *v0;
  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int _s17CloudCoreInternal20AuthenticatedSessionC13ConfigurationV7AccountV7PersonaV7PayloadO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Account.Persona.init(from:)()
{
  sub_1C93C0358();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C93A1890(&qword_1EC39AF58, &qword_1C93FF7E0);
  sub_1C939D44C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939D578();
  v12 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93BFA9C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1C93BFB44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
  }

  sub_1C939EA94(v3);
  sub_1C939EDBC();
}

Swift::Int sub_1C93BF988()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Account.Persona.description.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return String.init<A>(describing:)();
}

void sub_1C93BFA64(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C93C0344();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C93BFA9C()
{
  result = qword_1EE02B780;
  if (!qword_1EE02B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B780);
  }

  return result;
}

unint64_t sub_1C93BFAF0()
{
  result = qword_1EE02B728;
  if (!qword_1EE02B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B728);
  }

  return result;
}

unint64_t sub_1C93BFB44()
{
  result = qword_1EE02AFA0;
  if (!qword_1EE02AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFA0);
  }

  return result;
}

unint64_t sub_1C93BFB9C()
{
  result = qword_1EC39AF60;
  if (!qword_1EC39AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF60);
  }

  return result;
}

unint64_t sub_1C93BFBF4()
{
  result = qword_1EC39AF68;
  if (!qword_1EC39AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF68);
  }

  return result;
}

uint64_t sub_1C93BFC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93BFCA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1C93BFCFC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *_s7PersonaV7PayloadO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C93BFE28(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C93BFED8()
{
  result = qword_1EC39AF70;
  if (!qword_1EC39AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF70);
  }

  return result;
}

unint64_t sub_1C93BFF30()
{
  result = qword_1EC39AF78;
  if (!qword_1EC39AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF78);
  }

  return result;
}

unint64_t sub_1C93BFF88()
{
  result = qword_1EC39AF80;
  if (!qword_1EC39AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF80);
  }

  return result;
}

unint64_t sub_1C93BFFE0()
{
  result = qword_1EE02B770;
  if (!qword_1EE02B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B770);
  }

  return result;
}

unint64_t sub_1C93C0038()
{
  result = qword_1EE02B778;
  if (!qword_1EE02B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B778);
  }

  return result;
}

unint64_t sub_1C93C0090()
{
  result = qword_1EE02B730;
  if (!qword_1EE02B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B730);
  }

  return result;
}

unint64_t sub_1C93C00E8()
{
  result = qword_1EE02B738;
  if (!qword_1EE02B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B738);
  }

  return result;
}

unint64_t sub_1C93C0140()
{
  result = qword_1EE02B748;
  if (!qword_1EE02B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B748);
  }

  return result;
}

unint64_t sub_1C93C0198()
{
  result = qword_1EE02B750;
  if (!qword_1EE02B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B750);
  }

  return result;
}

unint64_t sub_1C93C01F0()
{
  result = qword_1EE02B758;
  if (!qword_1EE02B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B758);
  }

  return result;
}

unint64_t sub_1C93C0248()
{
  result = qword_1EE02B760;
  if (!qword_1EE02B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B760);
  }

  return result;
}

uint64_t sub_1C93C029C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

double static AuthenticatedSession.Configuration.Application.standard.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Application.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AuthenticatedSession.Configuration.Application.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AuthenticatedSession.Configuration.Application.pushRegistration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C93A5D1C(v2, v3);
}

uint64_t AuthenticatedSession.Configuration.Application.pushRegistration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A5D7C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

BOOL static AuthenticatedSession.Configuration.Application.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v14 = v2;
  v15 = v3;
  v12 = v7;
  v13 = v6;

  LOBYTE(v3) = static BundleID.== infix(_:_:)(&v14, &v12);

  if (v3)
  {
    v14 = v4;
    v15 = v5;
    v12 = v8;
    v13 = v9;
    sub_1C93A5D1C(v4, v5);
    sub_1C93A5D1C(v8, v9);
    v10 = static AuthenticatedSession.Configuration.Application.PushRegistration.== infix(_:_:)(&v14, &v12);
    sub_1C93A5D7C(v12, v13);
    sub_1C93A5D7C(v14, v15);
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t sub_1C93C0504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C9406470 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93C05D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1C93C0618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C0504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C0640(uint64_t a1)
{
  v2 = sub_1C93C108C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C067C(uint64_t a1)
{
  v2 = sub_1C93C108C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Application.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AF88, &qword_1C93FFDE0);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v18 = v1[3];
  v19 = v13;
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93C108C();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v11;
  v22 = v12;
  v23 = 0;
  sub_1C93B229C();
  sub_1C93C1574();
  v15 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v15)
  {
    v21 = v19;
    v22 = v18;
    v23 = 1;
    sub_1C93A5D1C(v19, v18);
    sub_1C93C10E0();
    sub_1C93C1574();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A5D7C(v21, v22);
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t AuthenticatedSession.Configuration.Application.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  if (v2 == 1)
  {
    v4 = 1;
    return MEMORY[0x1CCA87E40](v4);
  }

  MEMORY[0x1CCA87E40](0);
  if (!v2)
  {
    v4 = 0;
    return MEMORY[0x1CCA87E40](v4);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AuthenticatedSession.Configuration.Application.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_9:
    MEMORY[0x1CCA87E40](v5);
    return Hasher._finalize()();
  }

  MEMORY[0x1CCA87E40](0);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_9;
  }

  MEMORY[0x1CCA87E40](1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Application.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AF90, &qword_1C93FFDE8);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93C108C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1C939EA94(a1);

    v21 = sub_1C93A8E1C();
  }

  else
  {
    v25 = 0;
    sub_1C93B22F0();
    sub_1C93C1528();
    v16 = v23;
    v15 = v24;

    v25 = 1;
    sub_1C93C1134();
    sub_1C93C1528();
    (*(v8 + 8))(v12, v5);
    v17 = v23;
    v18 = v24;
    v19 = sub_1C93A8E1C();
    sub_1C93A5D7C(v19, v20);
    *a2 = v16;
    a2[1] = v15;
    a2[2] = v17;
    a2[3] = v18;

    sub_1C93A5D1C(v17, v18);
    sub_1C939EA94(a1);

    v21 = v17;
    v22 = v18;
  }

  return sub_1C93A5D7C(v21, v22);
}

Swift::Int sub_1C93C0BD0()
{
  v2 = *v0;
  v3 = v0[1];
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Application.hash(into:)();
  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Application.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v8[0] = *v0;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  memset(v7, 0, sizeof(v7));
  v4 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(v8, v7);

  v5 = sub_1C93A8E1C();
  sub_1C93A5D7C(v5, v6);
  if (!v4)
  {
    sub_1C93B14D4();
  }
}

size_t AuthenticatedSession.Configuration.Application.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v55 - v6;
  v8 = type metadata accessor for PropertyDescription();
  v9 = sub_1C939D44C(v8);
  v55[1] = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = (v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v55 - v16);
  v18 = v0[1];
  v19 = v0[2];
  v20 = v0[3];
  if (v18)
  {
    v21 = *v0;

    static OSLogPrivacy.public.getter();
    v56 = v21;
    v57 = v18;

    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_1C93A86A8(v7, v5);
    v25 = *(v8 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v7);
    *v17 = 0x4449656C646E7562;
    v17[1] = 0xE800000000000000;
    v17[2] = v22;
    v17[3] = v24;
    sub_1C93A8768(v5, v17 + v25);
    v26 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v26 + 24);
    if (*(v26 + 16) >= v27 >> 1)
    {
      v26 = sub_1C93C1550(v27);
    }

    sub_1C93C1504();
    sub_1C93A87CC(v17, v28);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (v20 == 1)
  {
    v31 = 1;
    sub_1C93A5D7C(v19, 1);
    v32 = sub_1C93A8E1C();
    sub_1C93A5D7C(v32, v33);
  }

  else
  {
    if (!v20)
    {
      swift_bridgeObjectRelease_n();
      sub_1C93A5D7C(v19, 0);
      v29 = sub_1C93A8E1C();
      sub_1C93A5D7C(v29, v30);
      sub_1C93A5D7C(v19, 0);
      sub_1C93A5D7C(v19, 0);
      return v26;
    }

    v34 = sub_1C939D588();
    sub_1C93A5D1C(v34, v35);
    v36 = sub_1C939D588();
    sub_1C93A5D1C(v36, v37);
    v38 = sub_1C939D588();
    sub_1C93A5D1C(v38, v39);

    v40 = sub_1C939D588();
    sub_1C93A5D7C(v40, v41);
    v42 = sub_1C93A8E1C();
    sub_1C93A5D7C(v42, v43);
    v44 = sub_1C939D588();
    sub_1C93A5D7C(v44, v45);
    v31 = v20;
  }

  sub_1C93A5D7C(v19, v31);
  static OSLogPrivacy.public.getter();
  v56 = v19;
  v57 = v20;
  v46 = sub_1C939D588();
  sub_1C93A5D1C(v46, v47);
  v48 = String.init<A>(describing:)();
  v50 = v49;
  sub_1C93A86A8(v7, v5);
  v51 = *(v8 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v15 = 0xD000000000000010;
  v15[1] = 0x80000001C9406470;
  v15[2] = v48;
  v15[3] = v50;
  sub_1C93A8768(v5, v15 + v51);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1C93A4F7C(0, *(v26 + 16) + 1, 1, v26);
  }

  v52 = *(v26 + 24);
  if (*(v26 + 16) >= v52 >> 1)
  {
    v26 = sub_1C93C1550(v52);
  }

  sub_1C93C1504();
  sub_1C93A87CC(v15, v53);
  return v26;
}

unint64_t sub_1C93C108C()
{
  result = qword_1EE02B8B0;
  if (!qword_1EE02B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8B0);
  }

  return result;
}

unint64_t sub_1C93C10E0()
{
  result = qword_1EE02B838;
  if (!qword_1EE02B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B838);
  }

  return result;
}

unint64_t sub_1C93C1134()
{
  result = qword_1EE02AFD0;
  if (!qword_1EE02AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFD0);
  }

  return result;
}

unint64_t sub_1C93C118C()
{
  result = qword_1EC39AF98;
  if (!qword_1EC39AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AF98);
  }

  return result;
}

unint64_t sub_1C93C11E0(uint64_t a1)
{
  result = sub_1C93C1208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93C1208()
{
  result = qword_1EC39AFA0;
  if (!qword_1EC39AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AFA0);
  }

  return result;
}

__n128 sub_1C93C125C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C93C1268(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93C12BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s11ApplicationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C93C1400()
{
  result = qword_1EC39AFA8;
  if (!qword_1EC39AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AFA8);
  }

  return result;
}

unint64_t sub_1C93C1458()
{
  result = qword_1EE02B8A0;
  if (!qword_1EE02B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8A0);
  }

  return result;
}

unint64_t sub_1C93C14B0()
{
  result = qword_1EE02B8A8;
  if (!qword_1EE02B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8A8);
  }

  return result;
}

uint64_t sub_1C93C1528()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

size_t sub_1C93C1550@<X0>(unint64_t a1@<X8>)
{

  return sub_1C93A4F7C(a1 > 1, v1, 1, v2);
}

uint64_t static AuthenticatedSession.Configuration.Application.PushRegistration.register(bundleID:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

double static AuthenticatedSession.Configuration.Application.PushRegistration.noRegistration.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C93FD260;
  return result;
}

BOOL static AuthenticatedSession.Configuration.Application.PushRegistration.Payload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1C93A5D7C(*a1, 1);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_1C93A5D7C(v7, v8);
      return v6;
    }
  }

  else if (v5 != 1)
  {
    v33[0] = *a1;
    v33[1] = v3;
    v32[0] = v4;
    v32[1] = v5;
    v17 = sub_1C939D460();
    sub_1C93A5D1C(v17, v18);
    v19 = sub_1C93A8DA0();
    sub_1C93A5D1C(v19, v20);
    v21 = sub_1C93A8DA0();
    sub_1C93A5D1C(v21, v22);
    v23 = sub_1C939D460();
    sub_1C93A5D1C(v23, v24);
    v6 = static BundleID.== infix(_:_:)(v33, v32);
    v25 = sub_1C93A8DA0();
    sub_1C93A5D7C(v25, v26);
    v27 = sub_1C939D460();
    sub_1C93A5D7C(v27, v28);
    v29 = sub_1C939D460();
    sub_1C93A5D7C(v29, v30);
    v7 = sub_1C93A8DA0();
    goto LABEL_7;
  }

  v9 = sub_1C93A8DA0();
  sub_1C93A5D1C(v9, v10);
  v11 = sub_1C939D460();
  sub_1C93A5D1C(v11, v12);
  v13 = sub_1C93A8DA0();
  sub_1C93A5D7C(v13, v14);
  v15 = sub_1C939D460();
  sub_1C93A5D7C(v15, v16);
  return 0;
}

uint64_t sub_1C93C16A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265747369676572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473696765526F6ELL && a2 == 0xEE006E6F69746172)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93C1770(char a1)
{
  if (a1)
  {
    return 0x7473696765526F6ELL;
  }

  else
  {
    return 0x7265747369676572;
  }
}

uint64_t sub_1C93C17BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C16A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C17E4(uint64_t a1)
{
  v2 = sub_1C93C2780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C1820(uint64_t a1)
{
  v2 = sub_1C93C2780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C185C(uint64_t a1)
{
  v2 = sub_1C93C27D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C1898(uint64_t a1)
{
  v2 = sub_1C93C27D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C18D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A928C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93C1904(uint64_t a1)
{
  v2 = sub_1C93C2828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C1940(uint64_t a1)
{
  v2 = sub_1C93C2828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Application.PushRegistration.Payload.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v31 = sub_1C93A1890(&qword_1EC39AFB0, &qword_1C9400060);
  sub_1C939D44C(v31);
  v29 = v3;
  v5 = *(v4 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - v7;
  v30 = sub_1C93A1890(&qword_1EC39AFB8, &qword_1C9400068);
  sub_1C939D44C(v30);
  v28 = v8;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = sub_1C93A1890(&qword_1EC39AFC0, &qword_1C9400070);
  sub_1C939D44C(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - v20;
  v22 = v0[1];
  v27[0] = *v0;
  v23 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C2780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22 == 1)
  {
    LOBYTE(v32) = 1;
    sub_1C93C27D4();
    sub_1C939EDF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = sub_1C93C315C();
    v25(v24, v31);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1C93C2828();
    sub_1C939EDF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v32 = v27[0];
    v33 = v22;
    sub_1C93B229C();
    v26 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v13, v26);
  }

  (*(v16 + 8))(v21, v14);
  sub_1C939EDBC();
}

void AuthenticatedSession.Configuration.Application.PushRegistration.Payload.init(from:)()
{
  sub_1C93C0358();
  v2 = v1;
  v60 = v3;
  v59 = sub_1C93A1890(&qword_1EC39AFD0, &qword_1C9400078);
  sub_1C939D44C(v59);
  v56 = v4;
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51[-v8];
  v10 = sub_1C93A1890(&qword_1EC39AFD8, &qword_1C9400080);
  sub_1C939D44C(v10);
  v57 = v11;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51[-v15];
  v17 = sub_1C93A1890(&qword_1EC39AFE0, &unk_1C9400088);
  sub_1C939D44C(v17);
  v58 = v18;
  v20 = *(v19 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C2780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_8;
  }

  v54 = v9;
  v55 = v16;
  v53 = v10;
  v23 = v59;
  v24 = v60;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v29 = sub_1C93C0330(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v60 = v29;
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v38 = &type metadata for AuthenticatedSession.Configuration.Application.PushRegistration.Payload;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_1C93C315C();
    v41(v40, v17);
LABEL_8:
    sub_1C939EA94(v2);
LABEL_9:
    sub_1C939EDBC();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v52 = *(v26 + v27);
    v30 = sub_1C93C0328(v27 + 1);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    v29 = v30;
    if (v32 == v34 >> 1)
    {
      if (v52)
      {
        LOBYTE(v61) = 1;
        sub_1C93C27D4();
        v35 = v54;
        sub_1C939EDF4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v56 + 8))(v35, v23);
        v42 = sub_1C93C315C();
        v43(v42, v17);
        v44 = xmmword_1C93FD260;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1C93C2828();
        sub_1C939EDF4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1C93B22F0();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v45 = v58;
        swift_unknownObjectRelease();
        v46 = sub_1C93C3184();
        v47(v46);
        v48 = *(v45 + 8);
        v49 = sub_1C939D460();
        v50(v49);
        v44 = v61;
      }

      *v24 = v44;
      sub_1C939EA94(v2);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int sub_1C93C2160()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  AuthenticatedSession.Configuration.Application.PushRegistration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C93A5D1C(v2, v3);
}

BOOL static AuthenticatedSession.Configuration.Application.PushRegistration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 != 1)
    {
      v29[0] = *a1;
      v29[1] = v3;
      v28[0] = v4;
      v28[1] = v5;
      v11 = sub_1C93C316C();
      sub_1C93A5D1C(v11, v12);
      v13 = sub_1C93C3178();
      sub_1C93A5D1C(v13, v14);
      v15 = sub_1C93C3178();
      sub_1C93A5D1C(v15, v16);
      v17 = sub_1C93C316C();
      sub_1C93A5D1C(v17, v18);
      v19 = static BundleID.== infix(_:_:)(v29, v28);
      v20 = sub_1C93C3178();
      sub_1C93A5D7C(v20, v21);
      v22 = sub_1C93C316C();
      sub_1C93A5D7C(v22, v23);
      v24 = sub_1C93C316C();
      sub_1C93A5D7C(v24, v25);
      v26 = sub_1C93C3178();
      sub_1C93A5D7C(v26, v27);
      return v19;
    }

    v6 = a1[1];
LABEL_7:

    sub_1C93A5D7C(v2, v6);
    v8 = sub_1C93C316C();
    sub_1C93A5D7C(v8, v9);
    return 0;
  }

  if (v5 != 1)
  {
    v6 = 1;
    v7 = a2[1];
    goto LABEL_7;
  }

  sub_1C93A5D7C(*a1, 1);
  sub_1C93A5D7C(v4, 1);
  return v5;
}

uint64_t sub_1C93C22F0(uint64_t a1)
{
  v2 = sub_1C93C287C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C232C(uint64_t a1)
{
  v2 = sub_1C93C287C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Application.PushRegistration.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39AFE8, &qword_1C9400098);
  sub_1C939D44C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93A5D1C(v11, v12);
  sub_1C93C287C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v11;
  v15 = v12;
  sub_1C93C28D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1C93A5D7C(v14, v15);
  (*(v5 + 8))(v10, v3);
  sub_1C939EDBC();
}

uint64_t AuthenticatedSession.Configuration.Application.PushRegistration.hash(into:)()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1CCA87E40](v2);
  }

  v3 = *v0;
  MEMORY[0x1CCA87E40](0);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1CCA87E40](v2);
  }

  MEMORY[0x1CCA87E40](1);
  sub_1C93A8DA0();

  return String.hash(into:)();
}

Swift::Int _s17CloudCoreInternal20AuthenticatedSessionC13ConfigurationV11ApplicationV16PushRegistrationV7PayloadO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    v3 = 1;
LABEL_6:
    MEMORY[0x1CCA87E40](v3);
    return Hasher._finalize()();
  }

  MEMORY[0x1CCA87E40](0);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1CCA87E40](1);
  String.hash(into:)();
  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Application.PushRegistration.init(from:)()
{
  sub_1C93C0358();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39AFF0, &qword_1C94000A0);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  v13 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C287C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1C93C2924();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v12, v5);
    *v4 = v14;
  }

  sub_1C939EA94(v2);
  sub_1C939EDBC();
}

unint64_t sub_1C93C2780()
{
  result = qword_1EE02B870;
  if (!qword_1EE02B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B870);
  }

  return result;
}

unint64_t sub_1C93C27D4()
{
  result = qword_1EC39AFC8;
  if (!qword_1EC39AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AFC8);
  }

  return result;
}

unint64_t sub_1C93C2828()
{
  result = qword_1EE02B858;
  if (!qword_1EE02B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B858);
  }

  return result;
}

unint64_t sub_1C93C287C()
{
  result = qword_1EE02B898;
  if (!qword_1EE02B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B898);
  }

  return result;
}

unint64_t sub_1C93C28D0()
{
  result = qword_1EE02B840;
  if (!qword_1EE02B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B840);
  }

  return result;
}

unint64_t sub_1C93C2924()
{
  result = qword_1EE02AFD8;
  if (!qword_1EE02AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFD8);
  }

  return result;
}

unint64_t sub_1C93C297C()
{
  result = qword_1EC39AFF8;
  if (!qword_1EC39AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AFF8);
  }

  return result;
}

unint64_t sub_1C93C29D4()
{
  result = qword_1EC39B000;
  if (!qword_1EC39B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B000);
  }

  return result;
}