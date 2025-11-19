uint64_t AirReflection::Node::node_as_StencilRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135170) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StencilRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StencilRet", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_SampleMaskRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135171) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SampleMaskRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SampleMaskRet", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ImageblockDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135172) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockDataRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = (a1 + v24);
    v26 = *v25;
    p_data = (v25 + v26 + 4);
    v28 = *(v25 + v26);
    v29 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v29 = c;
    v28 = 4;
  }

  CC_SHA256_Update(v29, p_data, v28);
  v30 = (a1 - *a1);
  if (*v30 >= 0x15u && (v31 = v30[10]) != 0)
  {
    v32 = (a1 + v31);
    v33 = *v32;
    v34 = (v32 + v33 + 4);
    v35 = *(v32 + v33);
    v36 = c;
  }

  else
  {
    data = 0;
    v34 = &data;
    v36 = c;
    v35 = 4;
  }

  return CC_SHA256_Update(v36, v34, v35);
}

uint64_t AirReflection::Node::node_as_AcceptIntersectionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 139264)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::AcceptIntersectionRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AcceptIntersectionRet", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ContinueSearchRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139265) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ContinueSearchRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ContinueSearchRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_DistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139266) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DistanceRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DistanceRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_MeshPrimitiveDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 143360)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshPrimitiveDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshPrimitiveDataRet", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_MeshVertexDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143361) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshVertexDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshVertexDataRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143362) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveCulledRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveCulledRet", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_PrimitiveIDRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143363) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveIDRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveIDRet", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_CIPointerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 147456)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::CIPointerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIPointerRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = *(a1 + v7);
  }

  else
  {
    v8 = 1;
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  return CC_SHA256_Update(v27, p_data, v26);
}

uint64_t AirReflection::Node::node_as_CIStructRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147457) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIStructRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIStructRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    v16 = *(a1 + v6);
    p_data = &v16;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  CC_SHA256_Update(c, p_data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v18 = 0;
    v12 = &v18;
    v14 = c;
    v13 = 4;
  }

  return CC_SHA256_Update(v14, v12, v13);
}

uint64_t AirReflection::Node::node_as_CITextureRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147458) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CITextureRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CITextureRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 < 7u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[3];
    if (v8)
    {
      LODWORD(v8) = *(a1 + v8);
    }
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (a1 + v10);
    v12 = *v11;
    p_data = (v11 + v12 + 4);
    v14 = *(v11 + v12);
    v15 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v15 = c;
    v14 = 4;
  }

  return CC_SHA256_Update(v15, p_data, v14);
}

