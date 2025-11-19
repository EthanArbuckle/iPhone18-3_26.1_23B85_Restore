uint64_t AirReflection::Node::node_as_RG11B10FType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532515) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RG11B10FType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RG11B10FType", 0x1Au);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_RGB9E5Type(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532516) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGB9E5Type::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGB9E5Type", 0x18u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_CommandBufferType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532517) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CommandBufferType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CommandBufferType", 0x1Fu);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532518) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ComputePipelineStateType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ComputePipelineStateType", 0x26u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532519) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderPipelineStateType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderPipelineStateType", 0x25u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_InterpolantType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532520) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InterpolantType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InterpolantType", 0x1Du);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 < 0xBu)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LOBYTE(v15) = *(a1 + v15) != 0;
    }
  }

  LOBYTE(data) = v15;
  CC_SHA256_Update(c, &data, 1u);
  v16 = (a1 - *a1);
  if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
  {
    v18 = v17;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v18);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VisibleFunctionTableType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532521) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunctionTableType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunctionTableType", 0x26u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532522) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionTableType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionTableType", 0x2Bu);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 < 0xBu)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LOBYTE(v15) = *(a1 + v15) != 0;
    }
  }

  LOBYTE(data) = v15;
  CC_SHA256_Update(c, &data, 1u);
  v16 = (a1 - *a1);
  if (*v16 < 0xDu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[6];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 < 0xFu)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v18[7];
    if (v19)
    {
      LOBYTE(v19) = *(a1 + v19) != 0;
    }
  }

  LOBYTE(data) = v19;
  CC_SHA256_Update(c, &data, 1u);
  v20 = (a1 - *a1);
  if (*v20 < 0x11u)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[8];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  LOBYTE(data) = v21;
  CC_SHA256_Update(c, &data, 1u);
  v22 = (a1 - *a1);
  if (*v22 < 0x13u)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v22[9];
    if (v23)
    {
      LOBYTE(v23) = *(a1 + v23) != 0;
    }
  }

  LOBYTE(data) = v23;
  CC_SHA256_Update(c, &data, 1u);
  v24 = (a1 - *a1);
  if (*v24 < 0x15u)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = v24[10];
    if (v25)
    {
      LOBYTE(v25) = *(a1 + v25) != 0;
    }
  }

  LOBYTE(data) = v25;
  CC_SHA256_Update(c, &data, 1u);
  v26 = (a1 - *a1);
  if (*v26 < 0x17u)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[11];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  CC_SHA256_Update(c, &data, 1u);
  v28 = (a1 - *a1);
  if (*v28 < 0x19u)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = v28[12];
    if (v29)
    {
      LODWORD(v29) = *(a1 + v29);
    }
  }

  data = v29;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_AccelerationStructureType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532523) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::AccelerationStructureType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AccelerationStructureType", 0x27u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 < 0xBu)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LOBYTE(v15) = *(a1 + v15) != 0;
    }
  }

  LOBYTE(data) = v15;
  CC_SHA256_Update(c, &data, 1u);
  v16 = (a1 - *a1);
  if (*v16 < 0xDu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[6];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 < 0xFu)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v18[7];
    if (v19)
    {
      LOBYTE(v19) = *(a1 + v19) != 0;
    }
  }

  LOBYTE(data) = v19;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_MeshType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532524) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshType", 0x16u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 < 0xFu)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20[7];
    if (v21)
    {
      LODWORD(v21) = *(a1 + v21);
    }
  }

  data = v21;
  CC_SHA256_Update(c, &data, 4u);
  v22 = (a1 - *a1);
  if (*v22 < 0x11u)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = v22[8];
    if (v23)
    {
      LODWORD(v23) = *(a1 + v23);
    }
  }

  data = v23;
  CC_SHA256_Update(c, &data, 4u);
  v24 = (a1 - *a1);
  if (*v24 < 0x13u)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = v24[9];
    if (v25)
    {
      LODWORD(v25) = *(a1 + v25);
    }
  }

  data = v25;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshGridPropertiesType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532525) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshGridPropertiesType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshGridPropertiesType", 0x24u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_VertexValueType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532527) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexValueType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexValueType", 0x1Du);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_DepthStencilStateType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532528) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthStencilStateType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthStencilStateType", 0x23u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_FunctionHandleType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532529) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionHandleType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionHandleType", 0x20u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionHandleType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532530) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionHandleType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionHandleType", 0x2Cu);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 < 0xBu)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LOBYTE(v15) = *(a1 + v15) != 0;
    }
  }

  LOBYTE(data) = v15;
  CC_SHA256_Update(c, &data, 1u);
  v16 = (a1 - *a1);
  if (*v16 < 0xDu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[6];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 < 0xFu)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[7];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 < 0x11u)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[8];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  LOBYTE(data) = v21;
  CC_SHA256_Update(c, &data, 1u);
  v22 = (a1 - *a1);
  if (*v22 < 0x13u)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v22[9];
    if (v23)
    {
      LOBYTE(v23) = *(a1 + v23) != 0;
    }
  }

  LOBYTE(data) = v23;
  CC_SHA256_Update(c, &data, 1u);
  v24 = (a1 - *a1);
  if (*v24 < 0x15u)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = v24[10];
    if (v25)
    {
      LOBYTE(v25) = *(a1 + v25) != 0;
    }
  }

  LOBYTE(data) = v25;
  CC_SHA256_Update(c, &data, 1u);
  v26 = (a1 - *a1);
  if (*v26 < 0x17u)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[11];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  CC_SHA256_Update(c, &data, 1u);
  v28 = (a1 - *a1);
  if (*v28 < 0x19u)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v28[12];
    if (v29)
    {
      LOBYTE(v29) = *(a1 + v29) != 0;
    }
  }

  LOBYTE(data) = v29;
  CC_SHA256_Update(c, &data, 1u);
  v30 = (a1 - *a1);
  if (*v30 < 0x1Bu)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v30[13];
    if (v31)
    {
      LOBYTE(v31) = *(a1 + v31) != 0;
    }
  }

  LOBYTE(data) = v31;
  CC_SHA256_Update(c, &data, 1u);
  v32 = (a1 - *a1);
  if (*v32 < 0x1Du)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = v32[14];
    if (v33)
    {
      LOBYTE(v33) = *(a1 + v33) != 0;
    }
  }

  LOBYTE(data) = v33;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ExtentsType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532531) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ExtentsType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ExtentsType", 0x19u);
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

  LODWORD(data) = v5;
  CC_SHA256_Update(c, &data, 4u);
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

  LODWORD(data) = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    LODWORD(data) = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = v10 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        LODWORD(data) = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    LODWORD(data) = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    LODWORD(data) = *(a1 + v16);
  }

  else
  {
    LODWORD(data) = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    LODWORD(data) = *v19;
    result = CC_SHA256_Update(c, &data, 4u);
    v21 = *v19;
    if (v21)
    {
      v22 = (v19 + 1);
      do
      {
        v23 = *v22++;
        data = v23;
        result = CC_SHA256_Update(c, &data, 8u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    LODWORD(data) = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_TensorType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532532) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TensorType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TensorType", 0x18u);
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
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 < 0xFu)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20[7];
    if (v21)
    {
      LODWORD(v21) = *(a1 + v21);
    }
  }

  data = v21;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_AddressSpaceTypeQual(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 536576)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::AddressSpaceTypeQual::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AddressSpaceTypeQual", 0x22u);
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
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_ClipDistanceAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 540672)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_FunctionConstantPredicateAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540673) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionConstantPredicateAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionConstantPredicateAttr", 0x2Bu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {

    return AirReflection::BoolValue::HashImpl(a1 + v5, c);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_LocationIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540674) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::LocationIndexAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LocationIndexAttr", 0x1Fu);
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
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_PointSizeAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540675) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540676) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540677) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveIDAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540678) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderTargetAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540679) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetAttr", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540680) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540681) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_UserAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540682) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserAttr", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_InvariantAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540683) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SharedAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540684) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshEmulationValueGroup(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 544768)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshEmulation::ValueGroup::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.ValueGroup", 0x26u);
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
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 < 0xDu)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v13[6];
    if (v14)
    {
      LODWORD(v14) = *(a1 + v14);
    }
  }

  data = v14;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationBlock(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544769) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::Block::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.Block", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
    data = *v6;
    result = CC_SHA256_Update(c, &data, 4u);
    v8 = *v6;
    if (v8)
    {
      v9 = (v6 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v10 = *v9++;
        v12 = v10;
        result = CC_SHA256_Update(c, &v12, 4u);
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v13 = 0;
    return CC_SHA256_Update(c, &v13, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshLayout(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544770) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshLayout::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshLayout", 0x26u);
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
  if (*v10 < 0xBu)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = v10[5];
    if (v11)
    {
      LODWORD(v11) = *(a1 + v11);
    }
  }

  data = v11;
  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xDu && (v13 = v12[6]) != 0)
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
  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshKernel(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544771) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshKernel::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshKernel", 0x26u);
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
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshVertex(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544772) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshVertex::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshVertex", 0x26u);
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
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationObjectKernel(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544773) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::ObjectKernel::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.ObjectKernel", 0x28u);
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
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationFragmentAnalysisResult(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544774) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::FragmentAnalysisResult::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.FragmentAnalysisResult", 0x32u);
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
    v13 = (a1 + v12 + *(a1 + v12));
    v20 = *v13;
    result = CC_SHA256_Update(c, &v20, 4u);
    v15 = *v13;
    if (v15)
    {
      v16 = v13 + 1;
      v17 = v13 + 1;
      do
      {
        v18 = *v17++;
        result = CC_SHA256_Update(c, v16 + v18 + 4, *(v16 + v18));
        v16 = v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v21 = 0;
    return CC_SHA256_Update(c, &v21, 4u);
  }

  return result;
}

uint64_t AirReflection::StitchingInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StitchingInfo", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (a1 + v8 + *(a1 + v8));
    data = *v9;
    result = CC_SHA256_Update(c, &data, 4u);
    v11 = *v9;
    if (v11)
    {
      v12 = (v9 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        result = CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::StructTypeInfoField::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StructTypeInfoField", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
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
  if (*v9 < 9u)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = v9[4];
    if (v10)
    {
      LODWORD(v10) = *(a1 + v10);
    }
  }

  data = v10;
  CC_SHA256_Update(c, &data, 4u);
  v11 = (a1 - *a1);
  if (*v11 < 0xBu)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[5];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    p_data = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, p_data, v18);
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
  if (*v34 >= 0x13u && (v35 = v34[9]) != 0)
  {
    v36 = v35;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v36);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v37 = (a1 - *a1);
  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
  {
    v39 = v38;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v39);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v40 = (a1 - *a1);
  if (*v40 >= 0x17u && (v41 = v40[11]) != 0)
  {
    v42 = v41;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v42);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v43 = (a1 - *a1);
  if (*v43 >= 0x19u && (v44 = v43[12]) != 0)
  {
    v45 = v44;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v45);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v46 = (a1 - *a1);
  if (*v46 >= 0x1Bu && (v47 = v46[13]) != 0)
  {
    v48 = v47;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v48);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::BitfieldInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BitfieldInfo", 0x1Au);
  data = *a1;
  CC_SHA256_Update(c, &data, 4u);
  v6 = a1[1];
  CC_SHA256_Update(c, &v6, 4u);
  v7 = a1[2];
  return CC_SHA256_Update(c, &v7, 4u);
}

uint64_t AirReflection::BoolValue::HashImpl(_BYTE *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BoolValue", 0x17u);
  data = *a1 != 0;
  return CC_SHA256_Update(c, &data, 1u);
}

