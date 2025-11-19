uint64_t WINetworkSharingProvider.Network.CaptivePortalLogin.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1E0BDCC7C(&qword_1ECE80700, &qword_1E0D7FED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE6E60();
  sub_1E0D6D30C();
  v11[1] = a2;
  sub_1E0BDCC7C(&qword_1ECE80710, &qword_1E0D7FEE0);
  sub_1E0BE98E8(&qword_1ECE80718);
  sub_1E0D6D21C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t WINetworkSharingProvider.Network.CaptivePortalLogin.hashValue.getter(uint64_t a1)
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_1E0D6D2EC();
}

void *sub_1E0BE13E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E0BE6EB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E0BE1430()
{
  v1 = *v0;
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1480()
{
  v1 = *v0;
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE14EC()
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](0);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1530()
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](0);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632435 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E0D6D24C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0BE1608(uint64_t a1)
{
  v2 = sub_1E0BE705C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE1644(uint64_t a1)
{
  v2 = sub_1E0BE705C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WINetworkSharingProvider.Network.ID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E0BDCC7C(&qword_1ECE80720, &qword_1E0D7FEE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE705C();
  sub_1E0D6D30C();
  v13 = a2;
  v14 = a3;
  sub_1E0BDF5B0(a2, a3);
  sub_1E0BE70B0();
  sub_1E0D6D21C();
  sub_1E0BE7104(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t WINetworkSharingProvider.Network.ID.hashValue.getter()
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

void *sub_1E0BE1858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E0BE7158(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E0BE18B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1900()
{
  v1 = *v0;
  v2 = v0[1];
  return _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E0BE1908()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

BOOL sub_1E0BE1950(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v3);
  v5 = sub_1E0D6D2EC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1E0BE1A1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E0D6CF3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v58 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v18 = [a1 SSID];
  if (v18)
  {
    v63 = a2;
    v19 = v18;
    v20 = sub_1E0D6CEEC();
    v22 = v21;

    sub_1E0BDF5B0(v20, v22);
    v23 = _s8CoreWiFi6WISSIDVyACSg10Foundation4DataVcfC_0(v20, v22);
    if (v24 >> 60 == 15)
    {
      v25 = type metadata accessor for WINetworkSharingProvider.Network(0);
      (*(*(v25 - 8) + 56))(v63, 1, 1, v25);

      return sub_1E0BE7104(v20, v22);
    }

    v61 = v23;
    v62 = v24;
    v31 = [a1 firstSharedDate];
    if (v31)
    {
      v32 = v31;
      sub_1E0D6CF2C();

      v33 = v15;
      v34 = *(v5 + 32);
      v34(v17, v33, v4);
      v35 = [a1 lastModifiedDate];
      if (!v35)
      {
        (*(v5 + 8))(v17, v4);
        sub_1E0BE7104(v20, v22);
        sub_1E0BE98D4(v61, v62);
        v44 = type metadata accessor for WINetworkSharingProvider.Network(0);
        return (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
      }

      v36 = v35;
      sub_1E0D6CF2C();

      v60 = v34;
      v34(v12, v9, v4);
      v70 = MEMORY[0x1E69E7CD0];
      v37 = [a1 supportedSecurityTypes];
      v38 = v37;
      if ((v37 & 0x200) != 0)
      {
        sub_1E0BE4A00(&v69, 0);
        if ((v38 & 0x100) == 0)
        {
LABEL_11:
          if ((v38 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_25;
        }
      }

      else if ((v37 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      sub_1E0BE4A00(&v68, 1);
      if ((v38 & 1) == 0)
      {
LABEL_12:
        if ((v38 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

LABEL_25:
      sub_1E0BE4A00(&v67, 2);
      if ((v38 & 4) == 0)
      {
LABEL_13:
        if ((v38 & 0x10) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

LABEL_26:
      sub_1E0BE4A00(&v66, 3);
      if ((v38 & 0x10) == 0)
      {
LABEL_14:
        if ((v38 & 0x40) == 0)
        {
LABEL_16:
          v39 = [a1 password];
          if (v39)
          {
            v40 = v39;
            v41 = sub_1E0D6CF9C();
            v58 = v42;
            v59 = v41;
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          if ([a1 isCaptive])
          {
            v45 = [a1 captivePortalCredentials];
            if (v45)
            {
              v46 = v45;
              v47 = sub_1E0D6CF5C();
            }

            else
            {
              v47 = sub_1E0BE9340(MEMORY[0x1E69E7CC0]);
            }
          }

          else
          {
            v47 = 0;
          }

          v48 = [a1 isHidden];
          sub_1E0BE7104(v20, v22);
          v49 = v63;
          v50 = v17;
          v51 = v60;
          v60(v63, v50, v4);
          v52 = type metadata accessor for WINetworkSharingProvider.Network(0);
          v51(v49 + v52[5], v12, v4);
          v53 = v70;
          v54 = (v49 + v52[6]);
          v55 = v62;
          *v54 = v61;
          v54[1] = v55;
          *(v49 + v52[7]) = v48;
          *(v49 + v52[8]) = v53;
          v56 = (v49 + v52[9]);
          v57 = v58;
          *v56 = v59;
          v56[1] = v57;
          *(v49 + v52[10]) = v47;
          return (*(*(v52 - 1) + 56))(v49, 0, 1, v52);
        }

LABEL_15:
        sub_1E0BE4A00(&v64, 5);
        goto LABEL_16;
      }

LABEL_27:
      sub_1E0BE4A00(&v65, 4);
      if ((v38 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_1E0BE7104(v20, v22);
    sub_1E0BE98D4(v61, v62);
    v43 = type metadata accessor for WINetworkSharingProvider.Network(0);
    v28 = *(*(v43 - 8) + 56);
    v29 = v43;
    v30 = v63;
  }

  else
  {
    v27 = type metadata accessor for WINetworkSharingProvider.Network(0);
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v30 = a2;
  }

  return v28(v30, 1, 1, v29);
}

unint64_t sub_1E0BE1FF4()
{
  v1 = *v0;
  v2 = 0x6168537473726966;
  v3 = 0x69746E6564657263;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x7242444953537369;
  if (v1 != 3)
  {
    v4 = 0x7974697275636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x69646F4D7473616CLL;
  if (v1 != 1)
  {
    v5 = 1684632435;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E0BE20FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0BE9454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0BE2130(uint64_t a1)
{
  v2 = sub_1E0BE72CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE216C(uint64_t a1)
{
  v2 = sub_1E0BE72CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BE21AC(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1E0D6D2AC();
    MEMORY[0x1E12E9280](v13);
    result = sub_1E0D6D2EC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
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

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t WINetworkSharingProvider.Network.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E0BDCC7C(&qword_1ECE80738, &qword_1E0D7FEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE72CC();
  sub_1E0D6D30C();
  LOBYTE(v17) = 0;
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80748, MEMORY[0x1E6969530]);
  sub_1E0D6D21C();
  if (!v2)
  {
    v11 = type metadata accessor for WINetworkSharingProvider.Network(0);
    v12 = v11[5];
    LOBYTE(v17) = 1;
    sub_1E0D6D21C();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    *&v17 = *v13;
    *(&v17 + 1) = v14;
    v18 = 2;
    sub_1E0BDF5B0(v17, v14);
    sub_1E0BE70B0();
    sub_1E0D6D21C();
    sub_1E0BE7104(v17, *(&v17 + 1));
    v15 = *(v3 + v11[7]);
    LOBYTE(v17) = 3;
    sub_1E0D6D20C();
    *&v17 = *(v3 + v11[8]);
    v18 = 4;
    sub_1E0BDCC7C(&qword_1ECE80750, &qword_1E0D7FEF8);
    sub_1E0BE74B8(&qword_1ECE80758, sub_1E0BE7368);
    sub_1E0D6D21C();
    v17 = *(v3 + v11[9]);
    v18 = 5;
    sub_1E0BE73BC();
    sub_1E0D6D21C();
    *&v17 = *(v3 + v11[10]);
    v18 = 6;
    sub_1E0BE7410();
    sub_1E0D6D1EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WINetworkSharingProvider.Network.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
  sub_1E0D6CF6C();
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = v1 + v4[5];
  sub_1E0D6CF6C();
  v6 = (v2 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  v9 = *(v2 + v4[7]);
  sub_1E0D6D2CC();
  sub_1E0BE5720(a1, *(v2 + v4[8]));
  v10 = (v2 + v4[9]);
  if (v10[1])
  {
    v11 = *v10;
    MEMORY[0x1E12E9280](1);
    sub_1E0D6D00C();
  }

  else
  {
    MEMORY[0x1E12E9280](0);
  }

  v12 = *(v2 + v4[10]);
  if (!v12)
  {
    return sub_1E0D6D2CC();
  }

  sub_1E0D6D2CC();

  return _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(a1, v12);
}

uint64_t WINetworkSharingProvider.Network.hashValue.getter()
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v1);
  return sub_1E0D6D2EC();
}

uint64_t WINetworkSharingProvider.Network.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1E0D6CF3C();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v29 - v8;
  v9 = sub_1E0BDCC7C(&qword_1ECE80780, &qword_1E0D7FF00);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE72CC();
  v37 = v13;
  v19 = v38;
  sub_1E0D6D2FC();
  if (v19)
  {
    return sub_1E0BDF4E4(a1);
  }

  v30 = v17;
  v31 = v14;
  v38 = a1;
  LOBYTE(v39) = 0;
  sub_1E0BE7320(&qword_1ECE80788, MEMORY[0x1E6969530]);
  v20 = v34;
  v21 = v35;
  sub_1E0D6D1AC();
  v22 = v30;
  v34 = *(v33 + 32);
  (v34)(v30, v20, v3);
  LOBYTE(v39) = 1;
  sub_1E0D6D1AC();
  v29 = v3;
  v23 = v31;
  (v34)(v22 + v31[5], v7, v3);
  v40 = 2;
  sub_1E0BE7464();
  v24 = v37;
  v34 = 0;
  sub_1E0D6D1AC();
  v25 = v38;
  *(v22 + v23[6]) = v39;
  LOBYTE(v39) = 3;
  v26 = sub_1E0D6D19C();
  v27 = v36;
  *(v22 + v23[7]) = v26 & 1;
  sub_1E0BDCC7C(&qword_1ECE80750, &qword_1E0D7FEF8);
  v40 = 4;
  sub_1E0BE74B8(&qword_1ECE80798, sub_1E0BE7530);
  sub_1E0D6D1AC();
  *(v22 + v23[8]) = v39;
  v40 = 5;
  sub_1E0BE7584();
  sub_1E0D6D1AC();
  *(v22 + v23[9]) = v39;
  v40 = 6;
  sub_1E0BE75D8();
  sub_1E0D6D17C();
  (*(v27 + 8))(v24, v21);
  *(v22 + v23[10]) = v39;
  sub_1E0BE7774(v22, v32, type metadata accessor for WINetworkSharingProvider.Network);
  sub_1E0BDF4E4(v25);
  return sub_1E0BE77DC(v22, type metadata accessor for WINetworkSharingProvider.Network);
}

uint64_t sub_1E0BE2EF0()
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE2F34()
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE2F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1E0BDF5B0(v4, v5);
}

uint64_t sub_1E0BE2FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0D6CF3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WINetworkSharingProvider.NetworkEvent.networks.getter()
{
  v1 = *(v0 + *(type metadata accessor for WINetworkSharingProvider.NetworkEvent(0) + 28));
}

uint64_t WINetworkSharingProvider.NetworkEvent.description.getter()
{
  sub_1E0D6D0FC();
  MEMORY[0x1E12E8FE0](540697705, 0xE400000000000000);
  v1 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  v13 = *(v0 + v1[9]);
  v2 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v2);

  MEMORY[0x1E12E8FE0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80658, MEMORY[0x1E6969530]);
  v3 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v3);

  MEMORY[0x1E12E8FE0](0xD000000000000020, 0x80000001E0D84430);
  if (*(v0 + v1[5]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v1[5]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12E8FE0](v4, v5);

  MEMORY[0x1E12E8FE0](0xD000000000000017, 0x80000001E0D84460);
  if (*(v0 + v1[6]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v1[6]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12E8FE0](v6, v7);

  MEMORY[0x1E12E8FE0](0xD000000000000019, 0x80000001E0D84480);
  v14 = *(v0 + v1[8]);
  v8 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v8);

  MEMORY[0x1E12E8FE0](0x726F7774656E202CLL, 0xEC000000203A736BLL);
  v9 = *(v0 + v1[7]);
  v10 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v11 = MEMORY[0x1E12E9030](v9, v10);
  MEMORY[0x1E12E8FE0](v11);

  return 0;
}

uint64_t sub_1E0BE3360()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x736B726F7774656ELL;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x65636E6575716573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E0BE3438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0BE96C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0BE3460(uint64_t a1)
{
  v2 = sub_1E0BE7684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE349C(uint64_t a1)
{
  v2 = sub_1E0BE7684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1E0BE34DC(uint64_t a1, uint64_t a2)
{
  v68[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v60 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16) || !v12 || a1 == a2)
  {
LABEL_86:
    v59 = *MEMORY[0x1E69E9840];
    return;
  }

  v66 = 0;
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_1E0BE7774(v14, v11, type metadata accessor for WINetworkSharingProvider.Network);
    sub_1E0BE7774(v15, v8, type metadata accessor for WINetworkSharingProvider.Network);
    if ((sub_1E0D6CF1C() & 1) == 0 || (v17 = v4[5], (sub_1E0D6CF1C() & 1) == 0))
    {
LABEL_85:
      sub_1E0BE77DC(v8, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0BE77DC(v11, type metadata accessor for WINetworkSharingProvider.Network);
      goto LABEL_86;
    }

    v18 = v4[6];
    v19 = *&v11[v18];
    v20 = *&v11[v18 + 8];
    v21 = &v8[v18];
    v22 = *v21;
    v23 = v21[1];
    v24 = v20 >> 62;
    v25 = v23 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v19)
      {
        v26 = 0;
      }

      else
      {
        v26 = v20 == 0xC000000000000000;
      }

      if (v26 && v23 >> 62 == 3 && !v22 && v23 == 0xC000000000000000)
      {
        goto LABEL_67;
      }

LABEL_31:
      v29 = 0;
      if (v25 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_31;
      }

      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v32)
      {
        goto LABEL_89;
      }

      if (v25 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v24)
    {
      LODWORD(v29) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_90;
      }

      v29 = v29;
      if (v25 <= 1)
      {
LABEL_29:
        if (v25)
        {
          LODWORD(v33) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
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
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v23);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v29 = BYTE6(v20);
      if (v25 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    if (v25 != 2)
    {
      if (v29)
      {
        goto LABEL_85;
      }

      goto LABEL_67;
    }

    v35 = *(v22 + 16);
    v34 = *(v22 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      goto LABEL_88;
    }

LABEL_38:
    if (v29 != v33)
    {
      goto LABEL_85;
    }

    if (v29 < 1)
    {
      goto LABEL_67;
    }

    if (v24 > 1)
    {
      break;
    }

    if (v24)
    {
      v63 = v22;
      v64 = v23;
      v65 = v16;
      v40 = v19;
      v41 = v19 >> 32;
      v62 = v41 - v40;
      if (v41 < v40)
      {
        goto LABEL_91;
      }

      v42 = sub_1E0D6CE7C();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1E0D6CE9C();
        if (__OFSUB__(v40, v44))
        {
          goto LABEL_94;
        }

        v45 = v40 - v44 + v43;
      }

      else
      {
        v45 = 0;
      }

      sub_1E0D6CE8C();
      v47 = v45;
      goto LABEL_65;
    }

    v68[0] = v19;
    LOWORD(v68[1]) = v20;
    BYTE2(v68[1]) = BYTE2(v20);
    BYTE3(v68[1]) = BYTE3(v20);
    BYTE4(v68[1]) = BYTE4(v20);
    BYTE5(v68[1]) = BYTE5(v20);
LABEL_57:
    v46 = v66;
    sub_1E0BE51F4(v68, v22, v23, &v67);
    v66 = v46;
    if (v46)
    {
      goto LABEL_95;
    }

    if (!v67)
    {
      goto LABEL_85;
    }

LABEL_67:
    if (v11[v4[7]] != v8[v4[7]] || (sub_1E0BE21AC(*&v11[v4[8]], *&v8[v4[8]]) & 1) == 0)
    {
      goto LABEL_85;
    }

    v49 = v4[9];
    v50 = &v11[v49];
    v51 = *&v11[v49 + 8];
    v52 = &v8[v49];
    v53 = *(v52 + 1);
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1E0D6D24C() & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (v53)
    {
      goto LABEL_85;
    }

    v54 = v4[10];
    v55 = *&v11[v54];
    v56 = *&v8[v54];
    if (v55)
    {
      if (!v56)
      {
        goto LABEL_85;
      }

      v57 = *&v8[v54];

      v58 = sub_1E0BE1060(v55, v56);

      sub_1E0BE77DC(v8, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0BE77DC(v11, type metadata accessor for WINetworkSharingProvider.Network);
      if ((v58 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v56)
      {
        goto LABEL_85;
      }

      sub_1E0BE77DC(v8, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0BE77DC(v11, type metadata accessor for WINetworkSharingProvider.Network);
    }

    v15 += v16;
    v14 += v16;
    if (!--v12)
    {
      goto LABEL_86;
    }
  }

  if (v24 != 2)
  {
    memset(v68, 0, 14);
    goto LABEL_57;
  }

  v63 = v22;
  v64 = v23;
  v65 = v16;
  v36 = *(v19 + 16);
  v62 = *(v19 + 24);
  v37 = sub_1E0D6CE7C();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1E0D6CE9C();
    if (__OFSUB__(v36, v39))
    {
      goto LABEL_93;
    }

    v61 = v36 - v39 + v38;
  }

  else
  {
    v61 = 0;
  }

  if (__OFSUB__(v62, v36))
  {
    goto LABEL_92;
  }

  sub_1E0D6CE8C();
  v47 = v61;
LABEL_65:
  v48 = v66;
  sub_1E0BE51F4(v47, v63, v64, v68);
  v66 = v48;
  if (!v48)
  {
    v16 = v65;
    if ((v68[0] & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_67;
  }

LABEL_95:

  __break(1u);
}

uint64_t WINetworkSharingProvider.NetworkEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E0BDCC7C(&qword_1ECE807B8, &qword_1E0D7FF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE7684();
  sub_1E0D6D30C();
  v21 = 0;
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80748, MEMORY[0x1E6969530]);
  sub_1E0D6D21C();
  if (!v2)
  {
    v11 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
    v12 = *(v3 + v11[5]);
    v20 = 1;
    sub_1E0D6D20C();
    v13 = *(v3 + v11[6]);
    v19 = 2;
    sub_1E0D6D20C();
    v18 = *(v3 + v11[7]);
    v17[15] = 3;
    sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BE76D8(&qword_1ECE807D0, &qword_1ECE807D8);
    sub_1E0D6D21C();
    v14 = *(v3 + v11[8]);
    v17[14] = 4;
    sub_1E0D6D22C();
    v15 = *(v3 + v11[9]);
    v17[13] = 5;
    sub_1E0D6D22C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WINetworkSharingProvider.NetworkEvent.hash(into:)(__int128 *a1)
{
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
  sub_1E0D6CF6C();
  v3 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  v4 = *(v1 + v3[5]);
  sub_1E0D6D2CC();
  v5 = *(v1 + v3[6]);
  sub_1E0D6D2CC();
  sub_1E0BE584C(a1, *(v1 + v3[7]));
  MEMORY[0x1E12E92A0](*(v1 + v3[8]));
  return MEMORY[0x1E12E92A0](*(v1 + v3[9]));
}

uint64_t WINetworkSharingProvider.NetworkEvent.hashValue.getter()
{
  sub_1E0D6D2AC();
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
  sub_1E0D6CF6C();
  v1 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  v2 = *(v0 + v1[5]);
  sub_1E0D6D2CC();
  v3 = *(v0 + v1[6]);
  sub_1E0D6D2CC();
  sub_1E0BE584C(v5, *(v0 + v1[7]));
  MEMORY[0x1E12E92A0](*(v0 + v1[8]));
  MEMORY[0x1E12E92A0](*(v0 + v1[9]));
  return sub_1E0D6D2EC();
}

uint64_t WINetworkSharingProvider.NetworkEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1E0D6CF3C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BDCC7C(&qword_1ECE807E0, &qword_1E0D7FF18);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE7684();
  v28 = v10;
  sub_1E0D6D2FC();
  if (v2)
  {
    return sub_1E0BDF4E4(a1);
  }

  v16 = v24;
  v35 = 0;
  sub_1E0BE7320(&qword_1ECE80788, MEMORY[0x1E6969530]);
  v17 = v25;
  sub_1E0D6D1AC();
  (*(v16 + 32))(v14, v17, v4);
  v34 = 1;
  v14[v11[5]] = sub_1E0D6D19C() & 1;
  v33 = 2;
  v18 = sub_1E0D6D19C();
  v19 = v26;
  v14[v11[6]] = v18 & 1;
  sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
  v32 = 3;
  sub_1E0BE76D8(&qword_1ECE807E8, &qword_1ECE807F0);
  sub_1E0D6D1AC();
  *&v14[v11[7]] = v29;
  v31 = 4;
  *&v14[v11[8]] = sub_1E0D6D1BC();
  v30 = 5;
  v20 = sub_1E0D6D1BC();
  (*(v19 + 8))(v28, v27);
  *&v14[v11[9]] = v20;
  sub_1E0BE7774(v14, v23, type metadata accessor for WINetworkSharingProvider.NetworkEvent);
  sub_1E0BDF4E4(a1);
  return sub_1E0BE77DC(v14, type metadata accessor for WINetworkSharingProvider.NetworkEvent);
}

uint64_t sub_1E0BE4464(__int128 *a1, int *a2)
{
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
  sub_1E0D6CF6C();
  v5 = *(v2 + a2[5]);
  sub_1E0D6D2CC();
  v6 = *(v2 + a2[6]);
  sub_1E0D6D2CC();
  sub_1E0BE584C(a1, *(v2 + a2[7]));
  MEMORY[0x1E12E92A0](*(v2 + a2[8]));
  return MEMORY[0x1E12E92A0](*(v2 + a2[9]));
}

uint64_t sub_1E0BE4530(uint64_t a1, int *a2)
{
  sub_1E0D6D2AC();
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
  sub_1E0D6CF6C();
  v4 = *(v2 + a2[5]);
  sub_1E0D6D2CC();
  v5 = *(v2 + a2[6]);
  sub_1E0D6D2CC();
  sub_1E0BE584C(v7, *(v2 + a2[7]));
  MEMORY[0x1E12E92A0](*(v2 + a2[8]));
  MEMORY[0x1E12E92A0](*(v2 + a2[9]));
  return sub_1E0D6D2EC();
}

unint64_t sub_1E0BE4630()
{
  result = qword_1ECE80648;
  if (!qword_1ECE80648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80648);
  }

  return result;
}

unint64_t sub_1E0BE4684()
{
  result = qword_1ECE80698;
  if (!qword_1ECE80698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80698);
  }

  return result;
}

unint64_t sub_1E0BE46D8()
{
  result = qword_1ECE806A0;
  if (!qword_1ECE806A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806A0);
  }

  return result;
}

unint64_t sub_1E0BE472C()
{
  result = qword_1ECE806A8;
  if (!qword_1ECE806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806A8);
  }

  return result;
}

unint64_t sub_1E0BE4780()
{
  result = qword_1ECE806B0;
  if (!qword_1ECE806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806B0);
  }

  return result;
}

unint64_t sub_1E0BE47D4()
{
  result = qword_1ECE806B8;
  if (!qword_1ECE806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806B8);
  }

  return result;
}

unint64_t sub_1E0BE4828()
{
  result = qword_1ECE806C0;
  if (!qword_1ECE806C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806C0);
  }

  return result;
}

unint64_t sub_1E0BE487C()
{
  result = qword_1ECE806C8;
  if (!qword_1ECE806C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806C8);
  }

  return result;
}

unint64_t sub_1E0BE48D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E0D6D2AC();
  sub_1E0D6D00C();
  v6 = sub_1E0D6D2EC();

  return sub_1E0BE4948(a1, a2, v6);
}

unint64_t sub_1E0BE4948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E0D6D24C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E0BE4A00(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a2);
  v7 = sub_1E0D6D2EC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1E0BE4D48(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E0BE4AF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  result = sub_1E0D6D0EC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1E0D6D2AC();
      MEMORY[0x1E12E9280](v18);
      result = sub_1E0D6D2EC();
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
      *(*(v6 + 48) + v14) = v18;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E0BE4D48(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E0BE4AF8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1E0BE4E94();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1E0BE4FD4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v4);
  result = sub_1E0D6D2EC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E0D6D25C();
  __break(1u);
  return result;
}

void *sub_1E0BE4E94()
{
  v1 = v0;
  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  v2 = *v0;
  v3 = sub_1E0D6D0DC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_1E0BE4FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  result = sub_1E0D6D0EC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E0D6D2AC();
      MEMORY[0x1E12E9280](v17);
      result = sub_1E0D6D2EC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E0BE51F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1E0D6CE7C();
    if (v10)
    {
      v11 = sub_1E0D6CE9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1E0D6CE8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1E0D6CE7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1E0D6CE9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1E0D6CE8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1E0BE5424(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1E0BE5B54(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1E0BE7104(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1E0BE51F4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1E0BE7104(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1E0D6D00C();

    sub_1E0D6D00C();

    result = sub_1E0D6D2EC();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E12E9280](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BE5720(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1E0D6D2EC();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E0D6D2AC();
    MEMORY[0x1E12E9280](v12);
    result = sub_1E0D6D2EC();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E12E9280](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BE584C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1E12E9280](v9);
  if (v9)
  {
    v11 = v4[5];
    v12 = &v8[v4[6]];
    v13 = v4[8];
    v25 = v4[7];
    v26 = v11;
    v14 = v4[9];
    v23 = v4[10];
    v24 = v13;
    v15 = &v8[v14];
    v16 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      sub_1E0BE7774(v16, v8, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0D6CF3C();
      sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530]);
      sub_1E0D6CF6C();
      sub_1E0D6CF6C();
      v18 = *v12;
      v19 = *(v12 + 1);
      _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
      v20 = v8[v25];
      sub_1E0D6D2CC();
      sub_1E0BE5720(a1, *&v8[v24]);
      if (*(v15 + 1))
      {
        v21 = *v15;
        MEMORY[0x1E12E9280](1);
        sub_1E0D6D00C();
      }

      else
      {
        MEMORY[0x1E12E9280](0);
      }

      v22 = *&v8[v23];
      sub_1E0D6D2CC();
      if (v22)
      {
        _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(a1, v22);
      }

      result = sub_1E0BE77DC(v8, type metadata accessor for WINetworkSharingProvider.Network);
      v16 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

BOOL _s8CoreWiFi24WINetworkSharingProviderC12NetworkEventV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E0D6CF1C() & 1) != 0 && (v4 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && (v5 = v4, sub_1E0BE34DC(*(a1 + v4[7]), *(a2 + v4[7])), (v6) && *(a1 + v5[8]) == *(a2 + v5[8]))
  {
    return *(a1 + v5[9]) == *(a2 + v5[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0BE5B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1E0D6CE7C();
  v11 = result;
  if (result)
  {
    result = sub_1E0D6CE9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E0D6CE8C();
  sub_1E0BE51F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1E0BDF5B0(a3, a4);
          return sub_1E0BE5424(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E0D6CF1C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = v4[5];
  if ((sub_1E0D6CF1C() & 1) == 0 || (_s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a2 + v4[6]), *(a2 + v4[6] + 8)) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1E0BE21AC(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[9];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10 || (*v7 != *v9 || v8 != v10) && (sub_1E0D6D24C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = v4[10];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {

      v14 = sub_1E0BE1060(v12, v13);

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E0BE5E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6649711 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7366007 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6385783 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 845246583 && a2 == 0xE400000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 862023799 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E0BE6098(uint64_t *a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE809D0, &qword_1E0D81268);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v46[-v4];
  v5 = sub_1E0BDCC7C(&qword_1ECE809D8, &qword_1E0D81270);
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v46[-v8];
  v9 = sub_1E0BDCC7C(&qword_1ECE809E0, &qword_1E0D81278);
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v46[-v12];
  v13 = sub_1E0BDCC7C(&qword_1ECE809E8, &qword_1E0D81280);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v46[-v15];
  v16 = sub_1E0BDCC7C(&qword_1ECE809F0, &qword_1E0D81288);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46[-v18];
  v20 = sub_1E0BDCC7C(&qword_1ECE809F8, &qword_1E0D81290);
  v49 = *(v20 - 8);
  v21 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46[-v22];
  v24 = sub_1E0BDCC7C(&qword_1ECE80A00, &qword_1E0D81298);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v46[-v27];
  v29 = a1[3];
  v30 = a1[4];
  v65 = a1;
  sub_1E0BDCCC4(a1, v29);
  sub_1E0BE4684();
  v31 = v64;
  sub_1E0D6D2FC();
  if (v31)
  {
    goto LABEL_9;
  }

  v48 = v20;
  v32 = v19;
  v34 = v62;
  v33 = v63;
  v64 = v25;
  v35 = sub_1E0D6D1CC();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v38 = sub_1E0D6D12C();
    swift_allocError();
    v40 = v39;
    v41 = *(sub_1E0BDCC7C(&qword_1ECE80640, &unk_1E0D7FE70) + 48);
    *v40 = &type metadata for WINetworkSharingProvider.Network.SecurityPolicy;
    sub_1E0D6D16C();
    sub_1E0D6D11C();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v64 + 8))(v28, v24);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1E0BDF4E4(v65);
    return 0;
  }

  v47 = *(v35 + 32);
  if (v36 > 2)
  {
    if (v36 != 3)
    {
      v37 = v64;
      if (v36 == 4)
      {
        v70 = 4;
        sub_1E0BE472C();
        v43 = v60;
        sub_1E0D6D15C();
        (*(v57 + 8))(v43, v56);
      }

      else
      {
        v71 = 5;
        sub_1E0BE46D8();
        v45 = v61;
        sub_1E0D6D15C();
        (*(v58 + 8))(v45, v59);
      }

      goto LABEL_17;
    }

    v69 = 3;
    sub_1E0BE4780();
    sub_1E0D6D15C();
    v44 = v64;
    (*(v55 + 8))(v33, v54);
    (*(v44 + 8))(v28, v24);
  }

  else
  {
    if (v36)
    {
      if (v36 == 1)
      {
        v67 = 1;
        sub_1E0BE4828();
        sub_1E0D6D15C();
        v37 = v64;
        (*(v50 + 8))(v32, v51);
      }

      else
      {
        v68 = 2;
        sub_1E0BE47D4();
        sub_1E0D6D15C();
        v37 = v64;
        (*(v52 + 8))(v34, v53);
      }

LABEL_17:
      (*(v37 + 8))(v28, v24);
      goto LABEL_18;
    }

    v66 = 0;
    sub_1E0BE487C();
    sub_1E0D6D15C();
    (*(v49 + 8))(v23, v48);
    (*(v64 + 8))(v28, v24);
  }

LABEL_18:
  swift_unknownObjectRelease();
  sub_1E0BDF4E4(v65);
  return v47;
}

unint64_t sub_1E0BE689C()
{
  result = qword_1ECE806E8;
  if (!qword_1ECE806E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806E8);
  }

  return result;
}

unint64_t sub_1E0BE68F0()
{
  result = qword_1ECE806F0;
  if (!qword_1ECE806F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806F0);
  }

  return result;
}

unint64_t sub_1E0BE6944()
{
  result = qword_1ECE806F8;
  if (!qword_1ECE806F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806F8);
  }

  return result;
}

uint64_t sub_1E0BE6998(uint64_t *a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE809B8, &qword_1E0D81248);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - v4;
  v6 = sub_1E0BDCC7C(&qword_1ECE809C0, &qword_1E0D81250);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = sub_1E0BDCC7C(&qword_1ECE809C8, &unk_1E0D81258);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[4];
  v15 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE689C();
  v16 = v36;
  sub_1E0D6D2FC();
  if (v16)
  {
    goto LABEL_7;
  }

  v31 = v6;
  v17 = v5;
  v18 = v34;
  v36 = a1;
  v15 = v13;
  v19 = sub_1E0D6D1CC();
  v20 = v10;
  if (*(v19 + 16) != 1)
  {
    v23 = sub_1E0D6D12C();
    swift_allocError();
    v25 = v24;
    v26 = *(sub_1E0BDCC7C(&qword_1ECE80640, &unk_1E0D7FE70) + 48);
    *v25 = &type metadata for WINetworkSharingProvider.Network.Credentials;
    sub_1E0D6D16C();
    sub_1E0D6D11C();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v35 + 8))(v15, v10);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_7:
    sub_1E0BDF4E4(a1);
    return v15;
  }

  if (*(v19 + 32))
  {
    v38 = 1;
    sub_1E0BE68F0();
    v21 = v17;
    sub_1E0D6D15C();
    v22 = v35;
    v29 = v15;
    v15 = sub_1E0D6D18C();
    (*(v33 + 8))(v21, v18);
    (*(v22 + 8))(v29, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0;
    sub_1E0BE6944();
    v27 = v9;
    sub_1E0D6D15C();
    v28 = v35;
    (*(v32 + 8))(v27, v31);
    (*(v28 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v15 = 0;
  }

  sub_1E0BDF4E4(v36);
  return v15;
}

unint64_t sub_1E0BE6E60()
{
  result = qword_1ECE80708;
  if (!qword_1ECE80708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80708);
  }

  return result;
}

void *sub_1E0BE6EB4(uint64_t *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE809A8, &qword_1E0D81240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE6E60();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BDCC7C(&qword_1ECE80710, &qword_1E0D7FEE0);
    sub_1E0BE98E8(&qword_1ECE809B0);
    sub_1E0D6D1AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_1E0BDF4E4(a1);
  }

  return v9;
}

unint64_t sub_1E0BE705C()
{
  result = qword_1ECE80728;
  if (!qword_1ECE80728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80728);
  }

  return result;
}

unint64_t sub_1E0BE70B0()
{
  result = qword_1ECE80730;
  if (!qword_1ECE80730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80730);
  }

  return result;
}

uint64_t sub_1E0BE7104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1E0BE7158(uint64_t *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE809A0, &qword_1E0D81238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE705C();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BE7464();
    sub_1E0D6D1AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_1E0BDF4E4(a1);
  }

  return v9;
}

unint64_t sub_1E0BE72CC()
{
  result = qword_1ECE80740;
  if (!qword_1ECE80740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80740);
  }

  return result;
}

uint64_t sub_1E0BE7320(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E0BE7368()
{
  result = qword_1ECE80760;
  if (!qword_1ECE80760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80760);
  }

  return result;
}

unint64_t sub_1E0BE73BC()
{
  result = qword_1ECE80768;
  if (!qword_1ECE80768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80768);
  }

  return result;
}

unint64_t sub_1E0BE7410()
{
  result = qword_1ECE80770;
  if (!qword_1ECE80770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80770);
  }

  return result;
}

unint64_t sub_1E0BE7464()
{
  result = qword_1ECE80790;
  if (!qword_1ECE80790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80790);
  }

  return result;
}

uint64_t sub_1E0BE74B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE80750, &qword_1E0D7FEF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E0BE7530()
{
  result = qword_1ECE807A0;
  if (!qword_1ECE807A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807A0);
  }

  return result;
}

unint64_t sub_1E0BE7584()
{
  result = qword_1ECE807A8;
  if (!qword_1ECE807A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807A8);
  }

  return result;
}

unint64_t sub_1E0BE75D8()
{
  result = qword_1ECE807B0;
  if (!qword_1ECE807B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807B0);
  }

  return result;
}

uint64_t sub_1E0BE764C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E0BE7684()
{
  result = qword_1ECE807C0;
  if (!qword_1ECE807C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807C0);
  }

  return result;
}

uint64_t sub_1E0BE76D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BE7320(a2, type metadata accessor for WINetworkSharingProvider.Network);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0BE7774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0BE77DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E0BE7840()
{
  result = qword_1ECE807F8;
  if (!qword_1ECE807F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807F8);
  }

  return result;
}

unint64_t sub_1E0BE7898()
{
  result = qword_1ECE80800;
  if (!qword_1ECE80800)
  {
    sub_1E0BDB160(&qword_1ECE80808, &qword_1E0D7FFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80800);
  }

  return result;
}

unint64_t sub_1E0BE7900()
{
  result = qword_1ECE80810;
  if (!qword_1ECE80810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80810);
  }

  return result;
}

unint64_t sub_1E0BE7958()
{
  result = qword_1ECE80818;
  if (!qword_1ECE80818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80818);
  }

  return result;
}

unint64_t sub_1E0BE79B0()
{
  result = qword_1ECE80820;
  if (!qword_1ECE80820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80820);
  }

  return result;
}

unint64_t sub_1E0BE7A50()
{
  result = qword_1ECE80830;
  if (!qword_1ECE80830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80830);
  }

  return result;
}

void sub_1E0BE7B44()
{
  sub_1E0D6CF3C();
  if (v0 <= 0x3F)
  {
    sub_1E0BE7BFC();
    if (v1 <= 0x3F)
    {
      sub_1E0BE7C58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E0BE7BFC()
{
  if (!qword_1ECE80850)
  {
    sub_1E0BE4630();
    v0 = sub_1E0D6D0BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE80850);
    }
  }
}

void sub_1E0BE7C58()
{
  if (!qword_1ECE80858)
  {
    v0 = sub_1E0D6D0CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE80858);
    }
  }
}

__n128 sub_1E0BE7CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E0BE7CC4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E0BE7D14(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E0BE7D68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E0BE7D80(void *result, int a2)
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

uint64_t sub_1E0BE7DC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E0BE7DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E0BE7E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1E0BE7EB4()
{
  sub_1E0D6CF3C();
  if (v0 <= 0x3F)
  {
    sub_1E0BE7F58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E0BE7F58()
{
  if (!qword_1ECE80870)
  {
    type metadata accessor for WINetworkSharingProvider.Network(255);
    v0 = sub_1E0D6D09C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE80870);
    }
  }
}

uint64_t getEnumTagSinglePayload for WINetworkSharingProvider.Network.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingProvider.Network.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WINetworkSharingProvider.Network.Credentials.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingProvider.Network.Credentials.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WISSID.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WISSID.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_1E0BE8384(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E0BE8414(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E0BE8538()
{
  result = qword_1ECE80878;
  if (!qword_1ECE80878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80878);
  }

  return result;
}

unint64_t sub_1E0BE8590()
{
  result = qword_1ECE80880;
  if (!qword_1ECE80880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80880);
  }

  return result;
}

unint64_t sub_1E0BE85E8()
{
  result = qword_1ECE80888;
  if (!qword_1ECE80888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80888);
  }

  return result;
}

unint64_t sub_1E0BE8640()
{
  result = qword_1ECE80890;
  if (!qword_1ECE80890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80890);
  }

  return result;
}

unint64_t sub_1E0BE8698()
{
  result = qword_1ECE80898;
  if (!qword_1ECE80898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80898);
  }

  return result;
}

unint64_t sub_1E0BE86F0()
{
  result = qword_1ECE808A0;
  if (!qword_1ECE808A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808A0);
  }

  return result;
}

unint64_t sub_1E0BE8748()
{
  result = qword_1ECE808A8;
  if (!qword_1ECE808A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808A8);
  }

  return result;
}