uint64_t AirReflection::Node::node_as_CIBuiltinRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147459) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIBuiltinRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIBuiltinRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIMatrixRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147460) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIMatrixRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIMatrixRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CISamplerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147461) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CISamplerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CISamplerRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIImageblockRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147462) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIImageblockRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIImageblockRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_BufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x40000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::BufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BufferArg", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = *(a1 + v18);
  }

  else
  {
    v19 = 1;
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
  {
    v34 = (a1 + v33);
    v35 = *v34;
    p_data = (v34 + v35 + 4);
    v37 = *(v34 + v35);
    v38 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v38 = c;
    v37 = 4;
  }

  CC_SHA256_Update(v38, p_data, v37);
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = (v41 + v42 + 4);
    v44 = *(v41 + v42);
    v45 = c;
  }

  else
  {
    data = 0;
    v43 = &data;
    v45 = c;
    v44 = 4;
  }

  CC_SHA256_Update(v45, v43, v44);
  v46 = (a1 - *a1);
  if (*v46 < 0x1Du)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[14];
    if (v47)
    {
      LOBYTE(v47) = *(a1 + v47) != 0;
    }
  }

  LOBYTE(data) = v47;
  CC_SHA256_Update(c, &data, 1u);
  v48 = (a1 - *a1);
  if (*v48 >= 0x1Fu && (v49 = v48[15]) != 0)
  {
    v50 = v49;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v50);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_SamplerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262145) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SamplerArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SamplerArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_TextureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262146) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TextureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TextureArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262147) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ConstantArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  CC_SHA256_Update(v27, p_data, v26);
  v28 = (a1 - *a1);
  if (*v28 >= 0x13u && (v29 = v28[9]) != 0)
  {
    v30 = (a1 + v29);
    v31 = *v30;
    v32 = (v30 + v31 + 4);
    v33 = *(v30 + v31);
    v34 = c;
  }

  else
  {
    data = 0;
    v32 = &data;
    v34 = c;
    v33 = 4;
  }

  CC_SHA256_Update(v34, v32, v33);
  v35 = (a1 - *a1);
  if (*v35 < 0x15u)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v35[10];
    if (v36)
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  LOBYTE(data) = v36;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IndirectBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262148) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectBufferArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = *(a1 + v18);
  }

  else
  {
    v19 = 1;
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
  {
    v34 = (a1 + v33);
    v35 = *v34;
    p_data = (v34 + v35 + 4);
    v37 = *(v34 + v35);
    v38 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v38 = c;
    v37 = 4;
  }

  CC_SHA256_Update(v38, p_data, v37);
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = (v41 + v42 + 4);
    v44 = *(v41 + v42);
    v45 = c;
  }

  else
  {
    data = 0;
    v43 = &data;
    v45 = c;
    v44 = 4;
  }

  CC_SHA256_Update(v45, v43, v44);
  v46 = (a1 - *a1);
  if (*v46 < 0x1Du)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[14];
    if (v47)
    {
      LOBYTE(v47) = *(a1 + v47) != 0;
    }
  }

  LOBYTE(data) = v47;
  CC_SHA256_Update(c, &data, 1u);
  v48 = (a1 - *a1);
  if (*v48 >= 0x1Fu && (v49 = v48[15]) != 0)
  {
    v50 = v49;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v50);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IndirectConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262149) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectConstantArg", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_CommandBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262150) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CommandBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CommandBufferArg", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262151) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ComputePipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ComputePipelineStateArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262152) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderPipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderPipelineStateArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_VisibleFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262153) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunctionTableArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262154) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionTableArg", 0x2Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_InstanceAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262155) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceAccelerationStructureArg", 0x2Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262156) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveAccelerationStructureArg", 0x2Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_BufferStrideArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262157) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BufferStrideArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BufferStrideArg", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_DepthStencilStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262158) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthStencilStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthStencilStateArg", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_FunctionHandleArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262159) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionHandleArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionHandleArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_TensorArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262160) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TensorArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TensorArg", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 266240)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ThreadPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInGridArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266241) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerGridArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266242) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupPositionInGridArg", 0x2Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266243) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupsPerGridArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266244) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadPositionInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266245) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerThreadgroupArg", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266246) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchThreadsPerThreadgroupArg", 0x2Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266247) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadExecutionWidthArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266248) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadExecutionWidthArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadExecutionWidthArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266249) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266250) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridOriginArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridOriginArg", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridSizeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266251) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridSizeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridSizeArg", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266252) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInSimdgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInSimdgroupArg", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266253) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerSimdgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerSimdgroupArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SimdgroupIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266254) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SimdgroupIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SimdgroupIndexInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SimdgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266255) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SimdgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SimdgroupsPerThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchSimdgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266256) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchSimdgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchSimdgroupsPerThreadgroupArg", 0x31u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266257) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInQuadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInQuadgroupArg", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_QuadgroupIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266258) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::QuadgroupIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.QuadgroupIndexInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_QuadgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266259) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::QuadgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.QuadgroupsPerThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchQuadgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266260) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchQuadgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchQuadgroupsPerThreadgroupArg", 0x31u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_BaseInstanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 270336)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::BaseInstanceArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BaseInstanceArg", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_BaseVertexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270337) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BaseVertexArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BaseVertexArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_InstanceIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270338) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceIDArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_VertexIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270339) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexIDArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_VertexInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270340) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexInputArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexInputArg", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ControlPointIndexBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270341) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ControlPointIndexBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ControlPointIndexBufferArg", 0x28u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PatchIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270342) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PatchIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PatchIDArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PositionInPatchArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270343) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PositionInPatchArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PositionInPatchArg", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PatchInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270344) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PatchInputArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PatchInputArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ControlPointInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270345) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ControlPointInputArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ControlPointInputArg", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7 + *(a1 + v7));
    v16 = *v8;
    CC_SHA256_Update(c, &v16, 4u);
    v9 = *v8;
    if (v9)
    {
      v10 = (v8 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v11 = *v10++;
        v17 = v11;
        CC_SHA256_Update(c, &v17, 4u);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v18 = 0;
    CC_SHA256_Update(c, &v18, 4u);
  }

  v12 = (a1 - *a1);
  if (*v12 < 9u)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = v12[4];
    if (v13)
    {
      LOBYTE(v13) = *(a1 + v13) != 0;
    }
  }

  v19 = v13;
  return CC_SHA256_Update(c, &v19, 1u);
}