void sub_257A27A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(void *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t MTLAddVertexFetchingToModulePass::convertAttributeToType(uint64_t a1, llvm::Type **a2, uint64_t a3, uint64_t a4, int a5, llvm::Value *ShuffleVector, unsigned int a7, int a8)
{
  v144 = *MEMORY[0x277D85DE8];
  v8 = &(&vertexFormats)[2 * a7];
  v9 = *(v8 + 5);
  if (!*(v8 + 5))
  {
    goto LABEL_152;
  }

  v16 = *(a4 + 8);
  if (v16 == 16)
  {
    v17 = **(a4 + 16);
    v18 = *(v17 + 24);
LABEL_8:
    v19 = *(v17 + 32);
    goto LABEL_10;
  }

  v18 = a4;
  if ((v16 & 0xFE) == 0x12)
  {
    v18 = **(a4 + 16);
  }

  if (v16 == 18)
  {
    v17 = a4;
    goto LABEL_8;
  }

  v19 = 1;
LABEL_10:
  v20 = *(v8 + 3);
  v135 = v19;
  if (v19 >= v9)
  {
    v19 = *(v8 + 5);
  }

  v21 = v18;
  v134 = v19;
  if (v19 != 1)
  {
    v21 = vectorTypeGet(v18);
  }

  v130 = a2;
  if (v20 > 0xF)
  {
    goto LABEL_27;
  }

  if (((1 << v20) & 0xF000) != 0)
  {
    goto LABEL_33;
  }

  if (((1 << v20) & 0x30) == 0)
  {
    if (((1 << v20) & 0x300) != 0)
    {
      v22 = *ShuffleVector;
      if (!*ShuffleVector || *(v22 + 8) != 18 || *(v22 + 32) != 4)
      {
        v23 = *a2;
        v24 = a3;
        v25 = ShuffleVector;
        v26 = v21;
        v27 = 4;
LABEL_26:
        v30 = expandVector(v23, v24, v25, v27);
        v21 = v26;
        ShuffleVector = v30;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

LABEL_27:
    v31 = *ShuffleVector;
    v32 = 1;
    v128 = v21;
    if (*ShuffleVector && *(v31 + 8) == 18)
    {
      v32 = *(v31 + 32);
    }

    if (v134 < v32)
    {
      ShuffleVector = MTLFrameworkPass::truncateVector(*a2, a3, ShuffleVector, v134);
    }

    v21 = v128;
    goto LABEL_33;
  }

  if ((*(*ShuffleVector + 8) & 0xFE) != 0x12)
  {
    v23 = *a2;
    v24 = a3;
    v25 = ShuffleVector;
    v26 = v21;
    v27 = 2;
    goto LABEL_26;
  }

  if (*(*ShuffleVector + 32) == 3)
  {
    v28 = v21;
    v29 = llvm::UndefValue::get();
    v140[0] = xmmword_257A6DD80;
    v143 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, v29, v140, 4, __str);
    v21 = v28;
  }

LABEL_33:
  v33 = *(a3 + 64);
  v34 = v18[8];
  if (!v18[8])
  {
    goto LABEL_36;
  }

  if (v34 == 13)
  {
    v36 = *ShuffleVector;
    v37 = 1;
    v38 = v21;
    if (*ShuffleVector && *(v36 + 8) == 18)
    {
      v37 = *(v36 + 32);
    }

    if (v134 < v37)
    {
      ShuffleVector = MTLFrameworkPass::truncateVector(*(a3 + 64), a3, ShuffleVector, v134);
    }

    if (v20 > 6)
    {
      if (v20 <= 8)
      {
        v39 = v135;
        if (v20 != 7)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            goto LABEL_136;
          }

LABEL_104:
          v141 = 257;
          SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc(a3, ShuffleVector, v38, v140);
          goto LABEL_158;
        }
      }

      else
      {
        v39 = v135;
        if (v20 != 11)
        {
          if (v20 == 10)
          {
LABEL_133:
            if ((a5 & 1) == 0 && (*(a1 + 8) & 1) == 0)
            {
              MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to an unsigned integer type", *v8);
              goto LABEL_152;
            }

            goto LABEL_104;
          }

          if (v20 != 9 || (*(a1 + 8) & 1) == 0)
          {
            goto LABEL_136;
          }

LABEL_72:
          v141 = 257;
          SExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a3, ShuffleVector, v38, v140);
          goto LABEL_158;
        }
      }
    }

    else
    {
      if (v20 <= 2)
      {
        v39 = v135;
        if (v20 < 2)
        {
          if (*(a1 + 8) == 1)
          {
            if (v18 == llvm::Type::getInt32Ty(v33, a2) || v18 == llvm::Type::getInt16Ty(v33, v40) || v18 == llvm::Type::getInt1Ty(v33, v41))
            {
              if (v134 < 2)
              {
                snprintf(__str, 0x40uLL, "air.convert.%s.%s.f.%s");
              }

              else
              {
                snprintf(__str, 0x40uLL, "air.convert.%s.v%d%s.f.v%d%s");
              }

              SExtOrTrunc = callUnpackFunction(v130, a3, __str, v38, ShuffleVector);
              goto LABEL_158;
            }

            MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to int%d or uint%d", *v8, v135, v135);
LABEL_152:
            InsertValue = 0;
            goto LABEL_205;
          }

LABEL_136:
          MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to int%d or uint%d", *v8, v39, v39);
          goto LABEL_152;
        }

        if (v20 != 2)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v39 = v135;
      if (v20 != 3)
      {
        if (v20 != 6)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }
    }

    if (a5 && (*(a1 + 8) & 1) == 0)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to a signed integer type", *v8);
      goto LABEL_152;
    }

    goto LABEL_72;
  }

  if (v34 != 2)
  {
    MTLCompilerErrorObject::setErrorMessage(*a1, "Unsupported attribute type");
    goto LABEL_152;
  }

LABEL_36:
  if (v20 > 5)
  {
    if (v20 <= 0xF)
    {
      if (((1 << v20) & 0xC00) != 0)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          if (v34 == 2)
          {
            v91 = "float";
          }

          else
          {
            v91 = "half";
          }

          goto LABEL_142;
        }

        v68 = v21;
        if (v134 < 2)
        {
          snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i32");
        }

        else
        {
          snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di32");
        }

        goto LABEL_138;
      }

      if (((1 << v20) & 0x3000) != 0)
      {
        if (v18[8])
        {
          v69 = "f32";
        }

        else
        {
          v69 = "f16";
        }

        v70 = 115;
        if (v20 == 13)
        {
          v70 = 117;
        }

        snprintf(__str, 0x40uLL, "air.unpack.%cnorm.rgb10a2.v4%s", v70, v69);
        v71 = vectorTypeGet(v18);
        v72 = callUnpackFunction(v130, a3, __str, v71, ShuffleVector);
        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v72, v134);
        goto LABEL_158;
      }

      if (((1 << v20) & 0xC000) != 0)
      {
        if (v18[8])
        {
          v42 = "f32";
        }

        else
        {
          v42 = "f16";
        }

        v43 = "rgb9e5";
        if (v20 == 14)
        {
          v43 = "rg11b10f";
        }

        snprintf(__str, 0x40uLL, "air.unpack.unorm.%s.v3%s", v43, v42);
        v44 = vectorTypeGet(v18);
        v45 = callUnpackFunction(v130, a3, __str, v44, ShuffleVector);
        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v45, v134);
        goto LABEL_158;
      }
    }

    if ((v20 - 6) >= 2)
    {
      if ((v20 - 8) < 2)
      {
        Int32Ty = llvm::Type::getInt32Ty(*(a3 + 64), a2);
        v141 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a3, 49, ShuffleVector, Int32Ty, v140);
        v48 = "air.unpack.snorm4x8.v4f16";
        if (v20 == 9)
        {
          v48 = "air.unpack.unorm4x8.v4f16";
        }

        v49 = "air.unpack.unorm4x8.v4f32";
        if (v20 != 9)
        {
          v49 = "air.unpack.snorm4x8.v4f32";
        }

        if (v18[8])
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        v51 = vectorTypeGet(v18);
        v52 = callUnpackFunction(v130, a3, v50, v51, Cast);
        if (a7 == 42)
        {
          v138 = xmmword_257A6DDA0;
          v141 = 257;
          v52 = llvm::IRBuilderBase::CreateShuffleVector(a3, v52, v52, &v138, 4, v140);
        }

        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v52, v134);
        goto LABEL_158;
      }

LABEL_147:
      if (v34 == 2)
      {
        v91 = "float";
      }

      else
      {
        v91 = "half";
      }

LABEL_142:
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to %s%d", *v8, v91, v135);
      goto LABEL_152;
    }

    v68 = v21;
    if (v134 < 2)
    {
      snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i8");
    }

    else
    {
      snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di8");
    }

LABEL_138:
    SExtOrTrunc = callUnpackFunction(v130, a3, __str, v68, ShuffleVector);
    goto LABEL_158;
  }

  if (v20 > 3)
  {
    if (a8)
    {
      v53 = "air.unpack.snorm2x16.v2f16";
      if (v20 == 5)
      {
        v53 = "air.unpack.unorm2x16.v2f16";
        v54 = "air.unpack.unorm2x16.v2f32";
      }

      else
      {
        v54 = "air.unpack.snorm2x16.v2f32";
      }

      if (v18[8])
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      v56 = ShuffleVector;
      if (v9 >= 3)
      {
        v56 = MTLFrameworkPass::truncateVector(*(a3 + 64), a3, ShuffleVector, 2);
      }

      v57 = llvm::Type::getInt32Ty(v33, a2);
      v141 = 257;
      v58 = llvm::IRBuilderBase::CreateCast(a3, 49, v56, v57, v140);
      v59 = vectorTypeGet(v18);
      v60 = callUnpackFunction(v130, a3, v55, v59, v58);
      if (v9 > 2)
      {
        v136 = 0x300000002;
        v141 = 257;
        v61 = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, ShuffleVector, &v136, 2, v140);
        v63 = llvm::Type::getInt32Ty(v33, v62);
        v141 = 257;
        v64 = llvm::IRBuilderBase::CreateCast(a3, 49, v61, v63, v140);
        v65 = vectorTypeGet(v18);
        v66 = callUnpackFunction(v130, a3, v55, v65, v64);
        v138 = xmmword_257A6DD80;
        v141 = 257;
        v60 = llvm::IRBuilderBase::CreateShuffleVector(a3, v60, v66, &v138, v9, v140);
      }

      SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v60, v134);
    }

    else
    {
      v73 = 2;
      if (v9 <= 2)
      {
        v74 = 2;
      }

      else
      {
        v74 = 4;
      }

      if (v9 > 2)
      {
        v73 = 4;
      }

      v75 = 115;
      if (v20 == 5)
      {
        v75 = 117;
      }

      snprintf(__str, 0x40uLL, "air.convert.f.v%df32.%c.v%di16", v73, v75, v73);
      llvm::Type::getFloatTy(*(a3 + 64), v76);
      v77 = qword_257A6DD90[v20 == 4];
      llvm::ConstantFP::get();
      v141 = 257;
      VectorSplat = llvm::IRBuilderBase::CreateVectorSplat();
      FloatTy = llvm::Type::getFloatTy(*(a3 + 64), v79);
      v81 = vectorTypeGet(FloatTy);
      v82 = callUnpackFunction(v130, a3, __str, v81, ShuffleVector);
      v83 = *(a3 + 96);
      v84 = *(a3 + 88);
      v127 = *(a3 + 100);
      v129 = *(a3 + 101);
      v132 = *(a3 + 102);
      *(a3 + 96) = -1;
      v141 = 257;
      FDiv = llvm::IRBuilderBase::CreateFDiv(a3, v82, VectorSplat, v140, 0);
      if (v20 == 4)
      {
        snprintf(__str, 0x40uLL, "air.fmax.v%df32", v74);
        llvm::Type::getFloatTy(*(a3 + 64), v86);
        v87 = v134;
        llvm::ConstantFP::get();
        v141 = 257;
        v88 = llvm::IRBuilderBase::CreateVectorSplat();
        *&v140[0] = FDiv;
        *(&v140[0] + 1) = v88;
        v89 = vectorTypeGet(v18);
        FDiv = MTLFrameworkPass::callFunction(v130, a3, __str, v89, v140, 2, 0);
      }

      else
      {
        v87 = v134;
      }

      if (!v18[8])
      {
        snprintf(__str, 0x40uLL, "air.convert.f.v%df16.f.v%df32", v74, v74);
        v92 = vectorTypeGet(v18);
        FDiv = callUnpackFunction(v130, a3, __str, v92, FDiv);
      }

      *(a3 + 96) = v83;
      *(a3 + 88) = v84;
      *(a3 + 100) = v127;
      *(a3 + 101) = v129;
      *(a3 + 102) = v132;
      SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, FDiv, v87);
    }

    goto LABEL_158;
  }

  if ((v20 - 2) < 2)
  {
    v67 = v21;
    if (v134 < 2)
    {
      snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i16");
    }

    else
    {
      snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di16");
    }

    SExtOrTrunc = callUnpackFunction(v130, a3, __str, v67, ShuffleVector);
    goto LABEL_158;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      if (v34 != 2)
      {
LABEL_159:
        v90 = v135;
        goto LABEL_160;
      }

      v141 = 257;
      SExtOrTrunc = llvm::IRBuilderBase::CreateFPExt(a3, ShuffleVector, v21, v140);
LABEL_158:
      ShuffleVector = SExtOrTrunc;
      goto LABEL_159;
    }

    goto LABEL_147;
  }

  v90 = v135;
  if (!v18[8])
  {
    v141 = 257;
    SExtOrTrunc = llvm::IRBuilderBase::CreateFPTrunc(a3, ShuffleVector, v21, v140);
    goto LABEL_158;
  }

LABEL_160:
  v94 = a4;
  if (v90 > v9)
  {
    if (v134 == 1)
    {
      v95 = 0;
      v138 = 0u;
      v139 = 0u;
      v96 = 8 * v90;
      do
      {
        if (v18[8] == 13)
        {
          v97 = llvm::ConstantInt::get();
        }

        else
        {
          v97 = llvm::ConstantFP::get();
        }

        *(&v138 + v95) = v97;
        v95 += 8;
      }

      while (v96 != v95);
      v98 = llvm::ConstantVector::get();
      llvm::Type::getInt32Ty(v33, v99);
      v100 = llvm::ConstantInt::get();
      v141 = 257;
      InsertElement = llvm::IRBuilderBase::CreateInsertElement(a3, v98, ShuffleVector, v100, v140, v101);
    }

    else
    {
      v103 = 0;
      v138 = 0u;
      v139 = 0u;
      if (v134 <= 1)
      {
        v104 = 1;
      }

      else
      {
        v104 = v134;
      }

      v105 = 8 * v104;
      do
      {
        if (v18[8] == 13)
        {
          v106 = llvm::ConstantInt::get();
        }

        else
        {
          v106 = llvm::ConstantFP::get();
        }

        *(&v138 + v103) = v106;
        v103 += 8;
      }

      while (v105 != v103);
      v107 = llvm::ConstantVector::get();
      v108 = vdupq_n_s64(v135 - 1);
      v109 = &v137;
      v110 = xmmword_257A6DA10;
      v111 = xmmword_257A6D000;
      v112 = 3;
      v113 = vdupq_n_s64(4uLL);
      do
      {
        v114 = vmovn_s64(vcgeq_u64(v108, v111));
        if (vuzp1_s16(v114, *v108.i8).u8[0])
        {
          v115 = v112 - 3;
          if (v112 - 3 >= v9)
          {
            v115 = v134 + 1;
          }

          *(v109 - 2) = v115;
        }

        if (vuzp1_s16(v114, *&v108).i8[2])
        {
          v116 = v112 - 2;
          if (v112 - 2 >= v9)
          {
            v116 = v134 + 1;
          }

          *(v109 - 1) = v116;
        }

        v117 = vmovn_s64(vcgeq_u64(v108, v110));
        if (vuzp1_s16(*&v108, v117).i32[1])
        {
          v118 = v112 - 1;
          if (v112 - 1 >= v9)
          {
            v118 = v134 + 1;
          }

          *v109 = v118;
        }

        if (vuzp1_s16(*&v108, v117).i8[6])
        {
          if (v112 == 3)
          {
            v119 = v134;
          }

          else
          {
            v119 = v134 + 1;
          }

          if (v112 < v9)
          {
            v119 = v112;
          }

          v109[1] = v119;
        }

        v110 = vaddq_s64(v110, v113);
        v111 = vaddq_s64(v111, v113);
        v112 += 4;
        v109 += 4;
      }

      while (v112 - ((v135 + 3) & 0xFFFFFFFC) != 3);
      v141 = 257;
      InsertElement = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, v107, &v136, v135, v140);
    }

    ShuffleVector = InsertElement;
    v94 = a4;
  }

  if (*(v94 + 8) == 16)
  {
    InsertValue = llvm::UndefValue::get();
    if (v135)
    {
      for (i = 0; i != v135; ++i)
      {
        llvm::Type::getInt32Ty(v33, v120);
        v122 = llvm::ConstantInt::get();
        v141 = 257;
        Element = llvm::IRBuilderBase::CreateExtractElement(a3, ShuffleVector, v122, v140, v123);
        LODWORD(v138) = 0;
        DWORD1(v138) = i;
        v141 = 257;
        InsertValue = llvm::IRBuilderBase::CreateInsertValue(a3, InsertValue, Element, &v138, 2, v140);
      }
    }
  }

  else
  {
    InsertValue = ShuffleVector;
  }