unint64_t sub_1E0BE87A0()
{
  result = qword_1ECE808B0;
  if (!qword_1ECE808B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808B0);
  }

  return result;
}

unint64_t sub_1E0BE87F8()
{
  result = qword_1ECE808B8;
  if (!qword_1ECE808B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808B8);
  }

  return result;
}

unint64_t sub_1E0BE8850()
{
  result = qword_1ECE808C0;
  if (!qword_1ECE808C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808C0);
  }

  return result;
}

unint64_t sub_1E0BE88A8()
{
  result = qword_1ECE808C8;
  if (!qword_1ECE808C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808C8);
  }

  return result;
}

unint64_t sub_1E0BE8900()
{
  result = qword_1ECE808D0;
  if (!qword_1ECE808D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808D0);
  }

  return result;
}

unint64_t sub_1E0BE8958()
{
  result = qword_1ECE808D8;
  if (!qword_1ECE808D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808D8);
  }

  return result;
}

unint64_t sub_1E0BE89B0()
{
  result = qword_1ECE808E0;
  if (!qword_1ECE808E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808E0);
  }

  return result;
}

unint64_t sub_1E0BE8A08()
{
  result = qword_1ECE808E8;
  if (!qword_1ECE808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808E8);
  }

  return result;
}

unint64_t sub_1E0BE8A60()
{
  result = qword_1ECE808F0;
  if (!qword_1ECE808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808F0);
  }

  return result;
}