uint64_t AirReflection::Node::node_as_ControlPointField(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270346) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ControlPointField::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ControlPointField", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_AmplificationCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270350) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::AmplificationCountArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AmplificationCountArg", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_AmplificationIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270351) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::AmplificationIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AmplificationIDArg", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_FragmentInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 274432)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::FragmentInputArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FragmentInputArg", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    p_data = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, p_data, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v16 = (a1 - *a1);
  if (*v16 < 0xBu)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v16[5];
    if (v17)
    {
      LODWORD(v17) = *(a1 + v17);
    }
  }

  data = v17;
  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 < 0xDu)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[6];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = (a1 + v21);
    v23 = *v22;
    v24 = (v22 + v23 + 4);
    v25 = *(v22 + v23);
    v26 = c;
  }

  else
  {
    data = 0;
    v24 = &data;
    v26 = c;
    v25 = 4;
  }

  CC_SHA256_Update(v26, v24, v25);
  v27 = (a1 - *a1);
  if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
  {
    v29 = (a1 + v28);
    v30 = *v29;
    v31 = (v29 + v30 + 4);
    v32 = *(v29 + v30);
    v33 = c;
  }

  else
  {
    data = 0;
    v31 = &data;
    v33 = c;
    v32 = 4;
  }

  CC_SHA256_Update(v33, v31, v32);
  v34 = (a1 - *a1);
  if (*v34 < 0x13u)
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v35 = v34[9];
    if (v35)
    {
      LOBYTE(v35) = *(a1 + v35) != 0;
    }
  }

  LOBYTE(data) = v35;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_FrontFacingArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274433) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FrontFacingArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FrontFacingArg", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PositionArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274434) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PositionArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PositionArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  v6 = 1;
  CC_SHA256_Update(c, &data, 1u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u)
  {
    v8 = v7[3];
    if (v8)
    {
      v6 = *(a1 + v8);
    }
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(a1 + v10);
  }

  else
  {
    v11 = 3;
  }

  data = v11;
  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PointCoordArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274435) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PointCoordArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PointCoordArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_RenderTargetArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274436) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetArg", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274437) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetArrayIndexArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetArrayIndexArg", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SampleIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274438) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SampleIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SampleIDArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SampleMaskArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274439) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SampleMaskArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SampleMaskArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v26 = v7;
  CC_SHA256_Update(c, &v26, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v27 = 0;
    v12 = &v27;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v28 = 0;
    v19 = &v28;
    v21 = c;
    v20 = 4;
  }

  CC_SHA256_Update(v21, v19, v20);
  v22 = (a1 - *a1);
  if (*v22 < 0xDu)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v22[6];
    if (v23)
    {
      LOBYTE(v23) = *(a1 + v23) != 0;
    }
  }

  v29 = v23;
  return CC_SHA256_Update(c, &v29, 1u);
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274440) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ViewportArrayIndexArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ViewportArrayIndexArg", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_BarycentricCoordArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274445) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BarycentricCoordArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BarycentricCoordArg", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 < 9u)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LODWORD(v9) = *(a1 + v9);
    }
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
  {
    v12 = (a1 + v11);
    v13 = *v12;
    p_data = (v12 + v13 + 4);
    v15 = *(v12 + v13);
    v16 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v16 = c;
    v15 = 4;
  }

  CC_SHA256_Update(v16, p_data, v15);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 < 0xFu)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = v24[7];
    if (v25)
    {
      LOBYTE(v25) = *(a1 + v25) != 0;
    }
  }

  LOBYTE(data) = v25;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PrimitiveIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274446) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveIDArg", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PixelPositionInTileArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 278528)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::PixelPositionInTileArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PixelPositionInTileArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_PixelsPerTileArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278529) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PixelsPerTileArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PixelsPerTileArg", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_TileIndexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278530) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TileIndexArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TileIndexArg", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ImageblockArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278531) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LOBYTE(v13) = *(a1 + v13) != 0;
    }
  }

  LOBYTE(data) = v13;
  CC_SHA256_Update(c, &data, 1u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = (a1 + v21);
    v23 = *v22;
    p_data = (v22 + v23 + 4);
    v25 = *(v22 + v23);
    v26 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v26 = c;
    v25 = 4;
  }

  CC_SHA256_Update(v26, p_data, v25);
  v27 = (a1 - *a1);
  if (*v27 >= 0x13u && (v28 = v27[9]) != 0)
  {
    v29 = (a1 + v28);
    v30 = *v29;
    v31 = (v29 + v30 + 4);
    v32 = *(v29 + v30);
    v33 = c;
  }

  else
  {
    data = 0;
    v31 = &data;
    v33 = c;
    v32 = 4;
  }

  CC_SHA256_Update(v33, v31, v32);
  v34 = (a1 - *a1);
  if (*v34 < 0x15u)
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v35 = v34[10];
    if (v35)
    {
      LOBYTE(v35) = *(a1 + v35) != 0;
    }
  }

  LOBYTE(data) = v35;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ImageblockDataArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278532) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockDataArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockDataArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = (a1 + v24);
    v26 = *v25;
    p_data = (v25 + v26 + 4);
    v28 = *(v25 + v26);
    v29 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v29 = c;
    v28 = 4;
  }

  CC_SHA256_Update(v29, p_data, v28);
  v30 = (a1 - *a1);
  if (*v30 >= 0x15u && (v31 = v30[10]) != 0)
  {
    v32 = (a1 + v31);
    v33 = *v32;
    v34 = (v32 + v33 + 4);
    v35 = *(v32 + v33);
    v36 = c;
  }

  else
  {
    data = 0;
    v34 = &data;
    v36 = c;
    v35 = 4;
  }

  CC_SHA256_Update(v36, v34, v35);
  v37 = (a1 - *a1);
  if (*v37 < 0x17u)
  {
    LOBYTE(v38) = 0;
  }

  else
  {
    v38 = v37[11];
    if (v38)
    {
      LOBYTE(v38) = *(a1 + v38) != 0;
    }
  }

  LOBYTE(data) = v38;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PayloadArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 282624)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::PayloadArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PayloadArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    p_data = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v21 = c;
    v20 = 4;
  }

  CC_SHA256_Update(v21, p_data, v20);
  v22 = (a1 - *a1);
  if (*v22 >= 0xFu && (v23 = v22[7]) != 0)
  {
    v24 = (a1 + v23);
    v25 = *v24;
    v26 = (v24 + v25 + 4);
    v27 = *(v24 + v25);
    v28 = c;
  }

  else
  {
    data = 0;
    v26 = &data;
    v28 = c;
    v27 = 4;
  }

  CC_SHA256_Update(v28, v26, v27);
  v29 = (a1 - *a1);
  if (*v29 < 0x11u)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v29[8];
    if (v30)
    {
      LOBYTE(v30) = *(a1 + v30) != 0;
    }
  }

  LOBYTE(data) = v30;
  CC_SHA256_Update(c, &data, 1u);
  v31 = (a1 - *a1);
  if (*v31 >= 0x13u && (v32 = v31[9]) != 0)
  {
    v33 = v32;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v33);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_OriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282625) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::OriginArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.OriginArg", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DirectionArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282626) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DirectionArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DirectionArg", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_MinDistanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282627) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MinDistanceArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MinDistanceArg", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_MaxDistanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282628) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MaxDistanceArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MaxDistanceArg", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DistanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282629) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DistanceArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DistanceArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_WorldSpaceOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282630) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorldSpaceOriginArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorldSpaceOriginArg", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}