LABEL_205:
  v125 = *MEMORY[0x277D85DE8];
  return InsertValue;
}

void sub_257A28D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, uint64_t a18, char a19)
{
  *(v19 + 96) = v21;
  *(v19 + 88) = v20;
  *(v19 + 100) = a15;
  *(v19 + 101) = a17;
  *(v19 + 102) = a19;
  _Unwind_Resume(a1);
}

llvm::Value *expandVector(llvm::Type *a1, unsigned int **a2, llvm::Value *a3, unsigned int a4)
{
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v9 = *(*a3 + 8);
  if (*a3)
  {
    v10 = v9 == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v8 + 8);
  }

  else
  {
    v11 = 1;
  }

  if (v11 < a4)
  {
    if ((v9 & 0xFE) == 0x12)
    {
      v12 = llvm::UndefValue::get();
      v22 = xmmword_257A6DD80;
      v21 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a2, v5, v12, &v22, a4, v20);
    }

    else
    {
      vectorTypeGet(v8);
      v14 = llvm::UndefValue::get();
      llvm::Type::getInt32Ty(a1, v15);
      v16 = llvm::ConstantInt::get();
      v21 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateInsertElement(a2, v14, v5, v16, v20, v17);
    }

    v5 = ShuffleVector;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFPTrunc(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 45, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

uint64_t callUnpackFunction(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a5;
  if (__s)
  {
    strlen(__s);
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v10 = Function;
  }

  else
  {
    v18[1] = *a5;
    v11 = 1;
    v12 = llvm::FunctionType::get();
    HIBYTE(v17) = 1;
    if (*__s)
    {
      v16[0] = __s;
      v11 = 3;
    }

    LOBYTE(v17) = v11;
    v10 = llvm::Function::Create(v12, 0, v16, a1);
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    if (!v10)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = *(v10 + 24);
LABEL_9:
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a2, v13, v10, v18, 1, v16, 0);
  *(result + 18) = *(result + 18) & 0xFFFC | 1;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateFDiv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  result = llvm::IRBuilderBase::foldConstant(a1, 21, a2, a3, a4);
  if (!result)
  {
    v9 = llvm::BinaryOperator::Create();
    v10 = *(a1 + 96);
    v11 = llvm::IRBuilderBase::setFPAttrs(a1, v9, a5);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a4);
  }

  return result;
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 39;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

uint64_t getRequiredBuiltIns(uint64_t result, _BYTE *a2, int a3, unsigned int a4, BOOL *a5, _BYTE *a6, int a7)
{
  v7 = *result;
  v8 = *(*result + 5);
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
LABEL_7:
        LOBYTE(v8) = 2;
        goto LABEL_26;
      }

      if (a3 != 7)
      {
        if (a3 == 8)
        {
          *a2 = 1;
          goto LABEL_7;
        }

LABEL_16:
        abort();
      }

      *a2 = 1;
LABEL_24:
      if (v8 <= 1)
      {
        LOBYTE(v8) = 1;
      }

      goto LABEL_26;
    }

    if (a3 != 4)
    {
      goto LABEL_24;
    }

    v7[3] = 1;
    *a5 = a7 != 0;
    v7 = a6;
    goto LABEL_20;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7[1] = 1;
      if (a4 < 2)
      {
        goto LABEL_21;
      }

      v7 = (*result + 2);
    }

    else
    {
      v7 += 3;
    }

LABEL_20:
    *v7 = 1;
    goto LABEL_21;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  v7 = *result;
LABEL_26:
  v7[5] = v8;
  *(*result + 6) = v8;
  *(*result + 7) = v8;
  return result;
}

llvm::Value *loadPackedVector(unsigned int **a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = **(a3 + 16);
  v9 = *(v8 + 32);
  v10 = **(v8 + 16);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v10);
  vectorTypeGet(v10);
  InsertElement = llvm::UndefValue::get();
  llvm::Type::getInt32Ty(*a3, v13);
  if (v9)
  {
    v14 = 0;
    v15 = v9;
    LODWORD(v16) = (ScalarSizeInBits + 7) >> 3;
    if (v16 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v16;
    }

    v17 = __clz(v16) ^ 0x13F;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    do
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v28 = llvm::ConstantInt::get();
      v29 = llvm::ConstantInt::get();
      v30 = llvm::ConstantInt::get();
      v27 = 257;
      v19 = llvm::IRBuilderBase::CreateGEP(a1, a3, a2, &v28, 3, v26);
      v20 = *(v19 + 72);
      v27 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1, v20, v19, v18, 0, v26);
      v22 = llvm::ConstantInt::get();
      v27 = 257;
      InsertElement = llvm::IRBuilderBase::CreateInsertElement(a1, InsertElement, AlignedLoad, v22, v26, v23);
      ++v14;
    }

    while (v15 != v14);
  }

  v24 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

llvm::ArrayType *getTypeFromVertexAttribFormat(llvm::Type *this, llvm::LLVMContext *a2, void *a3, void *a4, int a5)
{
  switch(a2)
  {
    case 1:
    case 4:
    case 7:
    case 10:
      *a3 = 2;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      goto LABEL_37;
    case 2:
    case 5:
    case 8:
    case 11:
      *a3 = 3;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      if (!a5)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    case 3:
    case 6:
    case 9:
    case 12:
    case 42:
      *a3 = 4;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      goto LABEL_37;
    case 13:
    case 16:
    case 19:
    case 22:
      *a3 = 4;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      goto LABEL_37;
    case 14:
    case 17:
    case 20:
    case 23:
      *a3 = 6;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      if (!a5)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    case 15:
    case 18:
    case 21:
    case 24:
      *a3 = 8;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      goto LABEL_37;
    case 25:
      *a3 = 4;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      goto LABEL_37;
    case 26:
      *a3 = 6;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      FloatTy = result;
      if (a5)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    case 27:
      *a3 = 8;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      goto LABEL_37;
    case 28:
      *a3 = 4;
      *a4 = 4;

      return llvm::Type::getFloatTy(this, a2);
    case 29:
      *a3 = 8;
      *a4 = 4;
      result = llvm::Type::getFloatTy(this, a2);
      goto LABEL_37;
    case 30:
      *a3 = 12;
      *a4 = 4;
      FloatTy = llvm::Type::getFloatTy(this, a2);
LABEL_29:

      return getUnpackedVectorType(this, FloatTy, 3);
    case 31:
      *a3 = 16;
      *a4 = 4;
      result = llvm::Type::getFloatTy(this, a2);
      goto LABEL_37;
    case 32:
    case 36:
    case 40:
    case 41:
    case 43:
    case 44:
    case 54:
    case 55:
      *a3 = 4;
      *a4 = 4;

      return llvm::Type::getInt32Ty(this, a2);
    case 33:
    case 37:
      *a3 = 8;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
      goto LABEL_37;
    case 34:
    case 38:
      *a3 = 12;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
LABEL_19:
      llvm::ArrayType::get(result, 3);
      return llvm::StructType::get();
    case 35:
    case 39:
      *a3 = 16;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
      goto LABEL_37;
    case 45:
    case 46:
    case 47:
    case 48:
      *a3 = 1;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      if ((a5 & 1) == 0)
      {
        goto LABEL_37;
      }

      return result;
    case 49:
    case 50:
    case 51:
    case 52:
      *a3 = 2;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      if ((a5 & 1) == 0)
      {
        goto LABEL_37;
      }

      return result;
    case 53:
      *a3 = 2;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      if ((a5 & 1) == 0)
      {
LABEL_37:

        result = vectorTypeGet(result);
      }

      break;
    default:
      result = 0;
      *a3 = 0;
      *a4 = 0;
      break;
  }

  return result;
}

uint64_t updateMTLGLFragmentInputList(int a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    return (4 * (MTLDataTypeGetVectorDataType((a2 >> 5) & 0x3F, ((a2 >> 11) & 3) + 1) & 0x3F)) | ((a2 & 0x1F) << 8) | 0xFFFF8000;
  }

  return v2;
}

uint64_t MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(uint64_t a1, llvm::Type *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 *a7, uint64_t *a8, unsigned __int8 a9)
{
  v9 = a7;
  v86 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    LODWORD(v13) = *a7;
  }

  else
  {
    v13 = (a6[1] - *a6) >> 5;
  }

  v14 = v13;
  if (!v13)
  {
    goto LABEL_135;
  }

  v15 = 0;
  v73 = a7 + 1;
  v81 = 0u;
  v82 = 0u;
  v83 = 1065353216;
  do
  {
    while (!v9)
    {
      v19 = *a6 + 32 * v15;
      v20 = *(v19 + 16);
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v21 = *(v19 + 8);
      if (v20 >= 0x17)
      {
        __src = *(v19 + 8);
        operator new();
      }

      BYTE7(v85) = *(v19 + 16);
      if (v20)
      {
        memmove(&__dst, v21, v20);
      }

      v9 = a7;
      *(&__dst + v20) = 0;
      v22 = *(v19 + 24);
      v79[0] = &__dst;
      *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v81, &__dst) + 10) = v22;
      if (SBYTE7(v85) < 0)
      {
        operator delete(__dst);
      }

      if (++v15 == v14)
      {
        v24 = *(a4 + 8);
        goto LABEL_41;
      }
    }

    updated = updateMTLGLFragmentInputList(a9, v73[v15]);
    v17 = updated >> 2;
    if ((updated & 3) != 0)
    {
      if ((updated & 3) != 1)
      {
        abort();
      }

      __dst = 0uLL;
      *&v85 = 0;
      v18 = (updated >> 8) & 0x1F;
      if (v18 == 3)
      {
        std::string::basic_string[abi:ne200100]<0>(v79, "user(sec_front_color)");
        if (SBYTE7(v85) < 0)
        {
          operator delete(__dst);
        }

        __dst = *v79;
        *&v85 = v80;
        v79[0] = &__dst;
        *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v81, &__dst) + 10) = v17;
        std::string::basic_string[abi:ne200100]<0>(v79, "user(sec_back_color)");
        if (SBYTE7(v85) < 0)
        {
          operator delete(__dst);
        }
      }

      else
      {
        if (v18 != 2)
        {
LABEL_36:
          if ((SBYTE7(v85) & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          v23 = __dst;
          goto LABEL_38;
        }

        std::string::basic_string[abi:ne200100]<0>(v79, "user(front_color)");
        if (SBYTE7(v85) < 0)
        {
          operator delete(__dst);
        }

        __dst = *v79;
        *&v85 = v80;
        v79[0] = &__dst;
        *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v81, &__dst) + 10) = v17;
        std::string::basic_string[abi:ne200100]<0>(v79, "user(back_color)");
        if (SBYTE7(v85) < 0)
        {
          operator delete(__dst);
        }
      }

      __dst = *v79;
      *&v85 = v80;
      v79[0] = &__dst;
      *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v81, &__dst) + 10) = v17;
      goto LABEL_36;
    }

    __dst = 0u;
    v85 = 0u;
    if ((updated & 0xB800) == 0x800)
    {
      snprintf(&__dst, 0x1FuLL, "user(tex_coord%u)");
    }

    else
    {
      snprintf(&__dst, 0x1FuLL, "user(slot%u)");
    }

    std::string::basic_string[abi:ne200100]<0>(v79, &__dst);
    __p[0] = v79;
    *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v81, v79) + 10) = v17;
    if (SHIBYTE(v80) < 0)
    {
      v23 = v79[0];
LABEL_38:
      operator delete(v23);
    }

LABEL_39:
    ++v15;
  }

  while (v15 != v14);
  v24 = *(a4 + 8);
  std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::resize(a8, v24);
LABEL_41:
  std::vector<llvm::Type *>::vector[abi:ne200100](v79, v24);
  v25 = a2;
  if (!v24)
  {
    v44 = v82;
    if (!v82)
    {
      goto LABEL_132;
    }

    goto LABEL_76;
  }

  v26 = 0;
  v74 = 0;
  while (2)
  {
    v27 = *a8;
    v28 = *(a4 - 8 * *(a4 + 8) + 8 * v26);
    String = llvm::MDString::getString(*(v28 - 8 * *(v28 + 8)));
    v31 = a3;
    if (*(a3 + 8) == 16)
    {
      v31 = *(*(a3 + 16) + 8 * v26);
    }

    if (v30 == 17)
    {
      v32 = *String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865;
      if (v32 && *(String + 16) == 116)
      {
        v35 = llvm::MDString::getString(*(v28 - 8 * *(v28 + 8) + 8));
        if (v35)
        {
          v36 = v34;
          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v34 >= 0x17)
          {
            operator new();
          }

          BYTE7(v85) = v34;
          if (v34)
          {
            memmove(&__dst, v35, v34);
          }

          v25 = a2;
          *(&__dst + v36) = 0;
        }

        else
        {
          __dst = 0uLL;
          *&v85 = 0;
          v25 = a2;
        }

        v37 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>(&v81, &__dst);
        v38 = v37;
        if (SBYTE7(v85) < 0)
        {
          operator delete(__dst);
          if (!v38)
          {
            goto LABEL_71;
          }
        }

        else if (!v37)
        {
          goto LABEL_71;
        }

        if (v9)
        {
          v39 = *(v38 + 10);
          ComponentType = MTLDataTypeGetComponentType(v39);
          ComponentCount = MTLDataTypeGetComponentCount(v39);
          v42 = ComponentCount;
          LLVMVectorType = MTLFrameworkPass::getLLVMVectorType(a2, ComponentType, ComponentCount);
          if (LLVMVectorType != v31)
          {
            *(v27 + 2 * v26) = *(v27 + 2 * v26) & 0xFC00 | (2 * (ComponentType & 0x3F)) & 0x7F | ((v42 & 7) << 7) | 1;
            v74 = 1;
            v31 = LLVMVectorType;
          }
        }

        std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::erase(&v81, v38);
        v25 = a2;
      }
    }