unint64_t sub_1E0BE8AB8()
{
  result = qword_1ECE808F8;
  if (!qword_1ECE808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808F8);
  }

  return result;
}

unint64_t sub_1E0BE8B10()
{
  result = qword_1ECE80900;
  if (!qword_1ECE80900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80900);
  }

  return result;
}

unint64_t sub_1E0BE8B68()
{
  result = qword_1ECE80908;
  if (!qword_1ECE80908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80908);
  }

  return result;
}

unint64_t sub_1E0BE8BC0()
{
  result = qword_1ECE80910;
  if (!qword_1ECE80910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80910);
  }

  return result;
}

unint64_t sub_1E0BE8C18()
{
  result = qword_1ECE80918;
  if (!qword_1ECE80918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80918);
  }

  return result;
}

unint64_t sub_1E0BE8C70()
{
  result = qword_1ECE80920;
  if (!qword_1ECE80920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80920);
  }

  return result;
}

unint64_t sub_1E0BE8CC8()
{
  result = qword_1ECE80928;
  if (!qword_1ECE80928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80928);
  }

  return result;
}

unint64_t sub_1E0BE8D20()
{
  result = qword_1ECE80930;
  if (!qword_1ECE80930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80930);
  }

  return result;
}

unint64_t sub_1E0BE8D78()
{
  result = qword_1ECE80938;
  if (!qword_1ECE80938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80938);
  }

  return result;
}

