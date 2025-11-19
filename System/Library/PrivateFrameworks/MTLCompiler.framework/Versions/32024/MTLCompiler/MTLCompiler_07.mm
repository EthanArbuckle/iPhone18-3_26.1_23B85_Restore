uint64_t AirReflection::Node::node_as_ArrayOfType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 532480)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ArrayOfType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ArrayOfType", 0x19u);
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

uint64_t AirReflection::Node::node_as_ArrayRefOfType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532481) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ArrayRefOfType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ArrayRefOfType", 0x1Cu);
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

uint64_t AirReflection::Node::node_as_Texture1dType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532482) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture1dType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture1dType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_Texture1dArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532483) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture1dArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture1dArrayType", 0x20u);
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

uint64_t AirReflection::Node::node_as_Texture2dType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532484) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture2dType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture2dType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_Texture2dArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532485) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture2dArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture2dArrayType", 0x20u);
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

uint64_t AirReflection::Node::node_as_Texture3dType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532486) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture3dType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture3dType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_TextureCubeType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532487) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TextureCubeType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TextureCubeType", 0x1Du);
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

uint64_t AirReflection::Node::node_as_TextureCubeArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532488) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TextureCubeArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TextureCubeArrayType", 0x22u);
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

uint64_t AirReflection::Node::node_as_Texture2dMsType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532489) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture2dMsType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture2dMsType", 0x1Du);
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

uint64_t AirReflection::Node::node_as_Texture2dMsArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532490) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Texture2dMsArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Texture2dMsArrayType", 0x22u);
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

uint64_t AirReflection::Node::node_as_TextureBuffer1dType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532491) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TextureBuffer1dType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TextureBuffer1dType", 0x21u);
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

uint64_t AirReflection::Node::node_as_Depth2dType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532492) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Depth2dType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Depth2dType", 0x19u);
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

uint64_t AirReflection::Node::node_as_Depth2dArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532493) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Depth2dArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Depth2dArrayType", 0x1Eu);
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

uint64_t AirReflection::Node::node_as_DepthCubeType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532494) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthCubeType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthCubeType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_DepthCubeArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532495) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthCubeArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthCubeArrayType", 0x20u);
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

uint64_t AirReflection::Node::node_as_Depth2dMsType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532496) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Depth2dMsType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Depth2dMsType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_Depth2dMsArrayType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532497) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Depth2dMsArrayType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Depth2dMsArrayType", 0x20u);
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

uint64_t AirReflection::Node::node_as_SamplerType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532498) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SamplerType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SamplerType", 0x19u);
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

uint64_t AirReflection::Node::node_as_PatchControlPointType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532499) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PatchControlPointType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PatchControlPointType", 0x23u);
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

uint64_t AirReflection::Node::node_as_ImageblockType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532500) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockType", 0x1Cu);
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
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LODWORD(v15) = *(a1 + v15);
    }
  }

  data = v15;
  CC_SHA256_Update(c, &data, 4u);
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

uint64_t AirReflection::Node::node_as_R8UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532501) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::R8UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.R8UNormType", 0x19u);
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

uint64_t AirReflection::Node::node_as_R8SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532502) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::R8SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.R8SNormType", 0x19u);
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

uint64_t AirReflection::Node::node_as_R16UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532503) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::R16UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.R16UNormType", 0x1Au);
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

uint64_t AirReflection::Node::node_as_R16SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532504) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::R16SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.R16SNormType", 0x1Au);
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

uint64_t AirReflection::Node::node_as_RG8UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532505) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RG8UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RG8UNormType", 0x1Au);
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

uint64_t AirReflection::Node::node_as_RG8SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532506) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RG8SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RG8SNormType", 0x1Au);
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

uint64_t AirReflection::Node::node_as_RG16UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532507) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RG16UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RG16UNormType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_RG16SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532508) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RG16SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RG16SNormType", 0x1Bu);
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

uint64_t AirReflection::Node::node_as_RGBA8UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532509) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGBA8UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGBA8UNormType", 0x1Cu);
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

uint64_t AirReflection::Node::node_as_RGBA8SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532510) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGBA8SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGBA8SNormType", 0x1Cu);
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