LABEL_71:
    *(v79[0] + v26++) = v31;
    if (v24 != v26)
    {
      continue;
    }

    break;
  }

  v44 = v82;
  if (!v82)
  {
    if ((v74 & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_82;
  }

  do
  {
LABEL_76:
    if (*(v44 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v44[2], v44[3]);
    }

    else
    {
      __dst = *(v44 + 1);
      *&v85 = v44[4];
    }

    v45 = *(v44 + 10);
    DWORD2(v85) = v45;
    v46 = MTLDataTypeGetComponentType(v45);
    v47 = MTLDataTypeGetComponentCount(v45);
    __p[0] = MTLFrameworkPass::getLLVMVectorType(v25, v46, v47);
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v79, __p);
    if (SBYTE7(v85) < 0)
    {
      operator delete(__dst);
    }

    v44 = *v44;
  }

  while (v44);
LABEL_82:
  v75 = v79[1] - v79[0];
  std::vector<llvm::Metadata *>::vector[abi:ne200100](__p, (v79[1] - v79[0]) >> 3);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      Impl = *(a4 - 8 * *(a4 + 8) + 8 * i);
      if (v9)
      {
        v50 = *(*a8 + 2 * i);
        if (v50)
        {
          v51 = *(Impl + 8);
          std::vector<llvm::Metadata *>::vector[abi:ne200100](&__dst, v51);
          if (v51)
          {
            for (j = 0; j < v51; ++j)
            {
              v53 = *(Impl - 8 * *(Impl + 8) + 8 * j);
              if (!*v53)
              {
                v54 = llvm::MDString::getString(*(Impl - 8 * *(Impl + 8) + 8 * j));
                if (v55 == 17)
                {
                  v56 = *v54 == 0x5F6772612E726961 && *(v54 + 8) == 0x6D616E5F65707974;
                  if (v56 && *(v54 + 16) == 101)
                  {
                    *(__dst + 8 * j++) = v53;
                    if (j < v51)
                    {
                      ShaderTypeName = MTLDataTypeGetShaderTypeName((v50 >> 1) & 0x3F, (v50 >> 7) & 7);
                      if (ShaderTypeName)
                      {
                        strlen(ShaderTypeName);
                      }

                      v53 = llvm::MDString::get();
                    }
                  }
                }
              }

              *(__dst + 8 * j) = v53;
            }
          }

          v25 = a2;
          Impl = llvm::MDTuple::getImpl();
          v9 = a7;
          if (__dst)
          {
            *(&__dst + 1) = __dst;
            operator delete(__dst);
          }
        }
      }

      *(__p[0] + i) = Impl;
    }
  }

  for (k = v82; k; LODWORD(v24) = v24 + 1)
  {
    if (*(k + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, k[2], k[3]);
    }

    else
    {
      __dst = *(k + 1);
      *&v85 = k[4];
    }

    v60 = *(k + 10);
    DWORD2(v85) = v60;
    if (SBYTE7(v85) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, __dst, *(&__dst + 1));
    }

    else
    {
      *&v77.__r_.__value_.__l.__data_ = __dst;
      v77.__r_.__value_.__r.__words[2] = v85;
    }

    v61 = MTLDataTypeGetComponentType(v60);
    v62 = MTLDataTypeGetComponentCount(v60);
    if (v61 == 3 || v61 == 16)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v77;
    }

    else
    {
      v65 = v77.__r_.__value_.__r.__words[0];
    }

    VertexOutputMetadata = MTLFrameworkPass::createVertexOutputMetadata(v25, v65, v61, v62, 1, v64, 0xFFFFFFFFLL, 0);
    *(__p[0] + v24) = VertexOutputMetadata;
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v85) < 0)
    {
      operator delete(__dst);
    }

    k = *k;
  }

  *a5 = llvm::MDTuple::getImpl();
  if (v75 == 8)
  {
    a3 = *v79[0];
  }

  else
  {
    a3 = llvm::StructType::get();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_132:
  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&v81);
LABEL_135:
  v67 = *MEMORY[0x277D85DE8];
  return a3;
}

void std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::__append(a1, a2 - v2);
  }
}