unint64_t sub_1E0BE8DD0()
{
  result = qword_1ECE80940;
  if (!qword_1ECE80940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80940);
  }

  return result;
}

unint64_t sub_1E0BE8E28()
{
  result = qword_1ECE80948;
  if (!qword_1ECE80948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80948);
  }

  return result;
}

unint64_t sub_1E0BE8E80()
{
  result = qword_1ECE80950;
  if (!qword_1ECE80950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80950);
  }

  return result;
}

unint64_t sub_1E0BE8ED8()
{
  result = qword_1ECE80958;
  if (!qword_1ECE80958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80958);
  }

  return result;
}

unint64_t sub_1E0BE8F30()
{
  result = qword_1ECE80960;
  if (!qword_1ECE80960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80960);
  }

  return result;
}

unint64_t sub_1E0BE8F88()
{
  result = qword_1ECE80968;
  if (!qword_1ECE80968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80968);
  }

  return result;
}

unint64_t sub_1E0BE8FE0()
{
  result = qword_1ECE80970;
  if (!qword_1ECE80970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80970);
  }

  return result;
}

unint64_t sub_1E0BE9038()
{
  result = qword_1ECE80978;
  if (!qword_1ECE80978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80978);
  }

  return result;
}

unint64_t sub_1E0BE9090()
{
  result = qword_1ECE80980;
  if (!qword_1ECE80980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80980);
  }

  return result;
}

unint64_t sub_1E0BE90E8()
{
  result = qword_1ECE80988;
  if (!qword_1ECE80988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80988);
  }

  return result;
}

id sub_1E0BE913C(uint64_t a1)
{
  v2 = [objc_allocWithZone(CWFWiFiNetworkSharingNetwork) init];
  v3 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v4 = *(a1 + v3[8]);
  if (sub_1E0BE1950(0, v4))
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  if (sub_1E0BE1950(1u, v4))
  {
    v5 |= 0x100uLL;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | sub_1E0BE1950(2u, v4);
  if (sub_1E0BE1950(3u, v4))
  {
    v6 |= 4uLL;
  }

  if (sub_1E0BE1950(4u, v4))
  {
    v6 |= 0x10uLL;
  }

  if (sub_1E0BE1950(5u, v4))
  {
    v7 = v6 | 0x40;
  }

  else
  {
    v7 = v6;
  }

  [v2 setSupportedSecurityTypes_];
  v8 = (a1 + v3[9]);
  if (v8[1])
  {
    v9 = *v8;
    v10 = sub_1E0D6CF8C();
    [v2 setPassword_];
  }

  v11 = sub_1E0D6CF0C();
  [v2 setFirstSharedDate_];

  v12 = a1 + v3[5];
  v13 = sub_1E0D6CF0C();
  [v2 setLastModifiedDate_];

  v14 = *(a1 + v3[10]);
  if (v14)
  {
    [v2 setIsCaptive_];
    if (*(v14 + 16))
    {
      v15 = sub_1E0D6CF4C();
    }

    else
    {
      v15 = 0;
    }

    [v2 setCaptivePortalCredentials_];
  }

  [v2 setIsHidden_];
  return v2;
}

unint64_t sub_1E0BE9340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E0BDCC7C(&qword_1ECE80990, &qword_1E0D81228);
    v3 = sub_1E0D6D14C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E0BE48D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E0BE9454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168537473726966 && a2 == 0xEB00000000646572;
  if (v4 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632435 && a2 == 0xE400000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7242444953537369 && a2 == 0xEF7473616364616FLL || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697275636573 && a2 == 0xEE007963696C6F50 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0D844F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E0BE96C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E0D84510 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E0D84530 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B726F7774656ELL && a2 == 0xE800000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E0D84550 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E0BE98D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E0BE7104(a1, a2);
  }

  return a1;
}

uint64_t sub_1E0BE98E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE80710, &qword_1E0D7FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WISSID.stringRepresentation(encoding:)(uint64_t a1)
{
  v2 = sub_1E0D6CFEC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E0D6CFBC();
}

uint64_t WISSID.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E0D6CFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  sub_1E0D6CFDC();
  (*(v5 + 16))(v9, v11, v4);
  v12 = sub_1E0D6CFBC();
  v14 = v13;
  (*(v5 + 8))(v11, v4);
  if (v14)
  {
    v20 = 39;
    v21 = 0xE100000000000000;
    MEMORY[0x1E12E8FE0](v12, v14);

    MEMORY[0x1E12E8FE0](39, 0xE100000000000000);
  }

  else
  {
    v20 = 30768;
    v21 = 0xE200000000000000;
    v19[0] = sub_1E0BE9CA4(a1, a2);
    sub_1E0BDCC7C(&qword_1ECE80A08, &qword_1E0D812D0);
    sub_1E0BEA6A0();
    v15 = sub_1E0D6CF7C();
    v17 = v16;

    MEMORY[0x1E12E8FE0](v15, v17);
  }

  return v20;
}

uint64_t sub_1E0BE9CA4(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a2 >> 62;
    sub_1E0BEA4AC(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1E0D6CE7C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1E0D6CE9C();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1E0D6CE7C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1E0D6CE9C();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      sub_1E0BDCC7C(&qword_1ECE80A60, &qword_1E0D81578);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1E0D812C0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1E0D6CFCC();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_1E0BEA4AC((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t WISSID.init(_:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E0D6CFAC();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 >= 1)
      {
        goto LABEL_12;
      }

LABEL_21:
      sub_1E0BE98D4(v4, v6);
LABEL_22:
      v4 = 0;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!BYTE6(v6))
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v8 == 2)
  {
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    v11 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v11)
    {
LABEL_20:
      if (v13 < 33)
      {
LABEL_23:
        v16 = sub_1E0D6CFEC();
        (*(*(v16 - 8) + 8))(a3, v16);
        return v4;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_19:
    v13 = BYTE6(v6);
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    goto LABEL_19;
  }

  LODWORD(v13) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v13 = v13;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E0BEA184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E0D6D24C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0BEA20C(uint64_t a1)
{
  v2 = sub_1E0BEA704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BEA248(uint64_t a1)
{
  v2 = sub_1E0BEA704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WISSID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E0BDCC7C(&qword_1ECE80A18, &qword_1E0D812D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BEA704();
  sub_1E0D6D30C();
  v13 = a2;
  v14 = a3;
  sub_1E0BDF5B0(a2, a3);
  sub_1E0BEA758();
  sub_1E0D6D21C();
  sub_1E0BE7104(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t WISSID.hashValue.getter()
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

void *sub_1E0BEA464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E0BEA7AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

char *sub_1E0BEA4AC(char *a1, int64_t a2, char a3)
{
  result = sub_1E0BEA4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E0BEA4CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E0BDCC7C(&qword_1ECE80A68, &qword_1E0D81580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s8CoreWiFi6WISSIDVyACSg10Foundation4DataVcfC_0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_20;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v2)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_20;
    }

LABEL_11:
    if (v2 == 2)
    {
      v9 = *(result + 16);
      v8 = *(result + 24);
      v5 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v5)
      {
LABEL_19:
        if (v7 < 33)
        {
          return result;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else if (v2 == 1)
    {
      LODWORD(v7) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v7 = v7;
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
      return result;
    }

    v7 = BYTE6(a2);
    goto LABEL_19;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_23;
  }

  if (HIDWORD(result) - result >= 1)
  {
    goto LABEL_11;
  }

LABEL_20:
  sub_1E0BE7104(result, a2);
  return 0;
}

unint64_t sub_1E0BEA6A0()
{
  result = qword_1ECE80A10;
  if (!qword_1ECE80A10)
  {
    sub_1E0BDB160(&qword_1ECE80A08, &qword_1E0D812D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A10);
  }

  return result;
}

unint64_t sub_1E0BEA704()
{
  result = qword_1ECE80A20;
  if (!qword_1ECE80A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A20);
  }

  return result;
}

unint64_t sub_1E0BEA758()
{
  result = qword_1ECE80A28;
  if (!qword_1ECE80A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A28);
  }

  return result;
}

void *sub_1E0BEA7AC(uint64_t *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE80A50, &qword_1E0D81570);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BEA704();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BEAAA0();
    sub_1E0D6D1AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_1E0BDF4E4(a1);
  }

  return v9;
}

unint64_t sub_1E0BEA924()
{
  result = qword_1ECE80A30;
  if (!qword_1ECE80A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A30);
  }

  return result;
}

unint64_t sub_1E0BEA99C()
{
  result = qword_1ECE80A38;
  if (!qword_1ECE80A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A38);
  }

  return result;
}

unint64_t sub_1E0BEA9F4()
{
  result = qword_1ECE80A40;
  if (!qword_1ECE80A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A40);
  }

  return result;
}

unint64_t sub_1E0BEAA4C()
{
  result = qword_1ECE80A48;
  if (!qword_1ECE80A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A48);
  }

  return result;
}

unint64_t sub_1E0BEAAA0()
{
  result = qword_1ECE80A58;
  if (!qword_1ECE80A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A58);
  }

  return result;
}

