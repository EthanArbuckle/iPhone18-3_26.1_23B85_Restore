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

uint64_t AirReflection::Node::node_as_WorldSpaceDirectionArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282631) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorldSpaceDirectionArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorldSpaceDirectionArg", 0x24u);
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

uint64_t AirReflection::Node::node_as_GeometryIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282632) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::GeometryIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.GeometryIDArg", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_UserInstanceIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282633) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserInstanceIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserInstanceIDArg", 0x1Fu);
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

uint64_t AirReflection::Node::node_as_GeometryIntersectionFunctionTableOffsetArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282634) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::GeometryIntersectionFunctionTableOffsetArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.GeometryIntersectionFunctionTableOffsetArg", 0x38u);
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

uint64_t AirReflection::Node::node_as_InstanceIntersectionFunctionTableOffsetArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282635) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceIntersectionFunctionTableOffsetArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceIntersectionFunctionTableOffsetArg", 0x38u);
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

uint64_t AirReflection::Node::node_as_OpaquePrimitiveArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282636) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::OpaquePrimitiveArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.OpaquePrimitiveArg", 0x20u);
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

uint64_t AirReflection::Node::node_as_ObjectToWorldTransformArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282637) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ObjectToWorldTransformArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ObjectToWorldTransformArg", 0x27u);
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

uint64_t AirReflection::Node::node_as_WorldToObjectTransformArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282638) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorldToObjectTransformArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorldToObjectTransformArg", 0x27u);
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

uint64_t AirReflection::Node::node_as_TimeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282639) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TimeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TimeArg", 0x15u);
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

uint64_t AirReflection::Node::node_as_KeyFrameCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282640) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::KeyFrameCountArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.KeyFrameCountArg", 0x1Eu);
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

uint64_t AirReflection::Node::node_as_MotionStartTimeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282641) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MotionStartTimeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MotionStartTimeArg", 0x20u);
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

uint64_t AirReflection::Node::node_as_MotionEndTimeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282642) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MotionEndTimeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MotionEndTimeArg", 0x1Eu);
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

uint64_t AirReflection::Node::node_as_PrimitiveDataArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282643) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveDataArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveDataArg", 0x1Eu);
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

uint64_t AirReflection::Node::node_as_InstanceIDCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282644) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceIDCountArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceIDCountArg", 0x20u);
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

uint64_t AirReflection::Node::node_as_UserInstanceIDCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282645) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserInstanceIDCountArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserInstanceIDCountArg", 0x24u);
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

uint64_t AirReflection::Node::node_as_CurveParameterArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282646) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CurveParameterArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CurveParameterArg", 0x1Fu);
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

uint64_t AirReflection::Node::node_as_FunctionIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282647) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionIDArg", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_UserDataBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 282648) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserDataBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserDataBufferArg", 0x1Fu);
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
    v10 = v9;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v10);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v11 = (a1 - *a1);
  if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
  {
    v13 = v12;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v13);
  }

  else
  {
    data = 0;
  }

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

uint64_t AirReflection::Node::node_as_MeshArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 286720)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshArg", 0x15u);
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

  CC_SHA256_Update(v15, p_data, v14);
  v16 = (a1 - *a1);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = (a1 + v17);
    v19 = *v18;
    v20 = (v18 + v19 + 4);
    v21 = *(v18 + v19);
    v22 = c;
  }

  else
  {
    data = 0;
    v20 = &data;
    v22 = c;
    v21 = 4;
  }

  CC_SHA256_Update(v22, v20, v21);
  v23 = (a1 - *a1);
  if (*v23 < 0xDu)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = v23[6];
    if (v24)
    {
      LOBYTE(v24) = *(a1 + v24) != 0;
    }
  }

  LOBYTE(data) = v24;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_MeshGridPropertiesArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 290816)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshGridPropertiesArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshGridPropertiesArg", 0x23u);
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