llvm::Value *MTLAddVertexFetchingToModulePass::convertVertexShaderOutput(int a1, llvm::Type *a2, unsigned __int8 *a3, llvm::Constant *this, int a5, uint64_t *a6)
{
  if (*(this + 8) == 16)
  {
    NullValue = llvm::Constant::getNullValue(this, a2);
    if (a5)
    {
LABEL_3:
      v12 = 0;
      v13 = *a3;
      while (1)
      {
        Value = a3;
        if (*(v13 + 8) == 16)
        {
          v28 = v12;
          v27 = 257;
          Value = llvm::IRBuilderBase::CreateExtractValue(a2, a3, &v28, 1, v26);
        }

        v15 = *a6;
        if (a5 != (a6[1] - *a6) >> 1)
        {
          goto LABEL_36;
        }

        v16 = *(v15 + 2 * v12);
        if ((v16 & 1) == 0)
        {
          goto LABEL_36;
        }

        v17 = *Value;
        v18 = 1;
        if (*Value && *(v17 + 8) == 18)
        {
          v18 = *(v17 + 32);
        }

        v19 = *(a2 + 8);
        v20 = (v16 >> 7) & 7;
        if (v18 <= v20)
        {
          if (v18 >= v20)
          {
            goto LABEL_16;
          }

          v21 = expandVector(v19, a2, Value, v20);
        }

        else
        {
          v21 = MTLFrameworkPass::truncateVector(v19, a2, Value, v20);
        }

        Value = v21;
LABEL_16:
        v22 = this;
        if (*(this + 8) == 16)
        {
          v22 = *(*(this + 2) + 8 * v12);
        }

        if (*Value == v22)
        {
          goto LABEL_36;
        }

        v23 = (*(v15 + 2 * v12) >> 1) & 0x3F;
        if (v23 <= 0x20)
        {
          switch(v23)
          {
            case 3u:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateFPExt(a2, Value, v22, v26);
              break;
            case 0x10u:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateFPTrunc(a2, Value, v22, v26);
              break;
            case 0x1Du:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateSExtOrBitCast(a2, Value, v22, v26);
              break;
            default:
              goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (((*(v15 + 2 * v12) >> 1) & 0x3Fu) > 0x28)
        {
          if (v23 != 41)
          {
            if (v23 != 53)
            {
LABEL_43:
              abort();
            }

            goto LABEL_36;
          }
        }

        else
        {
          if (v23 == 33)
          {
            v27 = 257;
            FPExt = llvm::IRBuilderBase::CreateZExtOrBitCast(a2, Value, v22, v26);
            goto LABEL_35;
          }

          if (v23 != 37)
          {
            goto LABEL_43;
          }
        }

        v27 = 257;
        FPExt = llvm::IRBuilderBase::CreateCast(a2, 38, Value, v22, v26);
LABEL_35:
        Value = FPExt;
LABEL_36:
        if (*(this + 8) == 16)
        {
          v28 = v12;
          v27 = 257;
          Value = llvm::IRBuilderBase::CreateInsertValue(a2, NullValue, Value, &v28, 1, v26);
        }

        ++v12;
        NullValue = Value;
        if (a5 == v12)
        {
          return Value;
        }
      }
    }
  }

  else
  {
    NullValue = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  return NullValue;
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    SExtOrBitCast = llvm::CastInst::CreateSExtOrBitCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, SExtOrBitCast, a4);
  }

  a2 = (*(*this[9] + 296))(this[9]);
  if (a2)
  {
    v6 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    ZExtOrBitCast = llvm::CastInst::CreateZExtOrBitCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
  }

  a2 = (*(*this[9] + 288))(this[9]);
  if (a2)
  {
    v6 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

llvm::Module *MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(MTLCompilerErrorObject **a1, llvm::Type **this, int a3, unsigned __int16 *a4, unsigned __int16 *a5, int a6, unsigned __int8 a7, int a8, char a9, char a10, unsigned int a11, void *a12)
{
  v249[39] = *MEMORY[0x277D85DE8];
  v187 = *this;
  *&__p = "air.vertex";
  LOWORD(v237) = 259;
  v183 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &__p);
  if (NamedMetadata)
  {
    v163 = 0;
  }

  else
  {
    *&__p = "air.kernel";
    LOWORD(v237) = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v183, &__p);
    v163 = NamedMetadata != 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v178 = Operand;
  v15 = (Operand - 8 * *(Operand + 8));
  v171 = *(*v15 + 128);
  if (((a11 >> 7) & 1) == 0 || (a11 & 4) == 0 || v163 || a12[1] == *a12)
  {
    v164 = 0;
  }

  else
  {
    v16 = **(*(v171 + 3) + 16);
    v17 = v15[1];
    v159 = *(v17 + 8);
    __p = 0uLL;
    *&v236 = 0;
    *&v226 = 0;
    v164 = MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(Operand, v187, v16, v17, &v226, a12, 0, &__p, a7) != v16;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v18 = 0;
  v176 = 0;
  v19 = 0;
  if (a4)
  {
    v180 = 0;
    if (a3)
    {
      v176 = (a4 + a4[2]);
      v180 = (a4 + a4[3]);
      v20 = a4[1];
      v18 = (v20 >> 6) & 0x1F;
      v19 = v20 >> 11;
      if (v20 >= 0x800)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v180 = 0;
  }

  v167 = v18;
  v21 = *(v178 - 8 * *(v178 + 8) + 16);
  v22 = *(v21 + 8);
  if (*(v171 + 9))
  {
    llvm::Function::BuildLazyArguments(v171);
  }

  if (v22 >= 1)
  {
    v23 = *(v171 + 11);
    v24 = *(v21 - 8 * *(v21 + 8));
    DataLayout = llvm::Module::getDataLayout(v183);
    llvm::DataLayout::DataLayout(&__p, DataLayout);
    MTLArgumentData::MTLArgumentData(&v226);
  }

  v18 = v167;
  if (!v164)
  {
    goto LABEL_267;
  }

LABEL_22:
  v168 = v18;
  v26 = 0;
  if (v19)
  {
    v27 = v19;
    v28 = v180;
    do
    {
      v29 = *v28;
      v28 += 2;
      v30 = v29 & 0x1F;
      if (v30 > v26)
      {
        v26 = v30;
      }

      --v27;
    }

    while (v27);
  }

  v177 = v19;
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](__b, (v26 + 1));
  v31 = __b[0];
  memset(__b[0], 255, 4 * v26 + 4);
  if (v19)
  {
    v32 = 0;
    v33 = v19;
    v34 = v180;
    v35 = v168;
    do
    {
      v36 = *v34;
      v34 += 2;
      v31[v36 & 0x1F] = v32++;
    }

    while (v19 != v32);
  }

  else
  {
    v33 = 0;
    v35 = v168;
  }

  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v224, v33);
  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v223, v33);
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v222, v33);
  if (v19)
  {
    memset(v222[0], 255, 4 * v33);
  }

  std::vector<llvm::MDNode *>::vector[abi:ne200100](v221, v33);
  std::vector<llvm::Type *>::vector[abi:ne200100](v220, v33);
  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v219, v33);
  memset(v218, 0, sizeof(v218));
  std::vector<BOOL>::reserve(v218, *(v171 + 12));
  v216 = 0;
  __src = 0;
  v217 = 0;
  v213 = 0;
  v212 = 0;
  v214 = 0;
  v210 = 0;
  v209 = 0;
  v211 = 0;
  if (((a3 ^ 1) & (a11 >> 7)) == 1)
  {
    v37 = *(v171 + 12);
  }

  else
  {
    v37 = v35;
  }

  std::vector<MTLOpaqueObject *>::reserve(&v212, v37);
  std::vector<MTLOpaqueObject *>::reserve(&v209, (v214 - v212) >> 3);
  v207 = 0;
  v206 = 0;
  v38 = v35;
  v208 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v206, v35);
  if (v19)
  {
    v39 = 0;
    v40 = -1;
    v41 = v180;
    do
    {
      v42 = *v41;
      v41 += 2;
      v43 = v42 >> 10;
      if (v42 >> 10 == 43)
      {
        v44 = v39;
      }

      else
      {
        v44 = v40;
      }

      if (v43 != 44)
      {
        v40 = v44;
      }

      ++v39;
    }

    while (v33 != v39);
  }

  v204 = 0;
  v203 = 0;
  v205 = 0;
  std::vector<BuiltInInfo>::reserve(&v203, 0xAuLL);
  LOBYTE(__p) = -1;
  std::vector<signed char>::vector[abi:ne200100](v202, 10);
  std::vector<unsigned int>::vector[abi:ne200100](v201, *(v171 + 12));
  MTLFrameworkPass::getArgumentMetadataIndices(*(v178 - 8 * *(v178 + 8) + 16), v201);
  v173 = *(v178 - 8 * *(v178 + 8) + 16);
  v45 = *(v171 + 12);
  if (*(v171 + 9))
  {
    llvm::Function::BuildLazyArguments(v171);
  }

  v185 = v33;
  v172 = v35;
  if (v45 < 1)
  {
    v175 = 0;
    v56 = v176;
    v57 = v19;
  }

  else
  {
    v46 = 0;
    v175 = 0;
    v186 = 0;
    v181 = *(v171 + 3);
    v47 = *(v171 + 11);
    v179 = v45 & 0x7FFFFFFF;
    do
    {
      v229.__r_.__value_.__r.__words[0] = *(*(v181 + 16) + 8 * (v46 + 1));
      v48 = *(v201[0] + v46);
      v184 = v46 + 1;
      if (v48 != -1)
      {
        v49 = *(v173 - 8 * *(v173 + 8) + 8 * v48);
        v50 = llvm::Module::getDataLayout(v183);
        llvm::DataLayout::DataLayout(&__p, v50);
        MTLArgumentData::MTLArgumentData(&v226);
      }

      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back(v218, &__p);
      v51 = v186 - v175;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((v186 - v175) >> 2);
      v53 = v52 + 1;
      if (v52 + 1 > 0x1555555555555555)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v175 >> 2) > v53)
      {
        v53 = 0x5555555555555556 * (-v175 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v175 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v54 = 0x1555555555555555;
      }

      else
      {
        v54 = v53;
      }

      if (v54)
      {
        if (v54 <= 0x1555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v55 = 4 * ((v186 - v175) >> 2);
      *v55 = 0;
      *(v55 + 1) = 11;
      *(v55 + 4) = -1;
      *(v55 + 8) = 0;
      v186 = v55 + 12;
      memcpy((12 * v52 + 12 * (v51 / -12)), v175, v51);
      if (v175)
      {
        operator delete(v175);
      }

      v175 = 12 * v52 + 12 * (v51 / -12);
      v56 = v176;
      v47 += 40;
      ++v46;
      v57 = v177;
    }

    while (v184 != v179);
  }

  v174 = a11 & 0x20000;
  if (v168)
  {
    v58 = 0;
    v59 = v56 + 2;
    v60 = v38;
    do
    {
      if (!v174)
      {
        if (*v59 == -1)
        {
          v61 = 1;
        }

        else
        {
          v61 = (*v59 & 3) == 0;
          *v59;
        }

        if (!v61)
        {
          MTLCompilerErrorObject::setErrorMessage(*a1, "Buffer stride is not a multiple of 4 bytes.");
          v183 = 0;
          goto LABEL_235;
        }
      }

      if ((*(v59 - 1) & 0x1F) > v58)
      {
        v58 = *(v59 - 1) & 0x1F;
      }

      v59 += 2;
      --v60;
    }

    while (v60);
  }

  else
  {
    v58 = 0;
  }

  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v200, (v58 + 1));
  v62 = v200[0];
  memset(v200[0], 255, 4 * v58 + 4);
  if (v168)
  {
    v63 = 0;
    v64 = v56;
    do
    {
      v65 = *v64;
      v64 += 4;
      v62[v65 & 0x1F] = v63++;
    }

    while (v38 != v63);
  }

  memset(v199, 0, sizeof(v199));
  std::vector<std::vector<unsigned int>>::resize(v199, v38);
  if (!v57)
  {
LABEL_140:
    LODWORD(__p) = 0;
    std::vector<int>::vector[abi:ne200100](&v198, v172);
    memset(v196, 0, sizeof(v196));
    v197 = 1065353216;
    LOBYTE(__p) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&v195, 10);
    v194 = 0;
    v193 = 0;
    v190 = 0u;
    v191 = 0u;
    v192 = 1065353216;
    if (v168)
    {
      v89 = 0;
      v90 = (v176 + 2);
      v91 = 8;
      do
      {
        v92 = *(v199[0] + v91 - 8);
        v93 = *(v199[0] + v91);
        *&v226 = 0;
        if (v93 == v92)
        {
          *(v198 + v89) = -1;
        }

        else
        {
          if (*v90 == -1)
          {
            if (v174)
            {
              Int8Ty = llvm::Type::getInt8Ty(v187, v88);
            }

            else
            {
              Int8Ty = llvm::Type::getFloatTy(v187, v88);
            }

            v95 = 1;
          }

          else if (v174)
          {
            Int8Ty = llvm::Type::getInt8Ty(v187, v88);
            v95 = *v90;
          }

          else
          {
            Int8Ty = llvm::Type::getFloatTy(v187, v88);
            v95 = *v90 >> 2;
          }

          v230[0] = llvm::ArrayType::get(Int8Ty, v95);
          *&v236 = 0;
          __p = 0uLL;
          std::vector<llvm::Type *>::__init_with_size[abi:ne200100]<llvm::Type * const*,llvm::Type * const*>(&__p, v230, &v230[1], 1uLL);
          *&v226 = llvm::StructType::get();
          *(v90 - 2);
          v230[0] = llvm::PointerType::get();
          v96 = (v213 - v212) >> 3;
          *(v198 + v89) = v96;
          LODWORD(v229.__r_.__value_.__l.__data_) = v96;
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v196, &v229);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v212, v230);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v209, &v226);
          getRequiredBuiltIns(&v195, &v193, *(v90 - 2) >> 5, *(v90 - 1), &v194 + 1, &v194, a8);
          v97 = *(v90 - 2);
          MTLFrameworkPass::appendBufferMetadata(v187, &v206);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        v90 += 2;
        v91 += 24;
        v89 += 4;
      }

      while (4 * v172 != v89);
    }

    *&v98 = -1;
    *(&v98 + 1) = -1;
    v233 = v98;
    v234 = v98;
    v231 = v98;
    v232 = v98;
    *v230 = v98;
    Int32Ty = llvm::Type::getInt32Ty(v187, v88);
    llvm::Type::getInt64Ty(v187, v99);
    MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v203, v202, &v195);
    v102 = v203;
    v103 = v204;
    v104 = v187;
    if (v203 != v204)
    {
      do
      {
        *&__p = MTLFrameworkPass::getLLVMVectorType(v104, *(v102 + 1), v102[1]);
        v105 = MTLFrameworkPass::addBuiltInParameter(v104, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v102], &v212, &v206, __p, *(v102 + 1), v102[1]);
        if (v213 - v212 != v210 - v209)
        {
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v209, &__p);
        }

        v230[*v102] = v105;
        LODWORD(v226) = v105;
        v100 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v196, &v226);
        v102 += 8;
        v104 = v187;
      }

      while (v102 != v103);
    }

    if ((v194 & 0x100) != 0)
    {
      *&__p = 0;
      v106 = Int32Ty;
      if (a8 == 2)
      {
        Int32PtrTy = llvm::Type::getInt32PtrTy(v187, 1);
        v110 = 33;
        Int16Ty = Int32Ty;
      }

      else
      {
        if (a8 != 1)
        {
          goto LABEL_275;
        }

        Int32PtrTy = llvm::Type::getInt16PtrTy(v187, 1);
        Int16Ty = llvm::Type::getInt16Ty(v187, v108);
        v110 = 41;
      }

      *&__p = Int16Ty;
      v111 = MTLFrameworkPass::addBuiltInParameter(v187, "air.control_point_index_buffer", &v212, &v206, Int32PtrTy, v110, 1);
      if (v213 - v212 != v210 - v209)
      {
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v209, &__p);
      }

      LODWORD(v226) = v111;
      v100 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v196, &v226);
    }

    else
    {
      v106 = Int32Ty;
    }

    if (v193 == 1)
    {
      __p = 0uLL;
      *&v236 = 0;
      std::vector<MTLOpaqueObject *>::reserve(&__p, 1uLL);
      v113 = v106;
      if ((a4[1] & 1) == 0)
      {
        v113 = llvm::Type::getInt16Ty(v187, v112);
      }

      *&v226 = v113;
      v229.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
      LODWORD(v189.__r_.__value_.__l.__data_) = (v213 - v212) >> 3;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v196, &v189);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v212, &v229);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v209, &v226);
      v114 = a4[1];
      MTLFrameworkPass::appendBufferMetadata(v187, &v206);
      v100 = __p;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (!v168)
      {
LABEL_218:
        v166 = **(*(v171 + 3) + 16);
        Impl = 0;
        memset(&v189, 0, sizeof(v189));
        if (a6)
        {
          llvm::Type::getVoidTy(v187, v101);
          Impl = llvm::MDTuple::getImpl();
        }

        else if (a5)
        {
          v147 = *(v178 - 8 * *(v178 + 8) + 8);
          __p = 0uLL;
          *&v236 = 0;
          MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(v100, v187, v166, v147, &Impl, &__p, a5, &v189, a7);
        }

        v148 = llvm::FunctionType::get();
        *&__p = "air.vertexFetchFunction";
        LOWORD(v237) = 259;
        v149 = llvm::Function::Create(v148, 0, &__p, v183);
        *&__p = &v236;
        *(&__p + 1) = 0x200000000;
        v239 = v187;
        v240 = &v248;
        v241 = v249;
        v242 = 0;
        v243 = 0;
        v244 = 512;
        v245 = 7;
        v238 = 0uLL;
        v247 = 0;
        v246 = 0;
        v248 = MEMORY[0x277D821C8] + 16;
        v249[0] = MEMORY[0x277D82210] + 16;
        createDebugInfoForWrapperFunction(v187, &__p, v149, v171);
        if (!v163)
        {
          v151 = v203;
          v152 = v204;
          if (v203 != v204)
          {
            while (1)
            {
              v153 = *(v151 + 1);
              if (v153 > 0x29)
              {
                break;
              }

              if (((1 << v153) & 0x10008) == 0)
              {
                v154 = v230[*v151];
                if (((1 << v153) & 0x2020000000) == 0 && ((1 << v153) & 0x20200000000) == 0)
                {
                  break;
                }

                llvm::Function::addParamAttr();
              }

              v151 += 8;
              if (v151 == v152)
              {
                goto LABEL_230;
              }
            }

LABEL_275:
            abort();
          }

LABEL_230:
          for (i = v191; i; i = *i)
          {
            v156 = *(i + 6);
            llvm::Function::addParamAttr();
          }
        }

        *&v226 = "Body";
        LOWORD(v228) = 259;
        llvm::BasicBlock::Create(v187, &v226, v149, 0, v150);
      }
    }

    else if (!v168)
    {
      goto LABEL_218;
    }

    v115 = v172;
    v116 = v176;
    do
    {
      if (*(v116 + 1) == -1)
      {
        v117 = v213;
        v118 = v212;
        *&__p = *v116 & 0x1F;
        *&v226 = &__p;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v190, &__p)[3] = (v117 - v118) >> 3;
        Int64Ty = llvm::Type::getInt64Ty(v187, v119);
        v122 = v213;
        if (v213 >= v214)
        {
          v124 = (v213 - v212) >> 3;
          if ((v124 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v125 = (v214 - v212) >> 2;
          if (v125 <= v124 + 1)
          {
            v125 = v124 + 1;
          }

          if (v214 - v212 >= 0x7FFFFFFFFFFFFFF8)
          {
            v126 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v126 = v125;
          }

          if (v126)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v212, v126);
          }

          v127 = (8 * v124);
          *v127 = Int64Ty;
          v123 = 8 * v124 + 8;
          v128 = v127 - (v213 - v212);
          memcpy(v128, v212, v213 - v212);
          v129 = v212;
          v212 = v128;
          v213 = v123;
          v214 = 0;
          if (v129)
          {
            operator delete(v129);
          }
        }

        else
        {
          *v213 = Int64Ty;
          v123 = (v122 + 8);
        }

        v213 = v123;
        v130 = llvm::Type::getInt64Ty(v187, v121);
        v132 = v210;
        if (v210 >= v211)
        {
          v134 = (v210 - v209) >> 3;
          if ((v134 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v135 = (v211 - v209) >> 2;
          if (v135 <= v134 + 1)
          {
            v135 = v134 + 1;
          }

          if (v211 - v209 >= 0x7FFFFFFFFFFFFFF8)
          {
            v136 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v136 = v135;
          }

          if (v136)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v209, v136);
          }

          v137 = (8 * v134);
          *v137 = v130;
          v133 = 8 * v134 + 8;
          v138 = v137 - (v210 - v209);
          memcpy(v138, v209, v210 - v209);
          v139 = v209;
          v209 = v138;
          v210 = v133;
          v211 = 0;
          if (v139)
          {
            operator delete(v139);
          }
        }

        else
        {
          *v210 = v130;
          v133 = (v132 + 8);
        }

        v210 = v133;
        v239 = 0;
        v238 = 0u;
        v237 = 0u;
        v236 = 0u;
        __p = 0u;
        llvm::Type::getInt32Ty(v187, v131);
        llvm::ConstantInt::get();
        *&__p = llvm::ValueAsMetadata::get();
        *(&__p + 1) = llvm::MDString::get();
        *&v236 = llvm::MDString::get();
        llvm::Type::getInt32Ty(v187, v140);
        v141 = *v116;
        llvm::ConstantInt::get();
        *(&v236 + 1) = llvm::ValueAsMetadata::get();
        llvm::Type::getInt32Ty(v187, v142);
        llvm::ConstantInt::get();
        *&v237 = llvm::ValueAsMetadata::get();
        *(&v237 + 1) = llvm::MDString::get();
        *&v238 = llvm::MDString::get();
        *(&v238 + 1) = llvm::MDString::get();
        std::string::basic_string[abi:ne200100]<0>(&v229, "stride");
        std::to_string(&v189, *v116 & 0x1F);
        if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v143 = &v189;
        }

        else
        {
          v143 = v189.__r_.__value_.__r.__words[0];
        }

        if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v189.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v189.__r_.__value_.__l.__size_;
        }

        v145 = std::string::append(&v229, v143, size);
        v146 = *&v145->__r_.__value_.__l.__data_;
        v227 = v145->__r_.__value_.__r.__words[2];
        v226 = v146;
        v145->__r_.__value_.__l.__size_ = 0;
        v145->__r_.__value_.__r.__words[2] = 0;
        v145->__r_.__value_.__r.__words[0] = 0;
        v239 = llvm::MDString::get();
        if (SHIBYTE(v227) < 0)
        {
          operator delete(v226);
        }

        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v229.__r_.__value_.__l.__data_);
        }

        *&v226 = llvm::MDTuple::getImpl();
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v206, &v226);
      }

      v116 += 4;
      --v115;
    }

    while (v115);
    goto LABEL_218;
  }

  v66 = 0;
  v67 = "Attribute %d incompatible with MTLStepFunctionPerVertex.";
  while (!*(v224[0] + v66))
  {
LABEL_139:
    if (++v66 == v185)
    {
      goto LABEL_140;
    }
  }

  v68 = &v180[2 * v66];
  v69 = (*v68 >> 5) & 0x1F;
  if (v69 > v58 || *(v200[0] + v69) == -1)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d refers to a buffer index %d that is not valid.", *v68 & 0x1F, v69);
    goto LABEL_164;
  }

  String = llvm::MDString::getString(*(*(v221[0] + v66) - 8 * *(*(v221[0] + v66) + 8) + 8));
  v72 = v71;
  v73 = *v68;
  v74 = *(v200[0] + ((v73 >> 5) & 0x1F));
  v75 = v176[4 * v74] >> 5;
  if (v75 <= 2)
  {
    if (v75 == 1)
    {
      switch(v71)
      {
        case 0xDuLL:
          v81 = "air.vertex_id";
          break;
        case 0xFuLL:
          v81 = "air.instance_id";
          break;
        case 0x10uLL:
          if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
          {
            goto LABEL_270;
          }

          goto LABEL_134;
        default:
          goto LABEL_270;
      }

      if (memcmp(String, v81, v72))
      {
        goto LABEL_270;
      }
    }

    goto LABEL_134;
  }

  if (v75 - 5 < 4)
  {
    goto LABEL_134;
  }

  if (v75 != 3)
  {
    if (v75 != 4)
    {
      goto LABEL_275;
    }

    if (v71 != 29 || (*String == 0x637461702E726961 ? (v76 = String[1] == 0x6F72746E6F635F68) : (v76 = 0), v76 ? (v77 = String[2] == 0x5F746E696F705F6CLL) : (v77 = 0), v77 ? (v78 = *(String + 21) == 0x7475706E695F746ELL) : (v78 = 0), !v78))
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d incompatible with MTLStepFunctionPerPatchControlPoint.", v71);
      goto LABEL_164;
    }

    goto LABEL_134;
  }

  if (v71 != 29)
  {
    if (v71 != 15)
    {
      goto LABEL_269;
    }

    if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
    {
      goto LABEL_269;
    }

    goto LABEL_134;
  }

  v82 = *String == 0x637461702E726961 && String[1] == 0x6F72746E6F635F68;
  v83 = v82 && String[2] == 0x5F746E696F705F6CLL;
  if (v83 && *(String + 21) == 0x7475706E695F746ELL)
  {
LABEL_134:
    v85 = (v199[0] + 24 * v74);
    v86.__i_ = v85->__begin_;
    end = v85->__end_;
    if (v85->__begin_ != end)
    {
      while (v68[1] > v180[2 * *v86.__i_ + 1])
      {
        if (++v86.__i_ == end)
        {
          v86.__i_ = v85->__end_;
          break;
        }
      }
    }

    LODWORD(__p) = v66;
    std::vector<unsigned int>::insert(v85, v86, &__p);
    goto LABEL_139;
  }