CWFWiFiNetworkSharingUtil __swiftcall CWFWiFiNetworkSharingUtil.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1E0BEAD90(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

size_t sub_1E0BEADD8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E0BDCC7C(&qword_1ECE80AA0, qword_1E0D81598);
  v10 = *(type metadata accessor for WINetworkSharingProvider.Network(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WINetworkSharingProvider.Network(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E0BEAFB0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v51 = a3;
  v5 = sub_1E0BDCC7C(&qword_1ECE80A80, &qword_1E0D81588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v46 - v14;
  v55 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v52 = *(v55 - 8);
  v16 = *(v52 + 64);
  v17 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v53 = a1;
  if (a1 >> 62)
  {
    result = sub_1E0D6D13C();
    v22 = result;
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = a2;
  v50 = v5;
  v46 = v11;
  v47 = v6;
  if (v22)
  {
    if (v22 < 1)
    {
      __break(1u);
      return result;
    }

    v23 = 0;
    v24 = v53;
    v25 = v53 & 0xC000000000000001;
    v26 = (v52 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v25)
      {
        v28 = MEMORY[0x1E12E90D0](v23, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v23 + 32);
      }

      v29 = v28;
      sub_1E0BE1A1C(v28, v15);
      if ((*v26)(v15, 1, v55) == 1)
      {

        sub_1E0BEBB84(v15);
      }

      else
      {
        sub_1E0BEBCF4(v15, v21);
        sub_1E0BEBBEC(v21, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1E0BEADD8(0, v27[2] + 1, 1, v27);
        }

        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          v27 = sub_1E0BEADD8(v30 > 1, v31 + 1, 1, v27);
        }

        sub_1E0BEBC50(v21);
        v27[2] = v31 + 1;
        sub_1E0BEBCF4(v54, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v31);
        v24 = v53;
      }

      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v32 = v51;
  if (v51 >> 60 != 15)
  {
    v36 = sub_1E0D6CE3C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = v49;
    sub_1E0BDF5B0(v49, v32);
    sub_1E0D6CE2C();
    sub_1E0BEBCAC(&qword_1ECE80A90, &qword_1ECE80A80, &qword_1E0D81588);
    v40 = v48;
    v41 = v50;
    sub_1E0D6CE1C();

    v44 = v46;
    v43 = v47;
    (*(v47 + 32))(v46, v40, v41);
    v56 = v27;
    sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BEBCAC(&qword_1ECE80A98, &qword_1ECE807C8, &qword_1E0D7FF10);
    v45 = sub_1E0D6D02C();
    sub_1E0BE98D4(v39, v32);

    (*(v43 + 8))(v44, v41);
    v27 = v45;
  }

  v33 = sub_1E0D6CE6C();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1E0D6CE5C();
  v56 = v27;
  sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
  sub_1E0BEBD58();
  v42 = sub_1E0D6CE4C();

  return v42;
}

uint64_t sub_1E0BEB55C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a2;
  v5 = sub_1E0BDCC7C(&qword_1ECE80A80, &qword_1E0D81588);
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - v13;
  v60 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v58 = *(v60 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x1EEE9AC00](v60);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v62 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    result = sub_1E0D6D13C();
    v23 = result;
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v5;
  v55 = a3;
  v50 = v10;
  if (!v23)
  {
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  if (v23 >= 1)
  {
    v24 = 0;
    v25 = a1 & 0xC000000000000001;
    v26 = (v58 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    v57 = a1;
    do
    {
      if (v25)
      {
        v28 = MEMORY[0x1E12E90D0](v24, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v24 + 32);
      }

      v29 = v28;
      sub_1E0BE1A1C(v28, v14);
      if ((*v26)(v14, 1, v60) == 1)
      {

        sub_1E0BEBB84(v14);
      }

      else
      {
        sub_1E0BEBCF4(v14, v22);
        sub_1E0BEBBEC(v22, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1E0BEADD8(0, v27[2] + 1, 1, v27);
        }

        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          v27 = sub_1E0BEADD8(v30 > 1, v31 + 1, 1, v27);
        }

        sub_1E0BEBC50(v22);
        v27[2] = v31 + 1;
        sub_1E0BEBCF4(v59, v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v31);
        a1 = v57;
      }

      ++v24;
    }

    while (v23 != v24);
LABEL_18:
    v32 = v55;
    if (v55 >> 60 == 15)
    {
      v33 = v56;
      v34 = v27[2];
      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v41 = sub_1E0D6CE3C();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      v44 = v53;
      sub_1E0BDF5B0(v53, v32);
      sub_1E0D6CE2C();
      sub_1E0BEBCAC(&qword_1ECE80A90, &qword_1ECE80A80, &qword_1E0D81588);
      v45 = v52;
      v46 = v54;
      sub_1E0D6CE1C();
      v33 = v56;

      v47 = v50;
      v48 = v51;
      (*(v51 + 32))(v50, v45, v46);
      v61 = v27;
      sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
      sub_1E0BEBCAC(&qword_1ECE80A98, &qword_1ECE807C8, &qword_1E0D7FF10);
      v49 = sub_1E0D6D02C();
      sub_1E0BE98D4(v44, v32);

      (*(v48 + 8))(v47, v46);
      v27 = v49;
      v34 = *(v49 + 16);
      if (v34)
      {
LABEL_20:
        v35 = v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v36 = *(v58 + 72);
        v37 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E0BEBBEC(v35, v33);
          v38 = sub_1E0BE913C(v33);
          sub_1E0BEBC50(v33);
          if (v38)
          {
            v39 = v38;
            MEMORY[0x1E12E9000]();
            if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v40 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1E0D6D07C();
            }

            sub_1E0D6D08C();

            v37 = v62;
          }

          v35 += v36;
          --v34;
        }

        while (v34);

        return v37;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BEBB84(uint64_t a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0BEBBEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0BEBC50(uint64_t a1)
{
  v2 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0BEBCAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0BEBCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0BEBD58()
{
  result = qword_1ECE807D0;
  if (!qword_1ECE807D0)
  {
    sub_1E0BDB160(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BEBDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807D0);
  }

  return result;
}

unint64_t sub_1E0BEBDDC()
{
  result = qword_1ECE807D8;
  if (!qword_1ECE807D8)
  {
    type metadata accessor for WINetworkSharingProvider.Network(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807D8);
  }

  return result;
}

BOOL sub_1E0BEC7E0(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"isOpen"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    goto LABEL_15;
  }

  v4 = [a1 objectForKeyedSubscript:@"isEAP"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_15;
  }

  v6 = [a1 objectForKeyedSubscript:@"isCarPlayOnly"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = [a1 objectForKeyedSubscript:@"isAppBased"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [a1 objectForKeyedSubscript:@"isProfileBased"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    goto LABEL_15;
  }

  v12 = [a1 objectForKeyedSubscript:@"isIBSS"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = [a1 objectForKeyedSubscript:@"isExpirable"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = [a1 objectForKeyedSubscript:@"isHidden"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    goto LABEL_15;
  }

  v18 = [a1 objectForKeyedSubscript:@"isCustom"];
  v19 = [v18 BOOLValue];

  if (v19 & 1) != 0 || ([a1 objectForKeyedSubscript:@"isAutoJoinDisabled"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, (v21))
  {
LABEL_15:
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v22 = [a1 objectForKeyedSubscript:@"isCaptive"];
    v23 = v22;
    v24 = v22 && ![v22 BOOLValue];
  }

  return v24;
}

id sub_1E0BEC9DC(uint64_t a1, BOOL *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a1 - 9;
  if ((a1 - 9) > 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0x1F5B9A0C0;
  v8[0] = 0x1F5B9A0E0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (a2)
  {
LABEL_5:
    *a2 = v3 < 2;
  }

LABEL_6:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *sub_1E0BECA98(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E57B8[a1];
  }

  return v2;
}

__CFString *sub_1E0BECB08(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5818[a1];
  }

  return v2;
}

id sub_1E0BECB78(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = [v3 SSID];
          v14 = [v12 SSID];
          v31 = v13;
          if ([v13 length])
          {
            if ([v14 length])
            {
              if ([v13 isEqualToData:v14])
              {
                v15 = [v3 isPasspoint];
                if (v15 == [v12 isPasspoint])
                {
                  if (![v12 isAmbiguousNetworkName])
                  {
LABEL_26:

                    v6 = v12;
                    goto LABEL_28;
                  }

                  v26 = i;
                  v27 = v9;
                  v28 = v10;
                  v29 = v7;
                  v30 = v5;
                  v34 = 0u;
                  v35 = 0u;
                  v32 = 0u;
                  v33 = 0u;
                  v16 = [v12 BSSList];
                  v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = *v33;
                    while (2)
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v33 != v19)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v21 = [*(*(&v32 + 1) + 8 * j) BSSID];
                        v22 = [v3 BSSID];
                        v23 = [v21 isEqualToString:v22];

                        if (v23)
                        {

                          v7 = v29;
                          v5 = v30;
                          goto LABEL_26;
                        }
                      }

                      v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
                      if (v18)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v7 = v29;
                  v5 = v30;
                  v9 = v27;
                  v10 = v28;
                  i = v26;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
        v6 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_28:
  }

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

__CFString *sub_1E0BECE30(uint64_t a1)
{
  if (a1 > 63)
  {
    if (a1 > 159)
    {
      if (a1 > 511)
      {
        if (a1 == 512)
        {
          v3 = @"Open";

          return v3;
        }

        if (a1 == 768)
        {
          v3 = @"OWE Transition";

          return v3;
        }
      }

      else
      {
        if (a1 == 160)
        {
          v3 = @"WPA2/WPA3 Enterprise";

          return v3;
        }

        if (a1 == 256)
        {
          v3 = @"OWE";

          return v3;
        }
      }
    }

    else if (a1 > 83)
    {
      if (a1 == 84)
      {
        v3 = @"WPA/WPA2/WPA3 Personal";

        return v3;
      }

      if (a1 == 128)
      {
        v3 = @"WPA3 Enterprise";

        return v3;
      }
    }

    else
    {
      if (a1 == 64)
      {
        v3 = @"WPA3 Personal";

        return v3;
      }

      if (a1 == 80)
      {
        v3 = @"WPA2/WPA3 Personal";

        return v3;
      }
    }

LABEL_72:
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%lu", @"Unknown=", a1, v1];

    return v3;
  }

  if (a1 > 15)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        v3 = @"WPA2 Enterprise";

        return v3;
      }

      if (a1 == 40)
      {
        v3 = @"WPA/WPA2 Enterprise";

        return v3;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v3 = @"WPA2 Personal";

        return v3;
      }

      if (a1 == 20)
      {
        v3 = @"WPA/WPA2 Personal";

        return v3;
      }
    }

    goto LABEL_72;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v3 = @"WPA Personal";

      return v3;
    }

    if (a1 == 8)
    {
      v3 = @"WPA Enterprise";

      return v3;
    }

    goto LABEL_72;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v3 = @"WAPI";

      return v3;
    }

    goto LABEL_72;
  }

  v3 = @"WEP";

  return v3;
}

uint64_t sub_1E0BED0BC(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Open"])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:@"WEP"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WAPI"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"WPA Personal"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2 Personal"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"WPA2 Personal"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"WPA2/WPA3 Personal"])
  {
    v2 = 80;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2/WPA3 Personal"])
  {
    v2 = 84;
  }

  else if ([v1 isEqualToString:@"WPA3 Personal"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"WPA Enterprise"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2 Enterprise"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"WPA2 Enterprise"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"WPA2/WPA3 Enterprise"])
  {
    v2 = 160;
  }

  else if ([v1 isEqualToString:@"WPA3 Enterprise"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"OWE Transition"])
  {
    v2 = 768;
  }

  else if ([v1 isEqualToString:@"OWE"])
  {
    v2 = 256;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED2F4(unint64_t a1)
{
  if (a1 >= 6)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", @"Unknown=", a1, v1];
  }

  else
  {
    v3 = qword_1E86E59B0[a1];
  }

  return v3;
}

uint64_t sub_1E0BED36C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"WEP-40 Shared Key"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WEP-104 Shared Key"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"WEP-40 Open"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"WEP-104 Open"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dynamic WEP"])
  {
    v2 = 5;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED470(unint64_t a1)
{
  if (a1 >= 3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", @"Unknown=", a1, v1];
  }

  else
  {
    v3 = qword_1E86E59E0[a1];
  }

  return v3;
}

uint64_t sub_1E0BED4E8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"WAPI PSK"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WAPI Cert"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1E0BED598(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unspecified"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WiFi Menu"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Network Prefs"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Preferred Networks List"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"WiFi Settings"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Ask to Join"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SetupAssistant"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"Cloud Sync"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"MCX Profile"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"Carrier Bundle"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"WiFi Password Sharing"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Tap to Setup"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"Sharing Silent Repair"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Guessing"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"System App"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"3rd Party App"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"Recommendation"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"Wallet"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"Nearby Sync"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"Nearby Recommendation"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"Accessory App"])
  {
    v2 = 18;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED85C(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_26;
  }

  if (![v3 isPasspoint])
  {
    v6 = sub_1E0BEDAE0(v3, v5);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 isPasspoint])
        {
          v15 = v7;
        }

        else
        {
          v15 = v8;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);
  }

  v6 = sub_1E0BEDAE0(v3, v7);
  if (!v6)
  {
    v6 = sub_1E0BEDAE0(v3, v8);
  }

  if (v6)
  {
LABEL_19:
    v16 = [v3 isPasspoint];
    if (v16 != [v6 isPasspoint])
    {
      v17 = CWFGetOSLog();
      if (v17)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = v6;
        v28 = 2114;
        v29 = v3;
        _os_log_send_and_compose_impl();
      }
    }
  }

LABEL_26:

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

id sub_1E0BEDAE0(void *a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v56 = 0;
    goto LABEL_79;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (!v7)
  {
    v56 = 0;
    goto LABEL_78;
  }

  v8 = *v75;
  v64 = v6;
  v61 = *v75;
  while (2)
  {
    v9 = 0;
    v62 = v7;
    do
    {
      if (*v75 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v74 + 1) + 8 * v9);
      if ([v10 isPasspoint] && !objc_msgSend(v3, "isPasspoint"))
      {
        goto LABEL_71;
      }

      v63 = v9;
      v69 = [v10 domainName];
      if (v69 && [v3 isPasspoint])
      {
        v11 = [v3 domainNameList];
        v12 = [v10 domainName];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          goto LABEL_76;
        }

        v14 = [v3 cellularNetworkInfo];
        v15 = [v10 cellularNetworkInfo];
        if ([v14 count] && objc_msgSend(v15, "count"))
        {
          v16 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          v17 = [MEMORY[0x1E695DFD8] setWithArray:v15];
          v18 = [v16 intersectsSet:v17];

          if (v18)
          {
            v19 = 1;
            v20 = @"MCC/MNCs";
LABEL_30:
            if (v19 && v20)
            {
              v31 = CWFGetOSLog();
              if (v31)
              {
                v32 = CWFGetOSLog();
              }

              else
              {
                v32 = MEMORY[0x1E69E9C10];
                v33 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v79 = 138543874;
                v80 = v20;
                v81 = 2114;
                v82 = v10;
                v83 = 2114;
                v84 = v3;
                LODWORD(v60) = 32;
                v59 = &v79;
                _os_log_send_and_compose_impl();
              }
            }

            if (v19)
            {
              goto LABEL_76;
            }

            goto LABEL_39;
          }

          v20 = @"MCC/MNCs";
        }

        else
        {
          v20 = 0;
        }

        v67 = v15;
        v21 = [v3 NAIRealmNameList];
        v22 = [v10 NAIRealmNameList];
        if ([v21 count] && objc_msgSend(v22, "count"))
        {
          v65 = v14;
          v23 = [MEMORY[0x1E695DFD8] setWithArray:v21];
          v24 = [MEMORY[0x1E695DFD8] setWithArray:v22];
          v25 = [v23 intersectsSet:v24];

          if (v25)
          {
            v19 = 1;
            v20 = @"NAI";
            v14 = v65;
LABEL_29:
            v15 = v67;
            goto LABEL_30;
          }

          v20 = @"NAI";
          v14 = v65;
        }

        else
        {
        }

        v26 = [v3 roamingConsortiumList];
        v27 = [v10 roamingConsortiumList];
        if ([v26 count] && objc_msgSend(v27, "count"))
        {
          v28 = [MEMORY[0x1E695DFD8] setWithArray:v26];
          [MEMORY[0x1E695DFD8] setWithArray:v27];
          v30 = v29 = v14;
          v19 = [v28 intersectsSet:v30];

          v14 = v29;
          v20 = @"RCOI";
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_29;
      }

LABEL_39:
      v34 = [v3 SSID];
      v35 = [v10 SSID];
      if ([v10 isProfileBased] && objc_msgSend(v10, "isEAP"))
      {
        v36 = [v3 isEAP];
      }

      else
      {
        v36 = 0;
      }

      if ([v34 length])
      {
        if ([v35 length])
        {
          if ([v34 isEqualToData:v35])
          {
            if ((v36 & 1) != 0 || (v37 = [v3 supportedSecurityTypes], v37 == objc_msgSend(v10, "effectiveSupportedSecurityTypes")) || (v38 = objc_msgSend(v3, "supportedSecurityTypes"), (objc_msgSend(v10, "effectiveSupportedSecurityTypes") & v38) != 0))
            {
              if ([v10 supportedSecurityTypes] != 256 && (objc_msgSend(v3, "supportedSecurityTypes") != 256 || (objc_msgSend(v3, "channel"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "is6GHz"), v40, (v41 & 1) != 0)) || (v39 = objc_msgSend(v3, "supportedSecurityTypes"), v39 == objc_msgSend(v10, "supportedSecurityTypes")))
              {
                if ([v10 supportedSecurityTypes] != 64 && (objc_msgSend(v3, "supportedSecurityTypes") != 64 || (objc_msgSend(v3, "channel"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "is6GHz"), v43, (v44 & 1) != 0)) || (v42 = objc_msgSend(v3, "supportedSecurityTypes"), v42 == objc_msgSend(v10, "supportedSecurityTypes")))
                {
                  if (![v10 isAmbiguousNetworkName])
                  {
LABEL_75:

LABEL_76:
                    v56 = v10;

                    goto LABEL_78;
                  }

                  v66 = v35;
                  v68 = v34;
                  v45 = v5;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v46 = [v10 BSSList];
                  v47 = [v46 countByEnumeratingWithState:&v70 objects:v78 count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v71;
                    while (2)
                    {
                      for (i = 0; i != v48; ++i)
                      {
                        if (*v71 != v49)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v51 = [*(*(&v70 + 1) + 8 * i) BSSID];
                        v52 = CWFCorrectEthernetAddressString(v51);
                        v53 = [v52 copy];

                        if (v53)
                        {
                          v54 = [v3 BSSID];
                          v55 = [v53 isEqualToString:v54];

                          if (v55)
                          {

                            v5 = v45;
                            v6 = v64;
                            v35 = v66;
                            v34 = v68;
                            goto LABEL_75;
                          }
                        }
                      }

                      v48 = [v46 countByEnumeratingWithState:&v70 objects:v78 count:16];
                      if (v48)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v5 = v45;
                  v6 = v64;
                  v35 = v66;
                  v34 = v68;
                }
              }
            }
          }
        }
      }

      v9 = v63;
LABEL_71:
      ++v9;
      v8 = v61;
    }

    while (v9 != v62);
    v7 = [v6 countByEnumeratingWithState:&v74 objects:v85 count:16];
    v56 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_78:

LABEL_79:
  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

__CFString *sub_1E0BEE210(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5AB0[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE280(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5AD0[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE2F0(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5D50[a1];
  }

  return v2;
}

void *sub_1E0BEE360(void *result)
{
  if (result)
  {
    v1 = [result lowercaseString];
    v2 = [&unk_1F5BB9AA8 containsObject:v1];

    return v2;
  }

  return result;
}

__CFString *sub_1E0BEE3AC(unsigned int a1)
{
  if (a1 < 9 && ((0x1DFu >> a1) & 1) != 0)
  {
    v2 = off_1E86E5DB0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  return v2;
}

__CFString *sub_1E0BEE42C(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5DF8[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE49C(uint64_t a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    v2 = off_1E86E5E38[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (0x%X)", a1];
  }

  return v2;
}

__CFString *sub_1E0BEE518(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%d)", a1];
  }

  else
  {
    v2 = off_1E86E5E80[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE588(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E86E5EC0[a1];
  }
}

__CFString *sub_1E0BEE5AC(int a1)
{
  if ((a1 - 1) > 6)
  {
    return @"none";
  }

  else
  {
    return off_1E86E5EE0[a1 - 1];
  }
}

__CFString *sub_1E0BEE5D4(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E696AD60] string];
    v3 = v2;
    if ((v1 & 4) != 0)
    {
      [v2 appendString:@"b/"];
      if ((v1 & 8) == 0)
      {
LABEL_4:
        if ((v1 & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 8) == 0)
    {
      goto LABEL_4;
    }

    [v3 appendString:@"g/"];
    if ((v1 & 2) == 0)
    {
LABEL_5:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 appendString:@"a/"];
    if ((v1 & 0x10) == 0)
    {
LABEL_6:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v3 appendString:@"n/"];
    if ((v1 & 0x80) == 0)
    {
LABEL_7:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 appendString:@"ac/"];
    if ((v1 & 0x100) == 0)
    {
LABEL_8:
      if ((v1 & 0x200) == 0)
      {
LABEL_10:
        if ([v3 length])
        {
          v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
        }

        else
        {
          v4 = @"?";
        }

        goto LABEL_22;
      }

LABEL_9:
      [v3 appendString:@"be/"];
      goto LABEL_10;
    }

LABEL_18:
    [v3 appendString:@"ax/"];
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = @"none";
LABEL_22:

  return v4;
}

void sub_1E0BEE70C()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7E3898;
  qword_1ED7E3898 = v0;

  [qword_1ED7E3898 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSS ZZZ"];
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [qword_1ED7E3898 setTimeZone:v2];

  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [qword_1ED7E3898 setLocale:v3];
}

__CFString *sub_1E0BEE7B4(uint64_t a1)
{
  if (a1 < 0xC && ((0xFF9u >> a1) & 1) != 0)
  {
    v2 = off_1E86E5F18[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%d)", a1];
  }

  return v2;
}

uint64_t CWFSecItemQueryPassword_0(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AEB0];
  v17 = *MEMORY[0x1E697B3A8];
  v18 = v3;
  v4 = *MEMORY[0x1E697AEB8];
  v20 = MEMORY[0x1E695E118];
  v21 = v4;
  cf = 0;
  v19 = *MEMORY[0x1E697B318];
  v22 = MEMORY[0x1E695E118];
  v5 = MEMORY[0x1E695DF20];
  v6 = a1;
  v7 = [v5 dictionaryWithObjects:&v20 forKeys:&v17 count:3];
  if ([v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [v7 mutableCopy];
    [v9 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v9 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    [v9 setObject:v10 forKeyedSubscript:{*MEMORY[0x1E697AC30], cf, v17, v18, v19, v20, v21, v22, v23}];
    v11 = SecItemCopyMatching(v9, &cf);
  }

  else
  {
    v11 = 4294967246;
  }

  v12 = cf;
  if (a2 && cf)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    *a2 = [v13 initWithData:cf encoding:4];
    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1E0BEE9FC(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v7;
  v10 = v9;
  if (!v8)
  {
    v13 = 4294967246;
    goto LABEL_32;
  }

  if (!v9)
  {
    v14 = *MEMORY[0x1E697AEB0];
    v38 = *MEMORY[0x1E697B3A8];
    v39 = v14;
    v15 = *MEMORY[0x1E697AEB8];
    v42 = MEMORY[0x1E695E118];
    v43 = v15;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v38 count:2];
    if (![(__CFString *)v8 length])
    {
      v13 = 4294967246;
      goto LABEL_31;
    }

    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    v17 = [v12 mutableCopy];
    [(__CFString *)v17 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [(__CFString *)v17 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    [(__CFString *)v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    v13 = SecItemDelete(v17);
    goto LABEL_29;
  }

  v35 = 0;
  CWFSecItemQueryPassword_0(v8, &v35);
  v11 = v35;
  v12 = v11;
  if (!v11)
  {
    v19 = *MEMORY[0x1E697ABD0];
    v38 = *MEMORY[0x1E697B3A8];
    v39 = v19;
    v42 = MEMORY[0x1E695E118];
    v43 = @"apple";
    v20 = *MEMORY[0x1E697ABD8];
    v40 = *MEMORY[0x1E697AEB0];
    v41 = v20;
    v21 = *MEMORY[0x1E697ABE0];
    v44 = MEMORY[0x1E695E118];
    v45 = v21;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v38 count:4];
    if (-[__CFString length](v8, "length") && [v10 length])
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      v22 = [v10 dataUsingEncoding:4];
      if ([v22 length])
      {
        v23 = [(__CFString *)v16 mutableCopy];
        [v23 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
        [v23 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
        if (v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v8;
        }

        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697AC30]];
        [v23 setObject:@"AirPort network password" forKeyedSubscript:*MEMORY[0x1E697ACE0]];
        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
        v13 = SecItemAdd(v23, 0);
LABEL_27:

LABEL_28:
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v22 = 0;
      v17 = 0;
    }

    v13 = 4294967246;
    goto LABEL_28;
  }

  if (([v11 isEqualToString:v10] & 1) == 0)
  {
    v16 = [v10 dataUsingEncoding:4];
    if (![(__CFString *)v16 length])
    {
      v13 = 4294967246;
      goto LABEL_30;
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    v25 = *MEMORY[0x1E697AEB0];
    v36[0] = *MEMORY[0x1E697B3A8];
    v36[1] = v25;
    v26 = *MEMORY[0x1E697AEB8];
    v37[0] = MEMORY[0x1E695E118];
    v37[1] = v26;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v27 = *MEMORY[0x1E697ADC8];
    v38 = *MEMORY[0x1E697B3C0];
    v39 = v27;
    if (v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v8;
    }

    v42 = v16;
    v43 = v28;
    v40 = *MEMORY[0x1E697ACE0];
    v44 = @"AirPort network password";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v38 count:3];
    if ([(__CFString *)v8 length])
    {
      v34 = v6;
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      v30 = [v22 mutableCopy];
      [v30 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      [v30 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v8;
      }

      [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x1E697AC30]];
      v13 = SecItemUpdate(v30, v23);

      v6 = v34;
    }

    else
    {
      v13 = 4294967246;
    }

    goto LABEL_27;
  }

  v13 = 0;
LABEL_31:

LABEL_32:
  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

__CFString *sub_1E0BEEF44(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x (%s)", a1, convertApple80211ReturnToString()];
  }

  else
  {
    v2 = @"0x0 (success)";
  }

  return v2;
}

uint64_t sub_1E0BEEFBC()
{
  v21 = *MEMORY[0x1E69E9840];
  if (sub_1E0BF2080())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v0 = qword_1ED7E3828;
    v19 = qword_1ED7E3828;
    if (!qword_1ED7E3828)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1E0BF21C4;
      v15[3] = &unk_1E86E5600;
      v15[4] = &v16;
      sub_1E0BF21C4(v15);
      v0 = v17[3];
    }

    v1 = v0;
    _Block_object_dispose(&v16, 8);
    v2 = [v0 sharedConnection];
    v3 = [v2 installedProfileIdentifiers];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v20 count:16];
    if (v5)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (v8 && ([v8 isEqual:{@"com.apple.defaults.managed.corecapture.wifi.megawifi", v11}] & 1) != 0)
          {
            v5 = 1;
            goto LABEL_16;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1E0BEF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BEF1AC(size_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = v6 - ((MEMORY[0x1EEE9AC00](a1) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:a1];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

__CFString *sub_1E0BEF284(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5F78[a1];
  }

  return v2;
}

__CFString *sub_1E0BEF2F4(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E86E5FA8[a1 - 1];
  }
}

uint64_t sub_1E0BEF318(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"off"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"rotating"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"static"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1E0BEF394(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    v18 = 0;
    v13 = 0;
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v13 = 0;
  if (v10 && v11)
  {
    if (v9)
    {
      v13 = [v9 SSID];
      if ([v9 isPasspoint])
      {
        v14 = [v9 domainName];
        v15 = [v14 dataUsingEncoding:4];

        v13 = v15;
      }

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = ether_aton([v10 UTF8String]);
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E695DF88] data];
      [v18 appendData:v11];
      v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:6];
      [v18 appendData:v19];

      if (v13)
      {
        [v18 appendData:v13];
      }

      if (v12)
      {
        [v18 appendData:v12];
      }

      *md = 0u;
      v33 = 0u;
      memset(&c, 0, sizeof(c));
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));
      CC_SHA256_Final(md, &c);
      v29 = *md;
      v30 = *&md[4];
      LOBYTE(v29) = md[0] & 0xFC | 2;
      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v29 length:6];
      v21 = CWFEthernetAddressStringFromData(v20);

      goto LABEL_16;
    }
  }

LABEL_18:
  v26 = *MEMORY[0x1E696A798];
  v27 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v22 = CWFErrorWithDescription(v26, 22, v27);

  v21 = 0;
  if (a5 && v22)
  {
    v28 = v22;
    v21 = 0;
    v18 = 0;
    *a5 = v22;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  v23 = v21;

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

void *sub_1E0BEF670(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 SSID];
  if ([v5 isPasspoint])
  {
    v9 = [v5 domainName];
    v10 = [v9 dataUsingEncoding:4];

    v8 = v10;
  }

  if (v8 && (CWFEthernetAddressDataFromString(v7), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [MEMORY[0x1E695DF88] data];
    [v13 appendData:v12];
    [v13 appendData:v8];
    *md = 0u;
    v24 = 0u;
    memset(&v22, 0, sizeof(v22));
    CC_SHA256_Init(&v22);
    CC_SHA256_Update(&v22, [v13 bytes], objc_msgSend(v13, "length"));
    CC_SHA256_Final(md, &v22);
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v15 = 0;
  }

  else
  {
LABEL_9:
    v19 = *MEMORY[0x1E696A798];
    v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v15 = CWFErrorWithDescription(v19, 22, v20);

    v13 = 0;
    if (a3 && v15)
    {
      v21 = v15;
      v13 = 0;
      v12 = 0;
      v14 = 0;
      *a3 = v15;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }
  }

  v16 = v14;

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL sub_1E0BEF890(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  memset(v27, 0, sizeof(v27));
  if (!v3 || !v4)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v15 = v13;
    v16 = 22;
LABEL_11:
    v10 = CWFErrorWithDescription(v15, v16, v14);

    goto LABEL_8;
  }

  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v17 = *MEMORY[0x1E696A798];
    v18 = *__error();
    v19 = __error();
    v14 = CWFErrorDescription(v17, *v19);
    v15 = v17;
    v16 = v18;
    goto LABEL_11;
  }

  v7 = v6;
  if (([v5 getCString:v27 maxLength:16 encoding:4] & 1) == 0)
  {
    v20 = *MEMORY[0x1E696A798];
    v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v22 = v20;
    v23 = 6;
LABEL_14:
    v10 = CWFErrorWithDescription(v22, v23, v21);

    goto LABEL_7;
  }

  v27[16] = 32;
  v8 = [v3 bytes];
  v9 = v8[1];
  *&v27[17] = *v8;
  *&v27[33] = v9;
  if (ioctl(v7, 0xC03169D2uLL, v27))
  {
    v24 = *MEMORY[0x1E696A798];
    v25 = *__error();
    v26 = __error();
    v21 = CWFErrorDescription(v24, *v26);
    v22 = v24;
    v23 = v25;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_7:
  close(v7);
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

id sub_1E0BEFAA0(int a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AA80];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x36 && a1)
  {
    v13 = [v9 SSID];
    v14 = MEMORY[0x1E696AEB0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1E0BF2394;
    v43[3] = &unk_1E86E5660;
    v44 = v13;
    v15 = v13;
    v16 = [v14 sortDescriptorWithKey:0 ascending:0 comparator:v43];
    [v11 addObject:v16];
    [v11 addObject:v12];
    v17 = MEMORY[0x1E696AEB0];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E0BF2500;
    v41[3] = &unk_1E86E5660;
    v42 = v9;
    v18 = [v17 sortDescriptorWithKey:0 ascending:0 comparator:v41];
    [v11 addObject:v18];
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AAA0];
    [v11 addObject:v19];
  }

  else if (a2)
  {
    [v11 addObject:v12];
  }

  if (v10)
  {
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:v10];
    [v11 addObject:v20];
  }

  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AAC0];
      [v11 addObject:v21];
    }

    v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AAE0];
    [v11 addObject:v22];
    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareLowDataModes_];
    [v11 addObject:v23];
  }

  v37 = v12;
  v38 = v10;
  v36 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB00];
  [v11 addObject:?];
  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB20];
  [v11 addObject:v24];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedPHYModes_];
  [v11 addObject:v25];
  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8AB40];
  [v11 addObject:v26];
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB60];
  [v11 addObject:v27];
  if (a1)
  {
    v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 selector:sel_compareSupportedSecurityTypes_];
    [v11 addObject:v28];
  }

  v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
  [v11 addObject:v29];
  v30 = MEMORY[0x1E696AEB0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1E0BF304C;
  v39[3] = &unk_1E86E5660;
  v40 = v9;
  v31 = v9;
  v32 = [v30 sortDescriptorWithKey:0 ascending:0 comparator:v39];
  [v11 addObject:v32];
  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
  [v11 addObject:v33];
  v34 = [v11 copy];

  return v34;
}

id sub_1E0BEFFE8(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  result = 0;
  if ([v3 length] && (v4 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v3, 4)) != 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    [v6 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v6 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v6 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
    v7 = SecItemCopyMatching(v6, &result);
    if (v7)
    {
      v19 = *MEMORY[0x1E696A768];
      v20 = v7;
      v21 = CWFErrorDescription(*MEMORY[0x1E696A768], v7);
      v9 = CWFErrorWithDescription(v19, v20, v21);

      v8 = 0;
    }

    else
    {
      v22 = 0;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:&v22];
      v9 = v22;
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A798];
    v18 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v17, 22, v18);

    v8 = 0;
    v6 = 0;
    v5 = 0;
  }

  if (result)
  {
    CFRelease(result);
  }

  if (v9)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 redactedForWiFi];
      v24 = 136447234;
      v25 = "CWFGetCaptivePortalAuthenticationCredentials";
      v26 = 2082;
      v27 = "CWFUtilInternal.m";
      v28 = 1024;
      v29 = 7550;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v9;
      _os_log_send_and_compose_impl();
    }

    if (a2)
    {
      v14 = v9;
      *a2 = v9;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t sub_1E0BF0324(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v5 length] && (v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v5, 4)) != 0)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    v10 = *MEMORY[0x1E697ABD0];
    [v9 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v9 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    if (v6)
    {
      v58 = 0;
      v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v58];
      v12 = v58;
      if (!v11)
      {
        goto LABEL_37;
      }

      v13 = sub_1E0BEFFE8(v5, 0);
      v14 = v13;
      if (v13)
      {
        if (v13 == v6 || ([v13 isEqual:v6] & 1) != 0)
        {
          v15 = CWFGetOSLog();
          if (v15)
          {
            v16 = CWFGetOSLog();
          }

          else
          {
            v16 = MEMORY[0x1E69E9C10];
            v25 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v26 = [v8 redactedForWiFi];
            v59 = 136446978;
            v60 = "CWFSetCaptivePortalAuthenticationCredentials";
            v61 = 2082;
            v62 = "CWFUtilInternal.m";
            v63 = 1024;
            v64 = 7602;
            v65 = 2112;
            v66 = v26;
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          v56 = a3;
          v16 = [MEMORY[0x1E695DF90] dictionary];
          [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
          v23 = CWFGetOSLog();
          if (v23)
          {
            v24 = CWFGetOSLog();
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
            v34 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v35 = [v8 redactedForWiFi];
            v59 = 136446978;
            v60 = "CWFSetCaptivePortalAuthenticationCredentials";
            v61 = 2082;
            v62 = "CWFUtilInternal.m";
            v63 = 1024;
            v64 = 7595;
            v65 = 2112;
            v66 = v35;
            _os_log_send_and_compose_impl();
          }

          v36 = SecItemUpdate(v9, v16);
          if (v36)
          {
            v50 = *MEMORY[0x1E696A768];
            v51 = v36;
            v52 = CWFErrorDescription(*MEMORY[0x1E696A768], v36);
            v53 = v51;
            v54 = v52;
            v55 = CWFErrorWithDescription(v50, v53, v52);

            v12 = v55;
          }

          a3 = v56;
        }
      }

      else
      {
        [v9 setObject:@"apple" forKeyedSubscript:v10];
        [v9 setObject:*MEMORY[0x1E697ABE0] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
        [v9 setObject:@"Captive portal credentials" forKeyedSubscript:*MEMORY[0x1E697ACE0]];
        [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
        v19 = CWFGetOSLog();
        if (v19)
        {
          v20 = CWFGetOSLog();
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v28 = [v8 redactedForWiFi];
          v59 = 136446978;
          v60 = "CWFSetCaptivePortalAuthenticationCredentials";
          v61 = 2082;
          v62 = "CWFUtilInternal.m";
          v63 = 1024;
          v64 = 7613;
          v65 = 2112;
          v66 = v28;
          _os_log_send_and_compose_impl();
        }

        v29 = SecItemAdd(v9, 0);
        if (!v29)
        {
          goto LABEL_36;
        }

        v30 = *MEMORY[0x1E696A768];
        v57 = a3;
        v31 = v29;
        v16 = CWFErrorDescription(*MEMORY[0x1E696A768], v29);
        v32 = v31;
        a3 = v57;
        v33 = CWFErrorWithDescription(v30, v32, v16);

        v12 = v33;
      }

LABEL_36:
      goto LABEL_37;
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      [v8 redactedForWiFi];
      v59 = 136446978;
      v60 = "CWFSetCaptivePortalAuthenticationCredentials";
      v61 = 2082;
      v62 = "CWFUtilInternal.m";
      v63 = 1024;
      v64 = 7621;
      v66 = v65 = 2112;
      _os_log_send_and_compose_impl();
    }

    v22 = SecItemDelete(v9);
    if (!v22)
    {
      v11 = 0;
      v12 = 0;
LABEL_40:
      v39 = 1;
      goto LABEL_47;
    }

    v47 = *MEMORY[0x1E696A768];
    v48 = v22;
    v49 = CWFErrorDescription(*MEMORY[0x1E696A768], v22);
    v12 = CWFErrorWithDescription(v47, v48, v49);

    v11 = 0;
  }

  else
  {
    v45 = *MEMORY[0x1E696A798];
    v46 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = CWFErrorWithDescription(v45, 22, v46);

    v11 = 0;
    v9 = 0;
    v8 = 0;
  }

LABEL_37:
  if (!v12)
  {
    goto LABEL_40;
  }

  v37 = CWFGetOSLog();
  if (v37)
  {
    v38 = CWFGetOSLog();
  }

  else
  {
    v38 = MEMORY[0x1E69E9C10];
    v40 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v41 = [v8 redactedForWiFi];
    v59 = 136447234;
    v60 = "CWFSetCaptivePortalAuthenticationCredentials";
    v61 = 2082;
    v62 = "CWFUtilInternal.m";
    v63 = 1024;
    v64 = 7631;
    v65 = 2112;
    v66 = v41;
    v67 = 2112;
    v68 = v12;
    _os_log_send_and_compose_impl();
  }

  if (a3)
  {
    v42 = v12;
    v39 = 0;
    *a3 = v12;
  }

  else
  {
    v39 = 0;
  }

LABEL_47:

  v43 = *MEMORY[0x1E69E9840];
  return v39;
}

id sub_1E0BF0B7C()
{
  v65 = *MEMORY[0x1E69E9840];
  result = 0;
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = *MEMORY[0x1E697AFF8];
  v45 = *MEMORY[0x1E697AFF8];
  v46 = *MEMORY[0x1E697B008];
  [v1 setObject:? forKeyedSubscript:?];
  v44 = *MEMORY[0x1E697ABD0];
  [v1 setObject:@"apple" forKeyedSubscript:?];
  v43 = *MEMORY[0x1E697AE88];
  [v1 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:?];
  [v1 setObject:*MEMORY[0x1E697B268] forKeyedSubscript:*MEMORY[0x1E697B260]];
  [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B310]];
  v3 = SecItemCopyMatching(v1, &result);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    Count = result;
    if (result)
    {
      Count = CFArrayGetCount(result);
    }

    v55 = 136447234;
    v56 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
    v57 = 2082;
    v58 = "CWFUtilInternal.m";
    v59 = 1024;
    v60 = 7663;
    v61 = 2048;
    v62 = Count;
    v63 = 1024;
    v64 = v3;
    LODWORD(v39) = 44;
    v38 = &v55;
    _os_log_send_and_compose_impl();
  }

  v40 = v1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = 120.0;
    }

    else
    {
      v8 = 604800.0;
    }
  }

  else
  {
    v8 = 604800.0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = result;
  v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_41;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v50;
  v48 = *MEMORY[0x1E697AC30];
  v13 = *MEMORY[0x1E697ACD0];
  v41 = *MEMORY[0x1E697ACD0];
  v42 = v0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v50 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v49 + 1) + 8 * i);
      v16 = [v15 objectForKeyedSubscript:{v48, v38, v39}];
      v17 = [v15 objectForKeyedSubscript:v13];
      [v17 timeIntervalSinceDate:v0];
      v19 = v18;
      [v17 timeIntervalSinceDate:v0];
      if (v19 < 0.0)
      {
        v20 = -v20;
      }

      if (v20 <= v8)
      {
        [v17 timeIntervalSinceReferenceDate];
        v25 = v24;
        [v11 timeIntervalSinceReferenceDate];
        if (v25 <= v26)
        {
          goto LABEL_37;
        }

        [v17 dateByAddingTimeInterval:v8];
        v11 = v27 = v11;
      }

      else
      {
        v21 = v11;
        v22 = CWFGetOSLog();
        if (v22)
        {
          v23 = CWFGetOSLog();
        }

        else
        {
          v23 = MEMORY[0x1E69E9C10];
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = [v16 redactedForWiFi];
          v55 = 136446978;
          v56 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
          v57 = 2082;
          v58 = "CWFUtilInternal.m";
          v59 = 1024;
          v60 = 7677;
          v61 = 2112;
          v62 = v29;
          LODWORD(v39) = 38;
          v38 = &v55;
          _os_log_send_and_compose_impl();
        }

        v27 = [MEMORY[0x1E695DF90] dictionary];
        [v27 setObject:v46 forKeyedSubscript:v45];
        [v27 setObject:@"apple" forKeyedSubscript:v44];
        [v27 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:v43];
        [v27 setObject:v16 forKeyedSubscript:v48];
        v30 = SecItemDelete(v27);
        if (v30)
        {
          v31 = v30;
          v32 = CWFGetOSLog();
          if (v32)
          {
            v33 = CWFGetOSLog();
          }

          else
          {
            v33 = MEMORY[0x1E69E9C10];
            v34 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v35 = [v16 redactedForWiFi];
            v55 = 136447234;
            v56 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
            v57 = 2082;
            v58 = "CWFUtilInternal.m";
            v59 = 1024;
            v60 = 7688;
            v61 = 2112;
            v62 = v35;
            v63 = 1024;
            v64 = v31;
            LODWORD(v39) = 44;
            v38 = &v55;
            _os_log_send_and_compose_impl();
          }
        }

        v11 = v21;
        v13 = v41;
        v0 = v42;
      }

LABEL_37:
    }

    v10 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  }

  while (v10);