uint64_t AirReflection::Node::node_as_CIArrayArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 294912)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::CIArrayArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIArrayArg", 0x18u);
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
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
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
  if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
  {
    v18 = (a1 + v17);
    v19 = *v18;
    p_data = (v18 + v19 + 4);
    v21 = *(v18 + v19);
    v22 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v22 = c;
    v21 = 4;
  }

  CC_SHA256_Update(v22, p_data, v21);
  v23 = (a1 - *a1);
  if (*v23 >= 0xFu && (v24 = v23[7]) != 0)
  {
    v25 = (a1 + v24);
    v26 = *v25;
    v27 = (v25 + v26 + 4);
    v28 = *(v25 + v26);
    v29 = c;
  }

  else
  {
    data = 0;
    v27 = &data;
    v29 = c;
    v28 = 4;
  }

  return CC_SHA256_Update(v29, v27, v28);
}

uint64_t AirReflection::Node::node_as_CIPaddingArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294913) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_CIPointerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294914) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIPointerArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIPointerArg", 0x1Au);
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

  return CC_SHA256_Update(v34, v32, v33);
}

uint64_t AirReflection::Node::node_as_CIStructArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294915) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIStructArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIStructArg", 0x19u);
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
    v9 = (a1 + v8);
    v10 = *v9;
    p_data = (v9 + v10 + 4);
    v12 = *(v9 + v10);
    v13 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v13 = c;
    v12 = 4;
  }

  CC_SHA256_Update(v13, p_data, v12);
  v14 = (a1 - *a1);
  if (*v14 >= 9u && (v15 = v14[4]) != 0)
  {
    v16 = (a1 + v15);
    v17 = *v16;
    v18 = (v16 + v17 + 4);
    v19 = *(v16 + v17);
    v20 = c;
  }

  else
  {
    data = 0;
    v18 = &data;
    v20 = c;
    v19 = 4;
  }

  return CC_SHA256_Update(v20, v18, v19);
}

uint64_t AirReflection::Node::node_as_CITextureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294916) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CITextureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CITextureArg", 0x1Au);
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

  CC_SHA256_Update(v15, p_data, v14);
  v16 = (a1 - *a1);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = (a1 + v17);
    v19 = *v18;
    v20 = (v18 + v19 + 4);
    v21 = *(v18 + v19);
    v22 = c;
  }

  else
  {
    data = 0;
    v20 = &data;
    v22 = c;
    v21 = 4;
  }

  return CC_SHA256_Update(v22, v20, v21);
}

uint64_t AirReflection::Node::node_as_CIBuiltinArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294917) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIBuiltinArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIBuiltinArg", 0x1Au);
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

uint64_t AirReflection::Node::node_as_CIMatrixArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294918) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIMatrixArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIMatrixArg", 0x19u);
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

uint64_t AirReflection::Node::node_as_CISamplerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294919) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CISamplerArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CISamplerArg", 0x1Au);
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

uint64_t AirReflection::Node::node_as_CIImageblockArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 294920) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIImageblockArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIImageblockArg", 0x1Du);
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

uint64_t AirReflection::Node::node_as_FunctionConstant(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x80000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::FunctionConstant::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionConstant", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    v23 = 0;
    v8 = &v23;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, v8, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    p_data = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v17 = c;
    v16 = 4;
  }

  CC_SHA256_Update(v17, p_data, v16);
  v18 = (a1 - *a1);
  if (*v18 < 9u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[4];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  v25 = v19;
  CC_SHA256_Update(c, &v25, 4u);
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

uint64_t AirReflection::Node::node_as_StitchingArgument(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524290) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StitchingArgument::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StitchingArgument", 0x1Fu);
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

uint64_t AirReflection::Node::node_as_MeshTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524291) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshTypeInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshTypeInfo", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
    data = *v6;
    CC_SHA256_Update(c, &data, 4u);
    v7 = *v6;
    if (v7)
    {
      v8 = v6 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v9 = *v8++;
        data = v9;
        CC_SHA256_Update(c, &data, 4u);
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v10 = (a1 - *a1);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    CC_SHA256_Update(c, &data, 4u);
    v13 = *v12;
    if (v13)
    {
      v14 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v15 = *v14++;
        data = v15;
        CC_SHA256_Update(c, &data, 4u);
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v16 = (a1 - *a1);
  if (*v16 < 9u)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v16[4];
    if (v17)
    {
      LODWORD(v17) = *(a1 + v17);
    }
  }

  data = v17;
  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 < 0xBu)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[5];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = *(a1 + v21);
  }

  else
  {
    v22 = 1;
  }

  data = v22;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_GlobalBinding(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524292) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::GlobalBinding::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.GlobalBinding", 0x1Bu);
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
    v13 = v12;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    v17 = *(a1 + v13);
    v14 = &v17;
  }

  else
  {
    v18 = 0;
    v14 = &v18;
  }

  return CC_SHA256_Update(c, v14, 4u);
}