LABEL_269:
  v67 = "Attribute %d incompatible with MTLStepFunctionPerPatch.";
LABEL_270:
  MTLCompilerErrorObject::setFormattedErrorMessage(*a1, v67, v72, v73 & 0x1F);
LABEL_164:
  v183 = 0;
  *&__p = v199;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v200[0])
  {
    v200[1] = v200[0];
    operator delete(v200[0]);
  }

LABEL_235:
  if (v201[0])
  {
    v201[1] = v201[0];
    operator delete(v201[0]);
  }

  if (v202[0])
  {
    v202[1] = v202[0];
    operator delete(v202[0]);
  }

  if (v203)
  {
    v204 = v203;
    operator delete(v203);
  }

  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }

  if (v212)
  {
    v213 = v212;
    operator delete(v212);
  }

  if (__src)
  {
    v216 = __src;
    operator delete(__src);
  }

  if (v175)
  {
    operator delete(v175);
  }

  if (v218[0])
  {
    operator delete(v218[0]);
  }

  if (v219[0])
  {
    v219[1] = v219[0];
    operator delete(v219[0]);
  }

  if (v220[0])
  {
    v220[1] = v220[0];
    operator delete(v220[0]);
  }

  if (v221[0])
  {
    v221[1] = v221[0];
    operator delete(v221[0]);
  }

  if (v222[0])
  {
    v222[1] = v222[0];
    operator delete(v222[0]);
  }

  if (v223[0])
  {
    v223[1] = v223[0];
    operator delete(v223[0]);
  }

  if (v224[0])
  {
    v224[1] = v224[0];
    operator delete(v224[0]);
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }

LABEL_267:
  v157 = *MEMORY[0x277D85DE8];
  return v183;
}

void sub_257A2E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&STACK[0x2E0]);
  MTLArgumentData::~MTLArgumentData(&STACK[0x4C0]);
  MEMORY[0x259C6A2B0](&STACK[0x730]);
  v43 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v43;
    operator delete(v43);
  }

  v44 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v44;
    operator delete(v44);
  }

  v45 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v45;
    operator delete(v45);
  }

  v46 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v46;
    operator delete(v46);
  }

  v47 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v47;
    operator delete(v47);
  }

  v48 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v49;
    operator delete(v49);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (STACK[0x400])
  {
    operator delete(STACK[0x400]);
  }

  v50 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v50;
    operator delete(v50);
  }

  v51 = STACK[0x430];
  if (STACK[0x430])
  {
    STACK[0x438] = v51;
    operator delete(v51);
  }

  v52 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v52;
    operator delete(v52);
  }

  v53 = STACK[0x460];
  if (STACK[0x460])
  {
    STACK[0x468] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x478];
  if (STACK[0x478])
  {
    STACK[0x480] = v54;
    operator delete(v54);
  }

  v55 = STACK[0x490];
  if (STACK[0x490])
  {
    STACK[0x498] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x4A8];
  if (STACK[0x4A8])
  {
    STACK[0x4B0] = v56;
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_257A2E938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t callTypedFunction(uint64_t a1, uint64_t a2)
{
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v5 = Function;
  }

  else
  {
    v6 = llvm::FunctionType::get();
    v9[0] = "air.get_num_patch_control_points";
    v10 = 259;
    v5 = llvm::Function::Create(v6, 0, v9, a1);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_5;
    }
  }

  v7 = *(v5 + 24);
LABEL_5:
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a2, v7, v5, 0, 0, v9, 0);
}

llvm::Value *fetchAttributeGEPIndexList@<X0>(uint64_t a1@<X0>, llvm::LLVMContext *a2@<X1>, llvm::Value **a3@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v11 = *(a1 + 88);
  v69 = *(*(a1 + 40) + 4);
  v12 = **(a1 + 40) >> 5;
  llvm::Type::getInt32Ty(*a1, a2);
  Int64Ty = llvm::Type::getInt64Ty(v5, v13);
  if (v12 > 2)
  {
    v66 = v11;
    v67 = v4;
    if ((v12 - 5) < 4)
    {
      v23 = v8;
      Element = *(v8 + 8 * v7[5]);
      v68 = *(v23 + 8 * v7[6]);
      v25 = *(v23 + 8 * v7[7]);
      v64 = v9;
      v65 = Int64Ty;
      if ((*(*Element + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v26 = llvm::ConstantInt::get();
        v74 = 257;
        Element = llvm::IRBuilderBase::CreateExtractElement(v6, Element, v26, v73, v27);
      }

      if ((*(*v68 + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v28 = llvm::ConstantInt::get();
        v74 = 257;
        v29 = v6;
        v68 = llvm::IRBuilderBase::CreateExtractElement(v6, v68, v28, v73, v30);
      }

      else
      {
        v29 = v6;
      }

      if ((*(*v25 + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v33 = llvm::ConstantInt::get();
        v74 = 257;
        v25 = llvm::IRBuilderBase::CreateExtractElement(v29, v25, v33, v73, v34);
      }

      v35 = v25;
      if (v69 < 2)
      {
        UDiv = Element;
      }

      else
      {
        v36 = llvm::ConstantInt::get();
        v74 = 257;
        UDiv = llvm::IRBuilderBase::CreateUDiv(v29, Element, v36, v73, 0);
      }

      Function = llvm::Module::getFunction();
      if (!Function)
      {
        Int32Ty = llvm::Type::getInt32Ty(v5, v38);
        v76 = Int32Ty;
        v40 = llvm::FunctionType::get();
        v73[0] = "air.min.u.i32";
        v74 = 259;
        Function = llvm::Function::Create(v40, 0, v73, v67);
      }

      v41 = *v35;
      v42 = llvm::ConstantInt::get();
      v74 = 257;
      Sub = llvm::IRBuilderBase::CreateSub(v29, v35, v42, v73, 0, 0);
      Int32Ty = UDiv;
      v76 = Sub;
      if (Function)
      {
        v44 = *(Function + 24);
      }

      else
      {
        v44 = 0;
      }

      v74 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateCall(v29, v44, Function, &Int32Ty, 2, v73, 0);
      if ((v12 - 7) <= 1)
      {
        v46 = *(v23 + 8 * v64);
        v74 = 257;
        Int32Ty = llvm::IRBuilderBase::CreateCast(v29, 39, AlignedLoad, v65, v73);
        v74 = 257;
        v47 = llvm::IRBuilderBase::CreateGEP(v29, v66, v46, &Int32Ty, 1, v73);
        v48 = *(v47 + 72);
        v74 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v29, v48, v47, 0, 0, v73);
      }

      v49 = *v68;
      if (*AlignedLoad != *v68)
      {
        v74 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateCast(v29, 39, AlignedLoad, v49, v73);
      }

      v74 = 257;
      v20 = v73;
      v21 = v29;
      v19 = AlignedLoad;
      v22 = v68;
LABEL_33:
      Add = llvm::IRBuilderBase::CreateAdd(v21, v19, v22, v20, 0, 0);
      goto LABEL_34;
    }

    if (v12 != 3)
    {
      if (v12 == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v32 = v7[3];
  }

  else
  {
    if (!v12)
    {
      Add = llvm::ConstantInt::get();
LABEL_34:
      v10 = Add;
      goto LABEL_37;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v10 = *(v8 + 8 * v7[1]);
        v15 = v69;
        if (v69 < 2)
        {
          goto LABEL_37;
        }

        v16 = *(v8 + 8 * v7[2]);
        v17 = llvm::ConstantInt::get();
        v74 = 257;
        v18 = llvm::IRBuilderBase::CreateSub(v6, v10, v16, v73, 0, 0);
        v77 = 257;
        v19 = llvm::IRBuilderBase::CreateUDiv(v6, v18, v17, &Int32Ty, 0);
        v72 = 257;
        v20 = &v71;
        v21 = v6;
        v22 = v16;
        goto LABEL_33;
      }

LABEL_16:
      abort();
    }

    v32 = *v7;
  }

  v10 = *(v8 + 8 * v32);
LABEL_37:
  v50 = *(a1 + 16);
  v51 = llvm::Type::getInt64Ty(*a1, v15);
  v74 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v50, 39, v10, v51, v73);
  *a3 = Cast;
  llvm::Type::getInt32Ty(*a1, v53);
  a3[1] = llvm::ConstantInt::get();
  llvm::Type::getInt64Ty(*a1, v54);
  if (*(a1 + 104))
  {
    v55 = *(a1 + 32);
  }

  else
  {
    v55 = *(a1 + 32) >> 2;
  }

  result = llvm::ConstantInt::get();
  a3[2] = result;
  if (*(*(a1 + 40) + 8) == -1)
  {
    v57 = *(*(a1 + 56) + 8 * *(a1 + 96));
    if (v57)
    {
      v58 = *(a1 + 16);
      v74 = 257;
      result = llvm::IRBuilderBase::CreateMul(v58, v57, Cast, v73, 0, 0);
      v59 = result;
      if ((*(a1 + 104) & 1) == 0)
      {
        v60 = *(a1 + 16);
        v74 = 257;
        v61 = *result;
        v62 = llvm::ConstantInt::get();
        result = llvm::IRBuilderBase::CreateLShr(v60, v59, v62, v73, 0);
        v59 = result;
      }

      *a3 = v59;
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::foldConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (*(a3 + 16) >= 0x15u)
  {
    a3 = 0;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    a4 = 0;
  }

  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v5;
  }

  v5 = (*(**(a1 + 72) + 184))(*(a1 + 72));
  if (!v5 || *(v5 + 16) < 0x1Cu)
  {
    return v5;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_257A2F3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A2F4BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    if ((a2 + (v6 >> 1)) < 0)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v4 - *a1;
    if (v7 <= a2 + (v6 >> 1))
    {
      v8 = a2 + (v6 >> 1);
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLAddVertexFetchingToModulePass::ModifiedOutput>>(a1, v9);
    }

    v10 = (2 * (v6 >> 1));
    bzero(v10, 2 * a2);
    v11 = &v10[2 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLAddVertexFetchingToModulePass::ModifiedOutput>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257A2FF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<llvm::MDNode *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257A2FFA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned int>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::__split_buffer<unsigned int>::emplace_back<unsigned int>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

uint64_t std::vector<llvm::Type *>::__init_with_size[abi:ne200100]<llvm::Type * const*,llvm::Type * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A30420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257A30A0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SmallVertexPartialLoad>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MTLVertexOutputLinkingPass::vertexOutputLinking(MTLCompilerErrorObject **a1, llvm::Module *a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11, int a12)
{
  if (!MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(a1, a11, a12))
  {
    return 0;
  }

  if (a5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5;
  }

  std::vector<BOOL>::vector(&v50, v18);
  __p.__r_.__value_.__r.__words[0] = "air.vertex";
  v49 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &__p);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v21 = (Operand - 8 * *(Operand + 8));
  v22 = v21[1];
  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = 0;
    v44 = *a2;
    v25 = **(*(*(*v21 + 128) + 24) + 16);
    do
    {
      v26 = *(v22 - 8 * *(v22 + 8) + 8 * v24);
      String = llvm::MDString::getString(*(v26 - 8 * *(v26 + 8)));
      if (v28 > 16)
      {
        if (v28 == 29)
        {
          if (!memcmp(String, "air.render_target_array_index", 0x1DuLL))
          {
            dataTypeFromMetadata(1u, v26);
          }
        }

        else if (v28 == 17)
        {
          if (*String == 0x747265762E726961 && String[1] == 0x757074756F5F7865 && *(String + 16) == 116)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            MatchingFragmentInput = MTLFrameworkPass::findMatchingFragmentInput(a1, &__p, v25, v24, v26, a3, a4);
            if (MatchingFragmentInput == 1)
            {
              *(v50 + ((LODWORD(__p.__r_.__value_.__l.__data_) >> 3) & 0x1FFFFFF8)) |= 1 << __p.__r_.__value_.__s.__data_[0];
            }

            else if (MatchingFragmentInput == 2)
            {
              goto LABEL_64;
            }

            MTLFrameworkPass::addLocationToMetadata(v44, v22, v24);
          }

          else if (!memcmp(String, "air.clip_distance", 0x11uLL))
          {
            if (*(v25 + 8) == 16 && (v31 = *(*(v25 + 16) + 8 * v24)) != 0 && *(v31 + 8) == 17)
            {
              v32 = *(v31 + 32);
              v33 = (v32 + 3) >> 2;
            }

            else
            {
              LODWORD(v32) = 1;
              LODWORD(v33) = 1;
            }

            a7 += v33;
            a8 += v32;
          }
        }
      }

      else if (v28 == 12)
      {
        if (!memcmp(String, "air.position", 0xCuLL))
        {
          ++a7;
          a8 += 4;
        }
      }

      else if (v28 == 14 && !memcmp(String, "air.point_size", 0xEuLL))
      {
        ++a7;
        ++a8;
      }

      ++v24;
    }

    while (v23 != v24);
  }

  if (a5)
  {
    v35 = 0;
    v36 = 8;
    while (((*(v50 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) != 0)
    {
      ++v35;
      v36 += 32;
      if (a5 == v35)
      {
        goto LABEL_42;
      }
    }

    v40 = *(*a3 + v36);
    if (v40)
    {
      v41 = *(*a3 + v36 + 8);
      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v41 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v47) = *(*a3 + v36 + 8);
      if (v41)
      {
        memmove(__dst, v40, v41);
      }

      *(__dst + v41) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v47 = 0;
    }

    MTLFrameworkPass::attribute_name(__dst, &__p);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__dst[0]);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: fragment input %s was not found in vertex shader outputs", p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_42:
    v37 = a9;
    if (a7 <= a9)
    {
      v37 = a10;
      if (a8 <= a10)
      {
        v39 = 1;
        goto LABEL_65;
      }

      v38 = "varying components";
      a7 = a8;
    }

    else
    {
      v38 = "varyings";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: number of shader %s (%u) exceeds limit (%u). Note that on macOS the following attributes count towards the limit: [[position]], [[clip_distance]], [[point_size]], [[point_coord]], and, when read in the fragment shader, [[viewport_array_index]] & [[render_target_array_index]].", v38, a7, v37);
  }

LABEL_64:
  v39 = 0;
LABEL_65:
  if (v50)
  {
    operator delete(v50);
  }

  return v39;
}

void sub_257A30ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::getArgumentTypeName(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 - 8 * *(a2 + 8) + 8 * v6);
      if (v7)
      {
        if (!*v7)
        {
          String = llvm::MDString::getString(v7);
          if (v9 == 17)
          {
            v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
            if (v10 && *(String + 16) == 101)
            {
              break;
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = v5;
        break;
      }
    }

    v12 = v6 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12 >= v5)
  {
    return 0;
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v12));
  v15 = v14;
  v16 = strlen(v13);
  result = dataTypeFromString(v13, v16);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t MTLCheckPixelFormatValidPass::pixelColorFormatValid(MTLCompilerErrorObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    if (a5)
    {
      return 1;
    }

    MTLCompilerErrorObject::setErrorMessage(*a1, "Shaders reads from a color attachment whose pixel format is MTLPixelFormatInvalid");
    return 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  __src = 0;
  __len = 0;
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if (!MTLCheckPixelFormatValidPass::getArgumentTypeName(InfoForDevice, a4, &__src))
  {
    v14 = *(a3 + 8);
    LOBYTE(v15) = *(a3 + 8);
    if ((*(a3 + 8) & 0xFE) == 0x12)
    {
      v15 = *(**(a3 + 16) + 8);
    }

    if ((v15 | 2) == 2)
    {
      if ((BYTE10(v28) & 3) != 0)
      {
        goto LABEL_20;
      }

      v16 = "Floating point fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Floating point fragment output cannot be written to a %s color attachment";
    }

    else
    {
      if ((BYTE10(v28) & 3) == 0)
      {
        goto LABEL_20;
      }

      v16 = "Integer fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Integer fragment output cannot be written to a %s color attachment";
    }

    if (a5)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v18, v28);
    }

    else
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v16, v28);
    }

    return 0;
  }

  ComponentType = MTLDataTypeGetComponentType();
  if (ComponentType > 0x29)
  {
    goto LABEL_53;
  }

  if (((1 << ComponentType) & 0x10008) != 0)
  {
    v12 = 196608;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x2020000000) != 0)
  {
    v12 = 1310720;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x20200000000) == 0)
  {
LABEL_53:
    abort();
  }

  v12 = 2621440;
LABEL_18:
  if ((DWORD2(v28) & v12) == 0)
  {
    if (a5)
    {
      v20 = "output";
    }

    else
    {
      v20 = "input";
    }

    v21 = *a1;
    if (__src)
    {
      v22 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + v22) = 0;
      v23 = __dst;
      if (v25 < 0)
      {
        v23 = __dst[0];
      }
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v23 = __dst;
      v25 = 0;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v21, "%s of type %s is not compatible with a %s color attachment.", v20, v23, v28);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    return 0;
  }

  v14 = *(a3 + 8);
LABEL_20:
  if (v14 == 18)
  {
    v19 = *(a3 + 32);
  }

  else
  {
    v19 = 1;
  }

  if (a2 == 1 && a5 && v19 <= 3)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output requires 4 outputs for pixel format (%s)");
    return 0;
  }

  result = 1;
  if (a5 && v19 < v30)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output does not have enough components for the pixel format (%s)");
    return 0;
  }

  return result;
}