LABEL_41:

  if (result)
  {
    CFRelease(result);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t sub_1E0BF11B4(void *a1)
{
  v1 = a1;
  if ([v1 isIBSS] & 1) != 0 || (objc_msgSend(v1, "scanRecord"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", @"APPLE_P2P_IE"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3) || (objc_msgSend(v1, "isFILSDiscoveryFrame"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 isAssociationDisallowed] ^ 1;
  }

  return v4;
}

uint64_t sub_1E0BF1240(void *a1)
{
  v1 = a1;
  if ([v1 isHotspot] & 1) != 0 || (objc_msgSend(v1, "isPersonalHotspot") & 1) != 0 || (objc_msgSend(v1, "isOpen") & 1) != 0 || (objc_msgSend(v1, "isOWE") & 1) != 0 || objc_msgSend(v1, "isPSK") && ((objc_msgSend(v1, "isWEP") & 1) != 0 || (objc_msgSend(v1, "isWPA")) || (objc_msgSend(v1, "hasTKIPCipher") & 1) != 0 || (objc_msgSend(v1, "hasWEP104Cipher"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasWEP40Cipher];
  }

  return v2;
}

BOOL sub_1E0BF12E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 SSID];
  if (v5)
  {
    v6 = [v4 SSID];
    if (v6)
    {
      v7 = [v3 SSID];
      v8 = [v4 SSID];
      if ([v7 isEqual:v8])
      {
        v9 = [v3 APMode];
        v10 = v9 == [v4 APMode];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1E0BF13EC(void *a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v72 = a2;
  v73 = a3;
  if (v73)
  {
    v6 = 4294967226;
  }

  else
  {
    v6 = 4294967216;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v8 = MEMORY[0x1E696AEB0];
  obja = sub_1E0BF1B5C(sub_1E0BF11B4);
  v77 = [v8 sortDescriptorWithKey:0 ascending:0 comparator:obja];
  v89[0] = v77;
  v9 = MEMORY[0x1E696AEB0];
  v10 = sub_1E0BF1B5C(sub_1E0BF1240);
  v11 = [v9 sortDescriptorWithKey:0 ascending:1 comparator:v10];
  v89[1] = v11;
  v12 = MEMORY[0x1E696AEB0];
  v13 = sub_1E0BF1BD8(&unk_1F5BB9E80);
  v14 = [v12 sortDescriptorWithKey:@"RSSI" ascending:0 comparator:v13];
  v89[2] = v14;
  v15 = MEMORY[0x1E696AEB0];
  v71 = v7;
  v16 = sub_1E0BF1BD8(v7);
  v17 = [v15 sortDescriptorWithKey:@"RSSI" ascending:0 comparator:v16];
  v89[3] = v17;
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel.is6GHz" ascending:1];
  v89[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  v20 = [v19 mutableCopy];

  v21 = sub_1E0BEFAA0(0, 0, 0, v73, 0);
  [v20 addObjectsFromArray:v21];

  if ([v72 mergeScanResults])
  {
    v22 = v5;
    v70 = v20;
    v75 = v20;
    v5 = [MEMORY[0x1E695DF70] array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v85 objects:v102 count:16];
    if (!v24)
    {
      goto LABEL_47;
    }

    v25 = v24;
    v26 = *v86;
    v74 = v23;
    v76 = *v86;
    while (1)
    {
      v27 = 0;
      v78 = v25;
      do
      {
        if (*v86 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v85 + 1) + 8 * v27);
        if (![v5 count])
        {
          goto LABEL_42;
        }

        v29 = 0;
        while (1)
        {
          v30 = [v5 objectAtIndexedSubscript:v29];
          if (sub_1E0BF12E8(v30, v28))
          {
            break;
          }

          if (++v29 >= [v5 count])
          {
            goto LABEL_42;
          }
        }

        v31 = [v28 channel];
        v32 = [v31 is6GHz];
        v33 = [v30 channel];
        v34 = [v33 is6GHz];

        if (v32 == v34)
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          obj = v75;
          v38 = [obj countByEnumeratingWithState:&v81 objects:&v98 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v82;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v82 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v81 + 1) + 8 * i);
                v43 = [v42 ascending];
                v44 = [v42 compareObject:v30 toObject:v28];
                if (v44)
                {
                  v45 = -1;
                  if (!v43)
                  {
                    v45 = 1;
                  }

                  v37 = v44 == v45;
                  goto LABEL_29;
                }
              }

              v39 = [obj countByEnumeratingWithState:&v81 objects:&v98 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }

            v37 = 1;
LABEL_29:
            v23 = v74;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v35 = [v28 channel];
          v36 = [v35 is6GHz];

          v37 = v36 ^ 1;
        }

        v46 = CWFGetOSLog();
        if (v46)
        {
          v47 = CWFGetOSLog();
        }

        else
        {
          v47 = MEMORY[0x1E69E9C10];
          v48 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v90 = 136446978;
          if (v37)
          {
            v49 = v30;
          }

          else
          {
            v49 = v28;
          }

          v91 = "CWFMergedScanResults";
          v92 = 2082;
          v93 = "CWFUtilInternal.m";
          v94 = 1024;
          v95 = 7762;
          v96 = 2114;
          v97 = v49;
          LODWORD(v69) = 38;
          v68 = &v90;
          _os_log_send_and_compose_impl();
        }

        if (v37)
        {
          [v5 removeObjectAtIndex:v29];

          v26 = v76;
          v25 = v78;
LABEL_42:
          [v5 addObject:{v28, v68, v69}];
          goto LABEL_43;
        }

        v26 = v76;
        v25 = v78;
LABEL_43:
        ++v27;
      }

      while (v27 != v25);
      v50 = [v23 countByEnumeratingWithState:&v85 objects:v102 count:16];
      v25 = v50;
      if (!v50)
      {
LABEL_47:

        v20 = v70;
        break;
      }
    }
  }

  v51 = [v5 sortedArrayUsingDescriptors:{v20, v68, v69}];

  v52 = v51;
  v53 = v72;
  if ([v53 includeBackgroundScanCacheResults])
  {
    v54 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F5BB99B8];
    v55 = [v53 includeProperties];

    v56 = 0x1E695D000;
    v57 = v20;
    if (v55)
    {
      v58 = [v53 includeProperties];
      [v54 intersectSet:v58];
    }
  }

  else
  {
    v57 = v20;
    v54 = [v53 includeProperties];
    v56 = 0x1E695D000uLL;
  }

  v59 = [*(v56 + 3952) arrayWithCapacity:{objc_msgSend(v52, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v60 = v52;
  v61 = [v60 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v99;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v99 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v98 + 1) + 8 * j) filteredScanResultWithProperties:v54];
        [v59 addObject:v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v98 objects:v102 count:16];
    }

    while (v62);
  }

  v66 = *MEMORY[0x1E69E9840];

  return v59;
}

id sub_1E0BF1B5C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0BF31A8;
  v3[3] = &unk_1E86E56C0;
  v3[4] = a1;
  v1 = MEMORY[0x1E12EA400](v3);

  return v1;
}