uint64_t AirReflection::Node::node_as_InlineTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524293) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InlineTypeInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InlineTypeInfo", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 255;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
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
  if (*v13 < 0xBu)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v13[5];
    if (v14)
    {
      LODWORD(v14) = *(a1 + v14);
    }
  }

  data = v14;
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
  if (*v17 < 0xFu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[7];
    if (v18)
    {
      LODWORD(v18) = *(a1 + v18);
    }
  }

  data = v18;
  CC_SHA256_Update(c, &data, 4u);
  v19 = (a1 - *a1);
  if (*v19 >= 0x11u && (v20 = v19[8]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    p_data = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, p_data, v24);
  v26 = (a1 - *a1);
  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x15u && (v30 = v29[10]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VisibleFunctionReference(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524294) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunctionReference::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunctionReference", 0x26u);
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

uint64_t AirReflection::Node::node_as_OpaqueType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 528384)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::OpaqueType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.OpaqueType", 0x18u);
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
    v16 = (a1 + v15);
    v17 = *v16;
    p_data = (v16 + v17 + 4);
    v19 = *(v16 + v17);
    v20 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v20 = c;
    v19 = 4;
  }

  return CC_SHA256_Update(v20, p_data, v19);
}

uint64_t AirReflection::Node::node_as_VoidType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528385) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VoidType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VoidType", 0x16u);
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

uint64_t AirReflection::Node::node_as_BoolType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528386) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BoolType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BoolType", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 1;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 1;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_CharType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528387) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CharType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CharType", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 1;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 1;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_UCharType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528388) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UCharType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UCharType", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 1;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 1;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_ShortType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528389) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ShortType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ShortType", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 2;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 2;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_UShortType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528390) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UShortType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UShortType", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 2;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 2;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_IntType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528391) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntType", 0x15u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 4;
  }

  data = v6;
  v7 = 4;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u)
  {
    v9 = v8[3];
    if (v9)
    {
      v7 = *(a1 + v9);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_UIntType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528392) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UIntType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UIntType", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 4;
  }

  data = v6;
  v7 = 4;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u)
  {
    v9 = v8[3];
    if (v9)
    {
      v7 = *(a1 + v9);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_LongType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528393) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::LongType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LongType", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 8;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 8;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_ULongType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528394) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ULongType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ULongType", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 8;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 8;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_LLongType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528395) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::LLongType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LLongType", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 16;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 16;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_ULLongType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528396) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ULLongType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ULLongType", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 16;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 16;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_HalfType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528397) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::HalfType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.HalfType", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 2;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 2;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_FloatType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528398) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FloatType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FloatType", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 4;
  }

  data = v6;
  v7 = 4;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u)
  {
    v9 = v8[3];
    if (v9)
    {
      v7 = *(a1 + v9);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_DoubleType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528399) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DoubleType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DoubleType", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 8;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 8;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_BFloatType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528400) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BFloatType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BFloatType", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = 2;
  }

  data = v6;
  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = *(a1 + v8);
  }

  else
  {
    v9 = 2;
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (a1 + v11 + *(a1 + v11));
    data = *v12;
    result = CC_SHA256_Update(c, &data, 4u);
    v14 = *v12;
    if (v14)
    {
      v15 = v12 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        result = CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_VectorType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528401) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VectorType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VectorType", 0x18u);
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
  if (*v17 < 0xDu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[6];
    if (v18)
    {
      LODWORD(v18) = *(a1 + v18);
    }
  }

  data = v18;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_PackedVectorType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528402) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PackedVectorType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PackedVectorType", 0x1Eu);
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
  if (*v17 < 0xDu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[6];
    if (v18)
    {
      LODWORD(v18) = *(a1 + v18);
    }
  }

  data = v18;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MatrixType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528403) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MatrixType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MatrixType", 0x18u);
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
  if (*v17 < 0xDu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[6];
    if (v18)
    {
      LODWORD(v18) = *(a1 + v18);
    }
  }

  data = v18;
  CC_SHA256_Update(c, &data, 4u);
  v19 = (a1 - *a1);
  if (*v19 < 0xFu)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = v19[7];
    if (v20)
    {
      LODWORD(v20) = *(a1 + v20);
    }
  }

  data = v20;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_FunctionType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528404) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionType", 0x1Au);
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
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    result = CC_SHA256_Update(c, &data, 4u);
    v21 = *v19;
    if (v21)
    {
      v22 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v23 = *v22++;
        data = v23;
        result = CC_SHA256_Update(c, &data, 4u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_PointerType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528405) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PointerType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PointerType", 0x19u);
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

uint64_t AirReflection::Node::node_as_LValueReferenceType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528406) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::LValueReferenceType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LValueReferenceType", 0x21u);
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