void sub_257A31350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::formatIsValid(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(a2 - 8 * *(a2 + 8) + 8 * a3);
  *a7 = 0;
  String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8 * (a8 ^ 1u)));
  if (v16 == 9)
  {
    v24 = *String == 0x747065642E726961 && *(String + 8) == 104;
    if (!v24 || (*(a1 + 8) & 1) != 0)
    {
      return 1;
    }

    v25 = *(a6 + 12);
    MTLPixelFormatGetInfoForDevice();
    MTLCompilerErrorObject::setErrorMessage(*a1, "depthAttachmentPixelFormat is not valid and shader writes to depth");
  }

  else
  {
    if (v16 != 17)
    {
      return 1;
    }

    v17 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
    if (!v17 || *(String + 16) != 116)
    {
      return 1;
    }

    *a7 = 1;
    v19 = v14 - 8 * *(v14 + 8);
    v20 = 16;
    if (a8)
    {
      v20 = 8;
    }

    v21 = *(*(v19 + v20) + 128);
    if (*(v21 + 16) == 16)
    {
      v22 = (v21 + 24);
      if (*(v21 + 32) >= 0x41u)
      {
        v22 = *v22;
      }

      v23 = *v22;
    }

    else
    {
      v23 = -1;
    }

    v26 = *(a5 + 8 * v23);
    *(a7 + 2) = v23;
    if (a8)
    {
      v27 = *(*(v19 + 16) + 128);
      if (*(v27 + 16) == 16)
      {
        v28 = (v27 + 24);
        if (*(v27 + 32) >= 0x41u)
        {
          v28 = *v28;
        }

        v29 = *v28;
      }

      else
      {
        v29 = -1;
      }

      *(a7 + 4) = v29;
    }

    if (MTLCheckPixelFormatValidPass::pixelColorFormatValid(a1, v26, a4, v14, a8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTLCheckPixelFormatValidPass::checkPixelFormatValid(char ***a1, llvm::Module *this, uint64_t a3, unsigned __int16 *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  *&v43[0] = "air.fragment";
  LOWORD(v44) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v43);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v9 = (Operand - 8 * *(Operand + 8));
  v10 = v9[1];
  v11 = *(*v9 + 128);
  v12 = **(*(v11 + 3) + 16);
  v13 = *(v10 + 8);
  v41 = 0;
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  v14 = *(a3 + 8);
  if (*(a3 + 8))
  {
    do
    {
      v15 = *a4++;
      *(v43 + (v15 & 0xF)) = v15 >> 4;
      --v14;
    }

    while (v14);
  }

  if (v13)
  {
    v39 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = v12;
      if (*(v12 + 8) == 16)
      {
        v19 = *(*(v12 + 16) + 8 * v16);
      }

      result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v10, v16, v19, v43, a3, &v42, 1);
      if (!result)
      {
        break;
      }

      if (v42 == 1)
      {
        v21 = 1 << SBYTE2(v42);
        if (WORD2(v42))
        {
          v17 |= v21;
        }

        else
        {
          v18 |= v21;
        }
      }

      if (v13 == ++v16)
      {
        v41 = v17;
        v11 = v39;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v18 = 0;
LABEL_15:
    v22 = 0;
    v42 = v18;
    v23 = *(a3 + 8);
    v24 = BYTE2(v23);
    v25 = BYTE1(v23);
    while (2)
    {
      v26 = 0;
      v27 = 1;
      v28 = &v42;
      do
      {
        v29 = v27;
        if (v27)
        {
          v30 = v25;
        }

        else
        {
          v30 = v24;
        }

        if (((1 << v22) & v30) != 0 && (*v28 & (1 << v22)) == 0)
        {
          MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Fragment shader does not write to render target color(0), index(%u) that is required for blending", v26);
          result = 0;
          goto LABEL_36;
        }

        v27 = 0;
        v26 = 1;
        v28 = &v41;
      }

      while ((v29 & 1) != 0);
      if (++v22 != 8)
      {
        continue;
      }

      break;
    }

    v31 = *(Operand - 8 * *(Operand + 8) + 16);
    if (*(v11 + 9))
    {
      llvm::Function::BuildLazyArguments(v11);
    }

    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = 0;
      v34 = *(v11 + 11);
      v35 = v32 - 1;
      do
      {
        v36 = *v34;
        v34 += 5;
        result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v31, v33, v36, v43, a3, v40, 0);
        if (result)
        {
          v37 = v35 == v33;
        }

        else
        {
          v37 = 1;
        }

        ++v33;
      }

      while (!v37);
    }

    else
    {
      result = 1;
    }
  }

LABEL_36:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *MTLFrameworkPass::truncateVector(llvm::Type *this, llvm::LLVMContext *a2, llvm::Value *a3, int a4)
{
  ShuffleVector = a3;
  if (*a3)
  {
    v5 = *(*a3 + 8) == 18;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = *(*a3 + 32);
    if (v7 != 1 && v7 != a4)
    {
      if (a4 == 1)
      {
        llvm::Type::getInt32Ty(this, a2);
        v11 = llvm::ConstantInt::get();
        v19 = 257;
        return llvm::IRBuilderBase::CreateExtractElement(a2, ShuffleVector, v11, v18, v12);
      }

      else
      {
        std::vector<llvm::Constant *>::vector[abi:ne200100](__p, a4);
        if (a4 >= 1)
        {
          v14 = 0;
          do
          {
            llvm::Type::getInt32Ty(this, v13);
            *(__p[0] + v14++) = llvm::ConstantInt::get();
          }

          while (a4 != v14);
        }

        v15 = llvm::ConstantVector::get();
        v19 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a2, ShuffleVector, ShuffleVector, v15, v18);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  return ShuffleVector;
}

void sub_257A3191C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLFrameworkPass::addLocationToMetadata(llvm::Type *a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a2 - 8 * *(a2 + 8) + 8 * a3);
  v5 = *(v4 + 8);
  std::vector<llvm::Metadata *>::vector[abi:ne200100](__p, v5 + 2);
  if (v5 < 1)
  {
    goto LABEL_32;
  }

  v6 = 0;
  v7 = 0;
  LODWORD(v8) = 0;
  do
  {
    while (1)
    {
      v9 = v4 - 8 * *(v4 + 8);
      v10 = v8;
      *(__p[0] + v8) = *(v9 + 8 * v6);
      v8 = v8 + 1;
      if (!v6 || (v7 & 1) != 0)
      {
        break;
      }

      v11 = *(v9 + 8 * (v6 - 1));
      if (*v11)
      {
        goto LABEL_6;
      }

      String = llvm::MDString::getString(v11);
      if (v13 == 17)
      {
        if (*String != 0x747265762E726961 || *(String + 8) != 0x757074756F5F7865 || *(String + 16) != 116)
        {
LABEL_6:
          v7 = 0;
          break;
        }
      }

      else
      {
        if (v13 != 18)
        {
          goto LABEL_6;
        }

        v14 = *String == 0x676172662E726961 && *(String + 8) == 0x706E695F746E656DLL;
        if (!v14 || *(String + 16) != 29813)
        {
          goto LABEL_6;
        }
      }

      *(__p[0] + v8) = llvm::MDString::get();
      llvm::Type::getInt32Ty(a1, v18);
      llvm::ConstantInt::get();
      LODWORD(v8) = v10 + 3;
      *(__p[0] + v10 + 2) = llvm::ValueAsMetadata::get();
      ++v6;
      v7 = 1;
      if (v6 == v5)
      {
        goto LABEL_31;
      }
    }

    ++v6;
  }

  while (v6 != v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  llvm::MDTuple::getImpl();
  llvm::MDNode::replaceOperandWith();
LABEL_32:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_257A31B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::createVertexOutputMetadata(llvm::Type *a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v27 = *MEMORY[0x277D85DE8];
  v23[0] = llvm::MDString::get();
  if (a2)
  {
    strlen(a2);
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v23[1] = llvm::MDString::get();
  if (a8)
  {
    *&v24 = llvm::MDString::get();
    llvm::Type::getInt32Ty(a1, v15);
    llvm::ConstantInt::get();
    *(&v24 + 1) = llvm::ValueAsMetadata::get();
    v16 = 4;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 2;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  ShaderTypeName = MTLDataTypeGetShaderTypeName(a3, a4);
  v18 = v16 | 1;
  v23[v16] = llvm::MDString::get();
  if (ShaderTypeName)
  {
    strlen(ShaderTypeName);
  }

  v16 += 2;
  v23[v18] = llvm::MDString::get();
LABEL_10:
  if ((a5 - 1) > 3)
  {
    v19 = &unk_257A6F51A;
  }

  else
  {
    v19 = off_27984E5A0[a5 - 1];
  }

  strlen(v19);
  v23[v16] = llvm::MDString::get();
  if ((a6 - 1) > 2)
  {
    v20 = &unk_257A6F51A;
  }

  else
  {
    v20 = off_27984E5C0[a6 - 1];
  }

  strlen(v20);
  v23[v16 + 1] = llvm::MDString::get();
  result = llvm::MDTuple::getImpl();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

char *MTLFrameworkPass::samplingStringFromQualifier(MTLFrameworkPass *this)
{
  if ((this - 1) > 3)
  {
    return &unk_257A6F51A;
  }

  else
  {
    return off_27984E5A0[this - 1];
  }
}

char *MTLFrameworkPass::interpolationStringFromQualifier(MTLFrameworkPass *this)
{
  if ((this - 1) > 2)
  {
    return &unk_257A6F51A;
  }

  else
  {
    return off_27984E5C0[this - 1];
  }
}

void *MTLFrameworkPass::getArgumentMetadataIndices(uint64_t a1, uint64_t a2)
{
  result = memset(*a2, 255, *(a2 + 8) - *a2);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = *a2;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * *(a1 + 8));
      v10 = *(*(v9 - 8 * *(v9 + 8)) + 128);
      v11 = (v10 + 24);
      if (*(v10 + 32) >= 0x41u)
      {
        v11 = *v11;
      }

      v7[*v11] = v6++;
      v8 += 8;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t MTLFrameworkPass::extractVaryingInfoFromMetadata(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  *(a1 + 8) = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * a3));
  *(a1 + 16) = v8;
  v9 = *(a2 + 8);
  for (i = v5 + 1; i < v9; v5 = i++)
  {
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * i);
    if (!*v11)
    {
      String = llvm::MDString::getString(v11);
      v14 = String;
      if (v13 <= 14)
      {
        switch(v13)
        {
          case 8:
            if (!memcmp(String, "air.flat", 8uLL))
            {
              v18 = *(a1 + 28) & 0xF9 | 4;
              goto LABEL_35;
            }

            break;
          case 10:
            if (!memcmp(String, "air.center", 0xAuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 8;
              goto LABEL_35;
            }

            if (!memcmp(v14, "air.sample", 0xAuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 0x18;
              goto LABEL_35;
            }

            break;
          case 12:
            if (*String == 0x5F6772612E726961 && String[2] == 1701667182)
            {
              i = v5 + 2;
            }

            else if (!memcmp(String, "air.centroid", 0xCuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 0x10;
LABEL_35:
              *(a1 + 28) = v18;
            }

            break;
        }
      }

      else if (v13 > 17)
      {
        if (v13 != 18)
        {
          if (v13 != 26 || memcmp(String, "air.interpolation_function", 0x1AuLL))
          {
            continue;
          }

          v18 = *(a1 + 28) & 0xC7 | 0x20;
          goto LABEL_35;
        }

        if (!memcmp(String, "air.no_perspective", 0x12uLL))
        {
          v18 = *(a1 + 28) | 6;
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 != 15)
        {
          if (v13 == 17 && !memcmp(String, "air.arg_type_name", 0x11uLL))
          {
            i = v5 + 2;
            v15 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (v5 + 2)));
            v16 = strlen(v15);
            *(a1 + 24) = dataTypeFromString(v15, v16);
          }

          continue;
        }

        if (!memcmp(String, "air.perspective", 0xFuLL))
        {
          v18 = *(a1 + 28) & 0xF9 | 2;
          goto LABEL_35;
        }
      }
    }
  }

  result = *(a1 + 24);
  if (result)
  {
    v20 = *(a1 + 28);
    goto LABEL_53;
  }

  v21 = *(a4 + 8);
  v22 = 1;
  if (a4 && *(a4 + 8) == 18)
  {
    v22 = *(a4 + 32);
    v21 = *(*(a4 + 24) + 8);
  }

  if (v21 == 13)
  {
    v24 = v21 >> 8;
    switch(v24)
    {
      case 8u:
        v23 = 45;
        goto LABEL_46;
      case 0x20u:
        v23 = 29;
        goto LABEL_46;
      case 0x10u:
        v23 = 37;
        goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (v21 == 2)
  {
    v23 = 3;
    goto LABEL_46;
  }

  if (v21)
  {
LABEL_51:
    result = 0;
    goto LABEL_52;
  }

  v23 = 16;
LABEL_46:
  result = MTLDataTypeGetVectorDataType(v23, v22);
  *(a1 + 24) = result;
LABEL_52:
  v20 = *(a1 + 28) | 0x40;
  *(a1 + 28) = v20;
LABEL_53:
  v25 = v20 & 0x38;
  v26 = v20 & 6;
  if (v25)
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    result = MTLDataTypeGetComponentType(result);
    v28 = *(a1 + 28);
    if ((v28 & 0x38) == 0)
    {
      v28 |= 8u;
      *(a1 + 28) = v28;
    }

    if (result == 16 || result == 3)
    {
      if ((v28 & 6) != 0)
      {
        return result;
      }

      v29 = 2;
    }

    else
    {
      if ((v28 & 6) != 0)
      {
        return result;
      }

      v29 = 4;
    }

    *(a1 + 28) = v28 | v29;
  }

  return result;
}

void MTLFrameworkPass::attribute_name(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  __idx = 0;
  v4 = std::string::find(a1, "generated(", 0, 0xAuLL);
  if (v4 == -1)
  {
    if (*(a1 + 23) < 0)
    {
      v6 = *a1;
      v7 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a2, v6, v7);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string(&__str, a1, v4 + 10, 0xFFFFFFFFFFFFFFFFLL, &v10);
    v5 = std::stoi(&__str, &__idx, 10);
    std::string::basic_string(a2, &__str, __idx, v5, &v10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_257A322D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::findMatchingFragmentInput(char ***a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v9 = a3;
  if (*(a3 + 8) == 16)
  {
    v9 = *(*(a3 + 16) + 8 * a4);
  }

  v21 = 0;
  memset(v22, 0, 21);
  MTLFrameworkPass::extractVaryingInfoFromMetadata(&v21, a5, 1u, v9);
  llvm::StringRef::str(v22, &__p);
  v12 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(a7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a7 + 8 == v12)
  {
    return 0;
  }

  v13 = *(v12 + 56);
  *a2 = v13;
  v14 = *a6 + 32 * v13;
  v15 = *(v14 + 24);
  if ((BYTE4(v22[2]) & 0x40) != 0)
  {
    LODWORD(v15) = MTLDataTypeGetSignedType(v15);
  }

  if (LODWORD(v22[2]) == v15)
  {
    return 1;
  }

  llvm::StringRef::str((v14 + 8), v18);
  MTLFrameworkPass::attribute_name(v18, &__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: The type of fragment input %s does not match the type of the corresponding vertex shader output", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 2;
}

void sub_257A32444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(MTLCompilerErrorObject **a1, int a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  if (a2)
  {
    if (a2 == a3)
    {
      return 1;
    }

    v4 = "Link failed: the render_target_array_index has a different type in the fragment shader and the vertex shader";
  }

  else
  {
    v4 = "Link failed: fragment shader is reading the render_target_array_index but the vertex shader does not write it";
  }

  MTLCompilerErrorObject::setErrorMessage(*a1, v4);
  return 0;
}

void MTLFrameworkPass::appendBufferMetadata(llvm::Type *a1, llvm::LLVMContext *a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 1) - *a2;
  llvm::Type::getInt32Ty(a1, a2);
  llvm::ConstantInt::get();
  v8[1] = llvm::ValueAsMetadata::get();
  v8[2] = llvm::MDString::get();
  v8[3] = llvm::MDString::get();
  llvm::Type::getInt32Ty(a1, v5);
  llvm::ConstantInt::get();
  v8[4] = llvm::ValueAsMetadata::get();
  llvm::Type::getInt32Ty(a1, v6);
  llvm::ConstantInt::get();
  v8[5] = llvm::ValueAsMetadata::get();
  v8[6] = llvm::MDString::get();
  v8[7] = llvm::MDString::get();
  v8[8] = llvm::MDString::get();
  v8[9] = llvm::MDString::get();
  v8[10] = llvm::MDString::get();
  v8[0] = llvm::MDTuple::getImpl();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](a2, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3 != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v9);
      v11 = *(v4 + v9);
      if (*(v4 + v9))
      {
        if (v9 >= 0xAu)
        {
          abort();
        }

        v12 = *(*a2 + (v8 >> 56));
        v13 = dword_257A6DDB0[v9 & 0xF];
        v14 = *a1;
        if (v12 == -1)
        {
          *(*a2 + (v8 >> 56)) = (*(a1 + 8) - v14) >> 3;
          v19 = *(a1 + 8);
          v18 = *(a1 + 16);
          if (v19 >= v18)
          {
            v21 = (v19 - *a1) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - *a1;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(a1, v24);
            }

            v25 = (8 * v21);
            *v25 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = 8 * v21 + 8;
            v26 = *(a1 + 8) - *a1;
            v27 = v25 - v26;
            memcpy(v25 - v26, *a1, v26);
            v28 = *a1;
            *a1 = v27;
            *(a1 + 8) = v20;
            *(a1 + 16) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = (v19 + 1);
          }

          *(a1 + 8) = v20;
          v4 = *a3;
          v3 = a3[1];
        }

        else
        {
          v15 = &v14[8 * v12];
          v17 = v15[1];
          v16 = v15 + 1;
          if (v17 >= v11)
          {
            v10 = v16;
          }

          *v16 = *v10;
          *(v16 + 3) = v13;
        }
      }

      ++v9;
      v8 += 0x100000000000000;
    }

    while (v9 < v3 - v4);
  }
}

uint64_t MTLFrameworkPass::getLLVMVectorType(llvm::Type *a1, llvm::LLVMContext *a2, unsigned int a3)
{
  if (a2 <= 32)
  {
    switch(a2)
    {
      case 3:
        result = llvm::Type::getFloatTy(a1, a2);
        break;
      case 0x10:
        result = llvm::Type::getHalfTy(a1, a2);
        break;
      case 0x1D:
        goto LABEL_9;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    if (a2 <= 40)
    {
      if (a2 != 33)
      {
        if (a2 != 37)
        {
LABEL_21:
          abort();
        }

        goto LABEL_13;
      }

LABEL_9:
      result = llvm::Type::getInt32Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 == 41)
    {
LABEL_13:
      result = llvm::Type::getInt16Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 != 53)
    {
      goto LABEL_21;
    }

    result = llvm::Type::getInt1Ty(a1, a2);
  }

LABEL_16:
  if (a3 >= 2)
  {

    return llvm::VectorType::get();
  }

  return result;
}

uint64_t MTLFrameworkPass::addBuiltInParameter(llvm::Type *this, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v7 = a7;
  v8 = a6;
  v14 = *a3;
  v15 = a3[1];
  if (v15 == *a3)
  {
    v17 = 0;
    v19 = a3[1];
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (*(v14 + 8 * v17) == a5)
      {
        String = llvm::MDString::getString(*(*(*a4 + 8 * v17) - 8 * *(*(*a4 + 8 * v17) + 8) + 8));
        v22 = a2;
        if (a2)
        {
          v23 = String;
          v24 = strlen(a2);
          if (v22 == v24 && (!v24 || !memcmp(v23, a2, v24)))
          {
            return v17;
          }
        }

        else if (!a2)
        {
          return v17;
        }
      }

      v17 = v18;
      v14 = *a3;
      v19 = a3[1];
    }

    while ((v19 - *a3) >> 3 > v18++);
    v17 = (v19 - *a3) >> 3;
    v15 = *a3;
    v7 = a7;
    v8 = a6;
  }

  v25 = a3[2];
  if (v19 >= v25)
  {
    v26 = v25 - v15;
    v27 = v26 >> 2;
    if (v26 >> 2 <= (v17 + 1))
    {
      v27 = v17 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a3, v28);
  }

  *v19 = a5;
  a3[1] = (v19 + 1);
  v30 = *a4;
  v29 = a4[1];
  __p = 0;
  v39 = 0;
  v40 = 0;
  llvm::Type::getInt32Ty(this, a2);
  llvm::ConstantInt::get();
  Impl = llvm::ValueAsMetadata::get();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  Impl = llvm::MDString::get(this, a2, v31);
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  if (v8)
  {
    Impl = llvm::MDString::get();
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
    ComponentType = MTLDataTypeGetComponentType(v8);
    ShaderTypeName = MTLDataTypeGetShaderTypeName(ComponentType, v7);
    Impl = llvm::MDString::get(this, ShaderTypeName, v34);
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  }

  Impl = llvm::MDTuple::getImpl();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](a4, &Impl);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  return v17;
}