id sub_1E0BF1BD8(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BF3254;
  v5[3] = &unk_1E86E56E8;
  v6 = v1;
  v7 = 1;
  v2 = v1;
  v3 = MEMORY[0x1E12EA400](v5);

  return v3;
}

BOOL sub_1E0BF1C80(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setDay:1];
  v10 = [v8 dateByAddingComponents:v9 toDate:v5 options:0];
  v11 = [v8 components:28 fromDate:v10];
  [v11 setHour:a2];
  [v11 setMinute:0];
  [v11 setSecond:0];
  v12 = [v8 dateFromComponents:v11];
  v13 = [v12 compare:v6] == -1;

  objc_autoreleasePoolPop(v7);
  return v13;
}

void sub_1E0BF1DA8(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = MEMORY[0x1E695E000];
  v6 = a2;
  v7 = a1;
  v8 = [v5 standardUserDefaults];
  v9 = [v8 persistentDomainForName:v6];

  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    v11[2](v11, v10);
  }
}

__CFString *sub_1E0BF1E78(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5FF0[a1];
  }

  return v2;
}

uint64_t sub_1E0BF1EE8(void *a1)
{
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"approved"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 lowercaseString];
    v6 = [v5 isEqualToString:@"declined"];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_1E0BF1F78()
{
  if (qword_1ED7E38A8 != -1)
  {
    dispatch_once(&qword_1ED7E38A8, &unk_1F5B8AA60);
  }

  return byte_1ED7E3890;
}