uint64_t AirReflection::Node::node_as_RValueReferenceType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528407) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RValueReferenceType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RValueReferenceType", 0x21u);
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

uint64_t AirReflection::Node::node_as_ArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528408) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ArrayType", 0x17u);
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
  if (*v17 < 0xDu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[6];
    if (v18)
    {
      LODWORD(v18) = *(a1 + v18);
    }
  }

  data = v18;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_EnumType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528409) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::EnumType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.EnumType", 0x16u);
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
    v16 = (a1 + v15);
    v17 = *v16;
    p_data = (v16 + v17 + 4);
    v19 = *(v16 + v17);
    v20 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v20 = c;
    v19 = 4;
  }

  CC_SHA256_Update(v20, p_data, v19);
  v21 = (a1 - *a1);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = v22;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v23);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_RecordBase(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528410) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RecordBase::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RecordBase", 0x18u);
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
    v10 = v9;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v10);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_RecordField(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528411) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RecordField::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RecordField", 0x19u);
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
    v10 = v9;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v10);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v11 = (a1 - *a1);
  if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    p_data = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v17 = c;
    v16 = 4;
  }

  CC_SHA256_Update(v17, p_data, v16);
  v18 = (a1 - *a1);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = (a1 + v19 + *(a1 + v19));
    data = *v20;
    CC_SHA256_Update(c, &data, 4u);
    v21 = *v20;
    if (v21)
    {
      v22 = (v20 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v23 = *v22++;
        data = v23;
        CC_SHA256_Update(c, &data, 4u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v24 = (a1 - *a1);
  if (*v24 >= 0xFu)
  {
    v25 = v24[7];
    if (v25)
    {
      return AirReflection::BitfieldInfo::HashImpl((a1 + v25), c);
    }
  }

  data = 0;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_StructType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528412) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StructType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StructType", 0x18u);
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
    v16 = (a1 + v15);
    v17 = *v16;
    p_data = (v16 + v17 + 4);
    v19 = *(v16 + v17);
    v20 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v20 = c;
    v19 = 4;
  }

  CC_SHA256_Update(v20, p_data, v19);
  v21 = (a1 - *a1);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = (a1 + v22 + *(a1 + v22));
    data = *v23;
    result = CC_SHA256_Update(c, &data, 4u);
    v25 = *v23;
    if (v25)
    {
      v26 = (v23 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v27 = *v26++;
        data = v27;
        result = CC_SHA256_Update(c, &data, 4u);
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_UnionType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 528413) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UnionType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UnionType", 0x17u);
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
    v16 = (a1 + v15);
    v17 = *v16;
    p_data = (v16 + v17 + 4);
    v19 = *(v16 + v17);
    v20 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v20 = c;
    v19 = 4;
  }

  CC_SHA256_Update(v20, p_data, v19);
  v21 = (a1 - *a1);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = (a1 + v22 + *(a1 + v22));
    data = *v23;
    result = CC_SHA256_Update(c, &data, 4u);
    v25 = *v23;
    if (v25)
    {
      v26 = (v23 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v27 = *v26++;
        data = v27;
        result = CC_SHA256_Update(c, &data, 4u);
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}