uint64_t AirReflection::Node::node_as_RGBA16UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532511) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGBA16UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGBA16UNormType", 0x1Du);
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

uint64_t AirReflection::Node::node_as_RGBA16SNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532512) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGBA16SNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGBA16SNormType", 0x1Du);
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

uint64_t AirReflection::Node::node_as_SRGBA8UNormType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532513) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SRGBA8UNormType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SRGBA8UNormType", 0x1Du);
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

uint64_t AirReflection::Node::node_as_RGB10A2Type(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532514) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RGB10A2Type::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RGB10A2Type", 0x19u);
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
      v22 = xmmword_213C7D430;
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

uint64_t llvm::IRBuilderBase::CreateUDiv(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 104))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
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

void sub_213C501CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_213C50294(_Unwind_Exception *a1)
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

void sub_213C51360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::formatIsValid(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char a10)
{
  v16 = *(a2 - 8 * *(a2 + 8) + 8 * a3);
  *a7 = 0;
  String = llvm::MDString::getString(*(v16 - 8 * *(v16 + 8) + 8 * (a8 ^ 1u)));
  if (v18 == 9)
  {
    v26 = *String == 0x747065642E726961 && *(String + 8) == 104;
    if (!v26 || (*(a1 + 8) & 1) != 0 || !*(a6 + 12) && (a10 & 1) != 0)
    {
      return 1;
    }

    MTLPixelFormatGetInfoForDevice();
    MTLCompilerErrorObject::setErrorMessage(*a1, "depthAttachmentPixelFormat is not valid and shader writes to depth");
  }

  else
  {
    if (v18 != 17)
    {
      return 1;
    }

    v19 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
    if (!v19 || *(String + 16) != 116)
    {
      return 1;
    }

    *a7 = 1;
    v21 = v16 - 8 * *(v16 + 8);
    v22 = 16;
    if (a8)
    {
      v22 = 8;
    }

    v23 = *(*(v21 + v22) + 128);
    if (*(v23 + 16) == 16)
    {
      v24 = (v23 + 24);
      if (*(v23 + 32) >= 0x41u)
      {
        v24 = *v24;
      }

      v25 = *v24;
    }

    else
    {
      v25 = -1;
    }

    v27 = *(a5 + 8 * v25);
    *(a7 + 2) = v25;
    if (a8)
    {
      v28 = *(*(v21 + 16) + 128);
      if (*(v28 + 16) == 16)
      {
        v29 = (v28 + 24);
        if (*(v28 + 32) >= 0x41u)
        {
          v29 = *v29;
        }

        v30 = *v29;
      }

      else
      {
        v30 = -1;
      }

      *(a7 + 4) = v30;
    }

    if (MTLCheckPixelFormatValidPass::pixelColorFormatValid(a1, v27, a4, v16, a8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTLCheckPixelFormatValidPass::checkPixelFormatValid(char ***a1, llvm::Module *this, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v50 = *MEMORY[0x277D85DE8];
  *&v47[0] = "air.fragment";
  LOWORD(v48) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v47);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = (Operand - 8 * *(Operand + 8));
  v13 = v12[1];
  v43 = *(*v12 + 128);
  v14 = **(*(v43 + 3) + 16);
  v15 = *(v13 + 8);
  v45 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  v16 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v17 = 0;
    do
    {
      if (v16 > 8 || (v18 = *(a4 + 2 * v17), (v18 & 0xF) >= 8))
      {
        MTLCompiler_InvalidSerializedFragmentData(a3, v17);
      }

      *(v47 + (v18 & 0xF)) = v18 >> 4;
      ++v17;
    }

    while (v16 != v17);
  }

  if (v15)
  {
    v42 = Operand;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v14;
      if (*(v14 + 8) == 16)
      {
        v22 = *(*(v14 + 16) + 8 * v19);
      }

      result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v13, v19, v22, v47, a3, &v46, 1, 0, a6);
      if (!result)
      {
        break;
      }

      if (v46 == 1)
      {
        v24 = 1 << SBYTE2(v46);
        if (WORD2(v46))
        {
          v20 |= v24;
        }

        else
        {
          v21 |= v24;
        }
      }

      if (v15 == ++v19)
      {
        v45 = v20;
        Operand = v42;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v21 = 0;
LABEL_18:
    v25 = 0;
    v46 = v21;
    v26 = *(a3 + 8);
    v27 = BYTE2(v26);
    v28 = BYTE1(v26);
    while (2)
    {
      v29 = 0;
      v30 = 1;
      v31 = &v46;
      do
      {
        v32 = v30;
        if (v30)
        {
          v33 = v28;
        }

        else
        {
          v33 = v27;
        }

        if (((1 << v25) & v33) != 0 && (*v31 & (1 << v25)) == 0)
        {
          MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Fragment shader does not write to render target color(0), index(%u) that is required for blending", v29);
          result = 0;
          goto LABEL_39;
        }

        v30 = 0;
        v29 = 1;
        v31 = &v45;
      }

      while ((v32 & 1) != 0);
      if (++v25 != 8)
      {
        continue;
      }

      break;
    }

    v34 = *(Operand - 8 * *(Operand + 8) + 16);
    if (*(v43 + 9))
    {
      llvm::Function::BuildLazyArguments(v43);
    }

    if (v34 && (v35 = *(v34 + 8)) != 0)
    {
      v36 = 0;
      v37 = *(v43 + 11);
      v38 = v35 - 1;
      do
      {
        v39 = *v37;
        v37 += 5;
        result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v34, v36, v39, v47, a3, v44, 0, 0, a6);
        if (result)
        {
          v40 = v38 == v36;
        }

        else
        {
          v40 = 1;
        }

        ++v36;
      }

      while (!v40);
    }

    else
    {
      result = 1;
    }
  }

LABEL_39:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *MTLCompiler_InvalidSerializedFragmentData(void *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0xB4uLL, "Invalid serialized fragment data: %u\n%016zx %016zx %016zx %016zx %016zx %016zx %016zx %016zx", a2, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  v2 = abort_with_reason();
  return MTLFrameworkPass::truncateVector(v2, v3, v4, v5);
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

void sub_213C51A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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

void sub_213C51C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
    v19 = &unk_213C7E907;
  }

  else
  {
    v19 = off_278171738[a5 - 1];
  }

  strlen(v19);
  v23[v16] = llvm::MDString::get();
  if ((a6 - 1) > 2)
  {
    v20 = &unk_213C7E907;
  }

  else
  {
    v20 = off_278171758[a6 - 1];
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
    return &unk_213C7E907;
  }

  else
  {
    return off_278171738[this - 1];
  }
}

char *MTLFrameworkPass::interpolationStringFromQualifier(MTLFrameworkPass *this)
{
  if ((this - 1) > 2)
  {
    return &unk_213C7E907;
  }

  else
  {
    return off_278171758[this - 1];
  }
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

void sub_213C52338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_213C524AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t MTLFrameworkPass::callFunction(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7)
{
  if (__s)
  {
    strlen(__s);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (a6)
    {
      v27 = a5;
      v14 = 0;
      v15 = 8 * a6;
      do
      {
        v16 = **a5;
        if (v14 >= v32)
        {
          v17 = (v14 - __p) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v32 - __p) >> 2;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v19);
          }

          v20 = (8 * v17);
          *v20 = v16;
          v14 = (8 * v17 + 8);
          v21 = v20 - (v31 - __p);
          memcpy(v21, __p, v31 - __p);
          v22 = __p;
          __p = v21;
          v31 = v14;
          v32 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v16;
          v14 += 8;
        }

        v31 = v14;
        ++a5;
        v15 -= 8;
      }

      while (v15);
      a5 = v27;
    }

    v23 = llvm::FunctionType::get();
    v24 = 1;
    HIBYTE(v29) = 1;
    if (*__s)
    {
      v28[0] = __s;
      v24 = 3;
    }

    LOBYTE(v29) = v24;
    Function = llvm::Function::Create(v23, 0, v28, a1);
    *(Function + 112) = a7;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v25 = *(Function + 24);
  v29 = 257;
  return llvm::IRBuilderBase::CreateCall(a2, v25, Function, a5, a6, v28, 0);
}