void sub_1E0BF1FC0()
{
  v0 = MGGetBoolAnswer();
  byte_1ED7E3890 = v0;
  if (v0)
  {
    v1 = CWFGetOSLog();
    if (v1)
    {
      v2 = CWFGetOSLog();
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }
}

uint64_t sub_1E0BF2080()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3830)
  {
    qword_1ED7E3830 = _sl_dlopen();
  }

  result = qword_1ED7E3830;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0BF2150(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3830 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0BF21C4(void *a1)
{
  if (!sub_1E0BF2080())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v2 handleFailureInFunction:a1 file:@"CWFUtilInternal.m" lineNumber:114 description:{@"%s", 0}];

    __break(1u);
    free(v3);
  }

  *(*(a1[4] + 8) + 24) = objc_getClass("MCProfileConnection");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ED7E3828 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFUtilInternal.m" lineNumber:115 description:{@"Unable to find class %s", "MCProfileConnection"}];

    __break(1u);
  }
}

uint64_t sub_1E0BF230C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastJoinedByUserAt];
  v6 = [v4 lastJoinedByUserAt];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t sub_1E0BF2394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 SSID];
  if (v7 == v8)
  {
    v12 = 1;
  }

  else if (*(a1 + 32))
  {
    v9 = [v5 SSID];
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v5 SSID];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  v14 = [v6 SSID];
  if (v13 == v14)
  {
    v18 = 1;
  }

  else if (*(a1 + 32))
  {
    v15 = [v6 SSID];
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = [v6 SSID];
      v18 = [v16 isEqual:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 1;
  if (!v12)
  {
    v19 = -1;
  }

  if (v18 == v12)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

uint64_t sub_1E0BF2500(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 SSID];
  v7 = [v5 SSID];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  v9 = [v4 SSID];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 SSID];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 SSID];
      v14 = [v5 SSID];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v16 = 0;
      goto LABEL_27;
    }
  }

LABEL_10:
  v17 = [v4 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      v37 = [v4 BSSID];
      v21 = [v37 substringToIndex:2];
      v22 = [*(a1 + 32) BSSID];
      v23 = [v22 substringToIndex:2];
      v24 = [v21 isEqual:v23];

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = [v5 BSSID];
  v27 = [v26 substringToIndex:2];
  if (v27)
  {
    v28 = [*(a1 + 32) BSSID];
    v29 = [v28 substringToIndex:2];
    if (v29)
    {
      v38 = [v5 BSSID];
      v36 = [v38 substringToIndex:2];
      v30 = [*(a1 + 32) BSSID];
      [v30 substringToIndex:2];
      v32 = v31 = v25;
      v33 = [v36 isEqual:v32];

      v25 = v31;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  if (!v25)
  {
    v34 = -1;
  }

  if (v33 == v25)
  {
    v16 = 0;
  }

  else
  {
    v16 = v34;
  }

LABEL_27:

  return v16;
}

uint64_t sub_1E0BF27F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v28 = 0;
  v6 = [v4 SSID];
  v7 = [v5 SSID];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  v9 = [v4 SSID];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 SSID];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 SSID];
      v14 = [v5 SSID];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v16 = 0;
      goto LABEL_22;
    }
  }

LABEL_10:
  v17 = [v4 BSSID];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v18 = [MEMORY[0x1E696AE88] scannerWithString:v19];
    [v18 scanHexLongLong:&v28];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v5 BSSID];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v23 = [MEMORY[0x1E696AE88] scannerWithString:v22];

    [v23 scanHexLongLong:&v27];
    v24 = v27;

    v18 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = 1;
  if (v28 >= v24)
  {
    v25 = -1;
  }

  if (v28 == v24)
  {
    v16 = 0;
  }

  else
  {
    v16 = v25;
  }

LABEL_22:
  return v16;
}