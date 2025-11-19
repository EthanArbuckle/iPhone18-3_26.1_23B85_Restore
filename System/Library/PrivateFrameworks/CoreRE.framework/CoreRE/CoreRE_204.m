uint64_t re::OPackReader::readObject(re::OPackReader *this, int a2)
{
  result = re::zerocopy::OPackTokenizer::readToken(this + 6, this + 192);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 196);
  if ((v5 - 12) > 5)
  {
    if ((v5 & 0xFE) != 0xA)
    {
      goto LABEL_10;
    }

    v8 = *(this + 25);
    if (v8 == *(this + 27))
    {
      goto LABEL_10;
    }

    if (*(this + 33) < v8)
    {
      goto LABEL_16;
    }

    *(this + 31) = *(this + 30);
    if (v8 != -1 && (re::OPackReader::Buffer::resize((this + 240), v8) & 1) == 0)
    {
      result = 0;
      *(this + 1) = 1;
      v9 = "out of memory when allocating multipart buffer";
      goto LABEL_17;
    }

    v10 = 1;
    while (1)
    {
      v11 = *(this + 48);
      if (v11 != 2)
      {
        break;
      }

      if ((v10 & 1) != 0 && (v13 = *(this + 26), v12 = *(this + 27), re::OPackReader::Buffer::resize((this + 240), v12 + *(this + 31) - *(this + 30))))
      {
        memcpy(*(this + 31), v13, v12);
        *(this + 31) += v12;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if ((re::zerocopy::OPackTokenizer::readToken(this + 6, this + 192) & 1) == 0)
      {
        result = 0;
        *(this + 1) = 1;
        v9 = "unable to read next chunk";
        goto LABEL_17;
      }
    }

    if (v11 == 3)
    {
      if (v10)
      {
        v15 = *(this + 26);
        v14 = *(this + 27);
        if (re::OPackReader::Buffer::resize((this + 240), v14 + *(this + 31) - *(this + 30)))
        {
          memcpy(*(this + 31), v15, v14);
          v16 = *(this + 31) + v14;
          *(this + 31) = v16;
LABEL_46:
          v17 = *(this + 30);
          *(this + 26) = v17;
          *(this + 27) = v16 - v17;
LABEL_10:
          result = 1;
          *(this + 184) = 1;
          *(this + 47) = a2;
          return result;
        }
      }
    }

    else if (v10)
    {
      v16 = *(this + 31);
      goto LABEL_46;
    }

LABEL_16:
    result = 0;
    *(this + 1) = 1;
    v9 = "multipart buffer exceeded maximum data length";
LABEL_17:
    *(this + 1) = v9;
    return result;
  }

  v6 = *(this + 25);
  if (*(this + 196) <= 0xEu)
  {
    if (v5 == 12)
    {
      result = re::OPackReader::beginState(this, 1u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 2;
    }

    else if (v5 == 13)
    {
      result = re::OPackReader::beginState(this, 2u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 4;
    }

    else
    {
      result = re::OPackReader::beginState(this, 3u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 6;
    }

    goto LABEL_24;
  }

  if (v5 == 15)
  {
    result = re::OPackReader::beginState(this, 5u, v6);
    if (!result)
    {
      return result;
    }

    v7 = 8;
    goto LABEL_24;
  }

  if (v5 == 16)
  {
    result = re::OPackReader::beginState(this, 7u, v6);
    if (!result)
    {
      return result;
    }

    v7 = 10;
LABEL_24:
    *(this + 184) = v7;
LABEL_25:
    *(this + 47) = a2;
    return 1;
  }

  result = re::OPackReader::beginState(this, 6u, v6);
  if (result)
  {
    *(this + 184) = 6;
    goto LABEL_25;
  }

  return result;
}

uint64_t re::OPackReader::readArray(re::OPackReader *this)
{
  v2 = *(this + 44);
  v3 = *(this + 46) + 24 * v2;
  if (*(v3 - 23) != 1)
  {
    result = re::OPackReader::readObject(this, 1);
    if (!result)
    {
      return result;
    }

    if (*(this + 196) != 1)
    {
      return 1;
    }

    v6 = *(this + 44) - 1;
    *(this + 44) = v6;
    ++*(this + 90);
    if (v6 == 1)
    {
      *this = 1;
    }

LABEL_12:
    *(this + 184) = 3;
    *(this + 47) = 0;
    return 1;
  }

  v4 = *(v3 - 16);
  if (!v4)
  {
    *(this + 48) = 1;
    *(this + 196) = 1;
    v7 = v2 - 1;
    *(this + 44) = v7;
    ++*(this + 90);
    if (v7 == 1)
    {
      *this = 1;
    }

    goto LABEL_12;
  }

  *(v3 - 16) = v4 - 1;

  return re::OPackReader::readObject(this, 1);
}

uint64_t re::OPackReader::readDictionary(re::OPackReader *this)
{
  v2 = *(this + 44);
  v3 = *(this + 46) + 24 * v2;
  v4 = *(v3 - 8);
  if (*(v3 - 23) != 1)
  {
    if (!v4)
    {
      *(v3 - 8) = 1;

      return re::OPackReader::readDictionaryEntry(this, 2, 0, 5, 0);
    }

LABEL_6:
    *(v3 - 8) = 0;
    v6 = 4;
LABEL_7:
    result = re::OPackReader::readObject(this, v6);
    if (result)
    {
      result = 1;
      if (*(this + 196) == 1)
      {
        *(this + 1) = 1;
        *(this + 1) = "unexpected terminator when reading dictionary entry";
        return 0;
      }
    }

    return result;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 - 16);
  if (v5)
  {
    *(v3 - 16) = v5 - 1;
    *(v3 - 8) = 1;
    v6 = 2;
    goto LABEL_7;
  }

  *(this + 48) = 1;
  *(this + 196) = 1;
  v8 = v2 - 1;
  *(this + 44) = v8;
  ++*(this + 90);
  if (v8 == 1)
  {
    *this = 1;
  }

  *(this + 184) = 5;
  *(this + 47) = 0;
  return 1;
}

uint64_t re::OPackReader::readChunkedData(re::OPackReader *this)
{
  result = re::OPackReader::readObject(this, 8);
  if (result)
  {
    v3 = *(this + 196);
    if (v3 == 11)
    {
      result = 1;
      *(this + 184) = 1;
      *(this + 47) = 8;
    }

    else if (v3 == 1)
    {
      v4 = *(this + 44) - 1;
      *(this + 44) = v4;
      ++*(this + 90);
      if (v4 == 1)
      {
        *this = 1;
      }

      *(this + 184) = 6;
      *(this + 47) = 0;
      return 1;
    }

    else
    {
      result = 0;
      *(this + 1) = 1;
      *(this + 1) = "unexpected token reading chunked data";
    }
  }

  return result;
}

uint64_t re::OPackReader::readExtArrayDelta(re::OPackReader *this)
{
  v2 = *(this + 46) + 24 * *(this + 44);
  v3 = *(v2 - 8);
  if (v3 == 1)
  {
    result = re::OPackReader::readObject(this, 32);
    if (result)
    {
      if (*(this + 196) == 1)
      {
        v5 = *(this + 44) - 1;
        *(this + 44) = v5;
        ++*(this + 90);
        if (v5 == 1)
        {
          *this = 1;
        }

        *(this + 184) = 9;
        *(this + 47) = 0;
      }

      else
      {
        *(v2 - 8) = 0;
      }

      return 1;
    }
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    result = re::OPackReader::readObject(this, 16);
    if (!result)
    {
      return result;
    }

    if (*(this + 196) != 6)
    {
      return 0;
    }

    else
    {
      result = 1;
      *(v2 - 8) = 1;
    }
  }

  return result;
}

uint64_t re::OPackReader::readExtDictionaryDelta(re::OPackReader *this)
{
  v2 = *(this + 46) + 24 * *(this + 44);
  if (*(v2 - 8))
  {
    *(v2 - 8) = 0;
    result = re::OPackReader::readObject(this, 132);
    if (result)
    {
      result = 1;
      if (*(this + 196) == 1)
      {
        *(this + 184) = 1;
        *(this + 47) = 132;
      }
    }
  }

  else
  {
    *(v2 - 8) = 1;

    return re::OPackReader::readDictionaryEntry(this, 66, 0, 11, 0);
  }

  return result;
}

BOOL re::OPackReader::beginState(uint64_t a1, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(a1 + 352);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    *(a1 + 1) = 1;
    *(a1 + 8) = "max depth exceeded";
  }

  else
  {
    v6.n128_u8[0] = a2;
    v6.n128_u8[1] = a3 != -1;
    v6.n128_u64[1] = a3;
    v7 = 0;
    re::DynamicArray<re::BufferView>::add((a1 + 336), &v6);
  }

  return v3 < v4;
}

uint64_t re::OPackReader::readDictionaryEntry(uint64_t a1, int a2, uint64_t a3, char a4, int a5)
{
  result = re::OPackReader::readObject(a1, a2);
  if (result)
  {
    if (*(a1 + 196) == 1)
    {
      if (a5)
      {
        if (a5 == 2)
        {
          result = 1;
          *(a1 + 184) = 1;
          *(a1 + 188) = a2;
          return result;
        }

        if (a5 == 1)
        {
          result = 0;
          *(a1 + 1) = 1;
          *(a1 + 8) = "unexpected terminator when reading dictionary entry";
          return result;
        }
      }

      else
      {
        v10 = *(a1 + 352) - 1;
        *(a1 + 352) = v10;
        ++*(a1 + 360);
        if (v10 == 1)
        {
          *a1 = 1;
        }

        *(a1 + 184) = a4;
        *(a1 + 188) = 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readToken(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return re::zerocopy::OPackTokenizer::readTag(a1, a2);
    }

    if (v2 == 1)
    {
      return re::zerocopy::OPackTokenizer::readPrimitive(a1, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return re::zerocopy::OPackTokenizer::readLengthPrefixed(a1, a2);
      case 3:
        return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
      case 4:
        return re::zerocopy::OPackTokenizer::readNullTerminated(a1, a2);
    }
  }

  return 0;
}

uint64_t re::zerocopy::OPackTokenizer::readTag(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  if ((re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), 1, v22) & 1) == 0)
  {
    result = 0;
    *a2 = 0;
    goto LABEL_8;
  }

  memcpy(&__dst, v22[0], v22[1]);
  v4 = __dst;
  if (__dst <= 2u)
  {
    switch(__dst)
    {
      case 0u:
        result = 1;
        *a2 = 1;
        *(a2 + 4) = 0;
        goto LABEL_27;
      case 1u:
        result = 1;
        *(a2 + 32) = 1;
        *a2 = 1;
        LOBYTE(v4) = 2;
        goto LABEL_26;
      case 2u:
        *(a2 + 32) = 0;
        result = 1;
        *a2 = 1;
        goto LABEL_26;
    }
  }

  else
  {
    if (__dst <= 4u)
    {
      if (__dst != 3)
      {
        if (__dst == 4)
        {
          result = 1;
          *a2 = 1;
          LOBYTE(v4) = 3;
LABEL_26:
          *(a2 + 4) = v4;
          goto LABEL_27;
        }

        goto LABEL_18;
      }

      result = 1;
      *a2 = 1;
      *(a2 + 4) = 1;
LABEL_27:
      *a1 = 0;
      return result;
    }

    if (__dst == 5)
    {
      *a1 = 1;
      *(a1 + 4) = 4;
      v7 = 16;
      goto LABEL_22;
    }

    if (__dst == 6)
    {
      *a1 = 1;
      v6 = 5;
      goto LABEL_16;
    }
  }

LABEL_18:
  if (__dst - 7 <= 0x28)
  {
    *(a2 + 32) = __dst - 8;
    result = 1;
    *a2 = 1;
    LOBYTE(v4) = 6;
    goto LABEL_26;
  }

  if (__dst > 0x32u)
  {
    if (__dst != 51)
    {
      if (__dst == 53)
      {
        *a1 = 1;
        v8 = 7;
        goto LABEL_50;
      }

      if (__dst != 54)
      {
        goto LABEL_41;
      }

      *a1 = 1;
      v7 = 8;
      *(a1 + 4) = 8;
LABEL_22:
      *(a1 + 8) = vdupq_n_s64(v7);

      return re::zerocopy::OPackTokenizer::readPrimitive(a1, a2);
    }

    *a1 = 1;
    v6 = 6;
LABEL_16:
    *(a1 + 4) = v6;
    v7 = 8;
    goto LABEL_22;
  }

  switch(__dst)
  {
    case '0':
      v7 = 1;
      *a1 = 1;
      v9 = 6;
LABEL_39:
      *(a1 + 4) = v9;
      goto LABEL_22;
    case '1':
      *a1 = 1;
      v13 = 6;
LABEL_48:
      *(a1 + 4) = v13;
      v7 = 2;
      goto LABEL_22;
    case '2':
      *a1 = 1;
      v8 = 6;
LABEL_50:
      *(a1 + 4) = v8;
      v7 = 4;
      goto LABEL_22;
  }

LABEL_41:
  if (__dst - 64 > 0x20)
  {
    if (__dst <= 0x62u)
    {
      if (__dst == 97)
      {
        *a1 = 2;
        v18 = 10;
        goto LABEL_68;
      }

      if (__dst == 98)
      {
        v14 = 2;
        *a1 = 2;
        v15 = 10;
LABEL_61:
        *(a1 + 4) = v15;
LABEL_69:
        *(a1 + 8) = v14;

        return re::zerocopy::OPackTokenizer::readLengthPrefixed(a1, a2);
      }
    }

    else
    {
      switch(__dst)
      {
        case 'c':
          *a1 = 2;
          v16 = 10;
LABEL_64:
          *(a1 + 4) = v16;
          v14 = 4;
          goto LABEL_69;
        case 'd':
          *a1 = 2;
          v17 = 10;
LABEL_66:
          *(a1 + 4) = v17;
          v14 = 8;
          goto LABEL_69;
        case 'o':
          *a1 = 4;
          *(a1 + 4) = 10;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;

          return re::zerocopy::OPackTokenizer::readNullTerminated(a1, a2);
      }
    }

    if (__dst - 112 <= 0x20)
    {
      *a1 = 3;
      v10 = 11;
      *(a1 + 4) = 11;
      v12 = (v4 - 112);
      v11 = v12 == 0;
      goto LABEL_43;
    }

    if (__dst > 0x92u)
    {
      if (__dst != 147)
      {
        if (__dst != 148)
        {
          if (__dst == 159)
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 14;
            goto LABEL_26;
          }

          goto LABEL_85;
        }

        *a1 = 2;
        v17 = 11;
        goto LABEL_66;
      }

      *a1 = 2;
      v16 = 11;
      goto LABEL_64;
    }

    if (__dst != 145)
    {
      if (__dst != 146)
      {
LABEL_85:
        if (__dst - 160 <= 0x20)
        {
          *(a2 + 32) = __dst - 160;
          result = 1;
          *a2 = 1;
          LOBYTE(v4) = 9;
          goto LABEL_26;
        }

        if (__dst > 0xC2u)
        {
          if (__dst == 195)
          {
            *a1 = 1;
            *(a1 + 4) = 9;
            v7 = 3;
            goto LABEL_22;
          }

          if (__dst == 196)
          {
            *a1 = 1;
            v8 = 9;
            goto LABEL_50;
          }

LABEL_94:
          v19 = __dst - 208;
          if (v19 <= 0xE)
          {
            *(a2 + 8) = v19;
LABEL_100:
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 12;
            goto LABEL_26;
          }

          if (__dst == 223)
          {
            *(a2 + 8) = -1;
            goto LABEL_100;
          }

          v20 = __dst - 224;
          if (v20 <= 0xE)
          {
            *(a2 + 8) = v20;
LABEL_105:
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 13;
            goto LABEL_26;
          }

          if (__dst == 239)
          {
            *(a2 + 8) = -1;
            goto LABEL_105;
          }

          if (__dst == 240 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 15;
            goto LABEL_26;
          }

          if (__dst == 241 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 16;
            goto LABEL_26;
          }

          if (__dst == 242 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 17;
            goto LABEL_26;
          }

          if (*a1 != 5)
          {
            *a1 = 5;
          }

          result = 0;
          *a2 = 4;
LABEL_8:
          *(a2 + 4) = 0;
          return result;
        }

        if (__dst != 193)
        {
          if (__dst == 194)
          {
            *a1 = 1;
            v13 = 9;
            goto LABEL_48;
          }

          goto LABEL_94;
        }

        v7 = 1;
        *a1 = 1;
        v9 = 9;
        goto LABEL_39;
      }

      v14 = 2;
      *a1 = 2;
      v15 = 11;
      goto LABEL_61;
    }

    *a1 = 2;
    v18 = 11;
LABEL_68:
    *(a1 + 4) = v18;
    v14 = 1;
    goto LABEL_69;
  }

  *a1 = 3;
  v10 = 10;
  *(a1 + 4) = 10;
  v12 = (v4 - 64);
  v11 = v12 == 0;
LABEL_43:
  *(a1 + 8) = v12;
  *(a1 + 16) = v12;
  if (v11)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a2 = 3;
    *(a2 + 4) = v10;
    result = 1;
    goto LABEL_27;
  }

  return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
}

uint64_t re::zerocopy::OPackTokenizer::readPrimitive(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), *(a1 + 8), v5);
  if (result)
  {
    return re::zerocopy::OPackTokenizer::endPrimitive(a1, a2, v5);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readLengthPrefixed(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), *(a1 + 8), v5);
  if (result)
  {
    return re::zerocopy::OPackTokenizer::endLengthPrefixed(a1, a2, *(a1 + 4), v5);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readChunks(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::boundedRead(a1 + 32, *(a1 + 16), &v9);
  if (result)
  {
    v6 = v9;
    v5 = v10;
    *(a2 + 24) = v10;
    v7 = *(a1 + 16);
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v6;
    v8 = v7 - v5;
    *(a1 + 16) = v8;
    if (v8)
    {
      *a2 = 2;
      *(a2 + 4) = *(a1 + 4);
    }

    else
    {
      *a2 = 3;
      *(a2 + 4) = *(a1 + 4);
      *a1 = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readNullTerminated(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  if (v5 == v4)
  {
    v6 = *(a1 + 56);
    if (!v6)
    {
      result = re::zerocopy::BufferedReadStream::nextFromStream((a1 + 32));
      if (!result)
      {
        *a2 = 0;
        *(a2 + 4) = 0;
        return result;
      }

      v6 = *(a1 + 56);
    }

    v5 = *(a1 + 48);
  }

  else
  {
    v6 = v4 - v5;
  }

  if (v6 < 1)
  {
LABEL_11:
    *(a2 + 24) = v6;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v5;
    *a2 = 2;
    *(a2 + 4) = *(a1 + 4);
  }

  else
  {
    v8 = 0;
    while (*(v5 + v8))
    {
      ++v8;
      if (v5 + v8 >= (v5 + v6))
      {
        goto LABEL_11;
      }
    }

    re::zerocopy::BufferedReadStream::advanceRead((a1 + 32), v8 + 1);
    *(a2 + 24) = v8;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v5;
    *a2 = 3;
    *(a2 + 4) = *(a1 + 4);
    *a1 = 0;
  }

  return 1;
}

uint64_t re::zerocopy::OPackTokenizer::endLengthPrefixed(uint64_t a1, uint64_t a2, char a3, unsigned int **a4)
{
  v4 = a4[1];
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v5 = **a4;
      goto LABEL_13;
    }

    if (v4 == 8)
    {
      v5 = **a4;
      goto LABEL_13;
    }

LABEL_8:
    if (*a1 != 5)
    {
      *a1 = 5;
    }

    v6 = 0;
    *a2 = 4;
    *(a2 + 4) = 0;
    return v6;
  }

  if (v4 == 1)
  {
    v5 = **a4;
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    goto LABEL_8;
  }

  v5 = **a4;
LABEL_13:
  *a1 = 3;
  *(a1 + 4) = a3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  if (v5)
  {
    return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 3;
  *(a2 + 4) = a3;
  v6 = 1;
  *a1 = 0;
  return v6;
}

uint64_t re::zerocopy::OPackTokenizer::endPrimitive(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  v3 = *(a1 + 4);
  if (v3 <= 6)
  {
    if (v3 == 4)
    {
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 4;
    }

    else
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v4 = *a3;
          v5 = a3[1];
          if (v5 > 3)
          {
            if (v5 == 4)
            {
              v6 = *v4;
              goto LABEL_32;
            }

            if (v5 == 8)
            {
              v6 = *v4;
              goto LABEL_32;
            }
          }

          else
          {
            if (v5 == 1)
            {
              v6 = *v4;
              goto LABEL_32;
            }

            if (v5 == 2)
            {
              v6 = *v4;
LABEL_32:
              *(a2 + 32) = v6;
              v10 = 1;
              *a2 = 1;
              v11 = 6;
              goto LABEL_35;
            }
          }
        }

        goto LABEL_26;
      }

      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 5;
    }

LABEL_35:
    *(a2 + 4) = v11;
    *a1 = 0;
    return v10;
  }

  switch(v3)
  {
    case 7u:
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 7;
      goto LABEL_35;
    case 8u:
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 8;
      goto LABEL_35;
    case 9u:
      v7 = *a3;
      v8 = a3[1];
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = *v7 | (*(v7 + 2) << 16);
        }

        else
        {
          if (v8 != 4)
          {
            break;
          }

          v9 = *v7;
        }
      }

      else if (v8 == 1)
      {
        v9 = *v7;
      }

      else
      {
        if (v8 != 2)
        {
          break;
        }

        v9 = *v7;
      }

      *(a2 + 32) = v9;
      v10 = 1;
      *a2 = 1;
      v11 = 9;
      goto LABEL_35;
  }

LABEL_26:
  if (*a1 != 5)
  {
    *a1 = 5;
  }

  v10 = 0;
  *a2 = 4;
  *(a2 + 4) = 0;
  return v10;
}

re::zerocopy::DispatchReadStream *re::zerocopy::DispatchReadStream::DispatchReadStream(re::zerocopy::DispatchReadStream *this, void *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F5D0C948;
  *(this + 25) = this + 8;
  *(this + 13) = xmmword_1E30B5C10;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0;
  dispatch_data_apply_f();
  return this;
}

void re::zerocopy::DispatchReadStream::~DispatchReadStream(NSObject *this)
{
  v1 = this;
  this->isa = &unk_1F5D0C948;
  isa = this[25].isa;
  if (isa != &this[1])
  {
    v3 = this[26].isa;
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = v1[25].isa;
        this = *(v6 + v4);
        if (this)
        {
          dispatch_release(this);
          *(v6 + v4) = 0;
          v3 = v1[26].isa;
        }

        v4 += 24;
      }

      isa = v1[25].isa;
    }

    if (isa)
    {
      v7 = re::globalAllocators(this);
      (*(*v7[2] + 40))(v7[2], isa);
    }

    v1[25].isa = 0;
  }

  for (j = 22; j != -2; j -= 3)
  {
    v9 = v1[j].isa;
    if (v9)
    {
      dispatch_release(v9);
      v1[j].isa = 0;
    }
  }
}

{
  re::zerocopy::DispatchReadStream::~DispatchReadStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::DispatchReadStream::nextRead(void *a1, unint64_t *a2)
{
  v2 = a1[28];
  v3 = a1[26];
  if (v2 < v3)
  {
    v4 = a1[29];
    v5 = a1[25];
    if (v4 < *(v5 + 24 * v2 + 16))
    {
LABEL_5:
      v6 = v5 + 24 * v2;
      v7 = *(v6 + 8) + v4;
      v8 = *(v6 + 16) - v4;
      *a2 = v7;
      a2[1] = v8;
      return 1;
    }

    a1[28] = ++v2;
    a1[29] = 0;
    if (v2 < v3)
    {
      v4 = 0;
      goto LABEL_5;
    }
  }

  return 0;
}

void *re::zerocopy::DispatchReadStream::advanceRead(void *this, unint64_t a2)
{
  v2 = this[28];
  if (v2 < this[26])
  {
    v3 = this[29];
    v4 = *(this[25] + 24 * v2 + 16) - v3;
    if (v4 >= a2)
    {
      v4 = a2;
    }

    this[29] = v4 + v3;
  }

  return this;
}

uint64_t re::zerocopy::DispatchReadStream::DispatchReadStream(void *)::$_0::__invoke(re *a1, dispatch_object_t object, uint64_t a3, objc_class *a4, objc_class *a5)
{
  v9 = *(a1 + 26);
  if (v9 == *(a1 + 27))
  {
    v10 = 2 * v9;
    v11 = 48 * v9;
    v12 = re::globalAllocators(a1);
    v13 = (*(*v12[2] + 32))(v12[2], v11, 0);
    v14 = v13;
    v9 = *(a1 + 26);
    if (v9)
    {
      v15 = 0;
      for (i = 0; i < v9; ++i)
      {
        v17 = &v13[v15];
        v18 = *(a1 + 25) + v15 * 8;
        *&v17->isa = *v18;
        v17[2].isa = *(v18 + 16);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        v9 = *(a1 + 26);
        v15 += 3;
      }

      v19 = *(a1 + 25);
      if (v19 != (a1 + 8))
      {
        if (v9)
        {
          v20 = 0;
          for (j = 0; j < v9; ++j)
          {
            v22 = *(a1 + 25);
            v13 = *(v22 + v20);
            if (v13)
            {
              dispatch_release(v13);
              *(v22 + v20) = 0;
              v9 = *(a1 + 26);
            }

            v20 += 24;
          }

          v19 = *(a1 + 25);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v19 = *(a1 + 25);
      if (v19 != (a1 + 8))
      {
LABEL_14:
        if (v19)
        {
          v23 = re::globalAllocators(v13);
          (*(*v23[2] + 40))(v23[2], v19);
          v9 = *(a1 + 26);
        }
      }
    }

    *(a1 + 25) = v14;
    *(a1 + 27) = v10;
    goto LABEL_17;
  }

  v14 = *(a1 + 25);
LABEL_17:
  *(a1 + 26) = v9 + 1;
  v24 = &v14[3 * v9];
  dispatch_retain(object);
  v24->isa = object;
  v24[1].isa = a4;
  v24[2].isa = a5;
  return 1;
}

void re::zerocopy::FileWriteStream::~FileWriteStream(re::zerocopy::FileWriteStream *this)
{
  *this = &unk_1F5D0C9A0;
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    fclose(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1F5D0C9A0;
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    fclose(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::FileWriteStream::nextWrite(uint64_t a1, void *a2)
{
  *a2 = a1 + 17;
  a2[1] = 4096;
  return 1;
}

size_t re::zerocopy::FileWriteStream::advanceWrite(size_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (a2 >= 0x1000)
    {
      v3 = 4096;
    }

    else
    {
      v3 = a2;
    }

    return fwrite((this + 17), 1uLL, v3, v2);
  }

  return this;
}

uint64_t re::OPackWriter::writeInteger(re::zerocopy **this, uint64_t a2)
{
  v8 = a2;
  if ((a2 + 1) > 0x28)
  {
    if (a2 != a2)
    {
      LOBYTE(v7) = 51;
      re::zerocopy::writeAll(*this, &v7, 1);
      v3 = *this;
      v4 = &v8;
      v5 = 8;
      return re::zerocopy::writeAll(v3, v4, v5);
    }

    v9 = a2;
    LOBYTE(v7) = 48;
    re::zerocopy::writeAll(*this, &v7, 1);
    v3 = *this;
    v4 = &v9;
  }

  else
  {
    LOBYTE(v7) = a2 + 8;
    v3 = *this;
    v4 = &v7;
  }

  v5 = 1;
  return re::zerocopy::writeAll(v3, v4, v5);
}

uint64_t re::OPackWriter::writeFloat64(re::zerocopy **this, double a2)
{
  v4 = a2;
  v5 = 54;
  re::zerocopy::writeAll(*this, &v5, 1);
  return re::zerocopy::writeAll(*this, &v4, 8);
}

uint64_t re::OPackWriter::writeString(re::zerocopy **this, re::zerocopy::WriteStream *a2, unint64_t a3)
{
  if (a3 >= 0x21)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(v10) = 97;
      re::zerocopy::writeAll(*this, &v10, 1);
      LOBYTE(v10) = a3;
      v7 = *this;
      v8 = 1;
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(v10) = 100;
        re::zerocopy::writeAll(*this, &v10, 1);
        v10 = a3;
        v7 = *this;
        v8 = 8;
      }

      else
      {
        LOBYTE(v10) = 99;
        re::zerocopy::writeAll(*this, &v10, 1);
        LODWORD(v10) = a3;
        v7 = *this;
        v8 = 4;
      }
    }

    else
    {
      LOBYTE(v10) = 98;
      re::zerocopy::writeAll(*this, &v10, 1);
      LOWORD(v10) = a3;
      v7 = *this;
      v8 = 2;
    }

    re::zerocopy::writeAll(v7, &v10, v8);
  }

  else
  {
    LOBYTE(v10) = a3 | 0x40;
    result = re::zerocopy::writeAll(*this, &v10, 1);
    if (!a3)
    {
      return result;
    }
  }

  v9 = *this;

  return re::zerocopy::writeAll(v9, a2, a3);
}

uint64_t re::OPackWriter::writeData(re::zerocopy **this, re::zerocopy::WriteStream *a2, unint64_t a3)
{
  if (a3 >= 0x21)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(v10) = -111;
      re::zerocopy::writeAll(*this, &v10, 1);
      LOBYTE(v10) = a3;
      v7 = *this;
      v8 = 1;
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(v10) = -108;
        re::zerocopy::writeAll(*this, &v10, 1);
        v10 = a3;
        v7 = *this;
        v8 = 8;
      }

      else
      {
        LOBYTE(v10) = -109;
        re::zerocopy::writeAll(*this, &v10, 1);
        LODWORD(v10) = a3;
        v7 = *this;
        v8 = 4;
      }
    }

    else
    {
      LOBYTE(v10) = -110;
      re::zerocopy::writeAll(*this, &v10, 1);
      LOWORD(v10) = a3;
      v7 = *this;
      v8 = 2;
    }

    re::zerocopy::writeAll(v7, &v10, v8);
  }

  else
  {
    LOBYTE(v10) = a3 + 112;
    result = re::zerocopy::writeAll(*this, &v10, 1);
    if (!a3)
    {
      return result;
    }
  }

  v9 = *this;

  return re::zerocopy::writeAll(v9, a2, a3);
}

uint64_t re::OPackWriter::writeArrayBegin(re::zerocopy **this, unint64_t a2)
{
  if (a2 > 0xE)
  {
    v6 = -33;
    v2 = *this;
    v3 = &v6;
  }

  else
  {
    v5 = a2 | 0xD0;
    v2 = *this;
    v3 = &v5;
  }

  return re::zerocopy::writeAll(v2, v3, 1);
}

uint64_t re::OPackWriter::writeDictionaryBegin(re::zerocopy **this, unint64_t a2)
{
  if (a2 > 0xE)
  {
    v6 = -17;
    v2 = *this;
    v3 = &v6;
  }

  else
  {
    v5 = a2 | 0xE0;
    v2 = *this;
    v3 = &v5;
  }

  return re::zerocopy::writeAll(v2, v3, 1);
}

uint64_t re::zerocopy::DynamicWriteStream::nextWrite(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v6 = v4[1];
  v5 = v4[2];
  if (v5 == v6)
  {
    v7 = 2 * v5;
    if (v7 <= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    re::DynamicArray<BOOL>::setCapacity(v4, v8);
    v4 = *(a1 + 8);
    v6 = v4[1];
    v5 = v4[2];
  }

  *a2 = v4[4] + v5;
  a2[1] = v6 - v5;
  return 1;
}

void *re::zerocopy::DynamicWriteStream::advanceWrite(re::zerocopy::DynamicWriteStream *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2[2];
  v4 = v2[1] - v3;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  return re::DynamicArray<unsigned char>::resizeUninitialized(v2, v4 + v3);
}

uint64_t re::zerocopy::writeAll(re::zerocopy *this, re::zerocopy::WriteStream *a2, char *a3)
{
  v9 = 0;
  v10 = 0;
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = (*(*this + 16))(this, &v9);
    if (!v6)
    {
      break;
    }

    v7 = (v3 >= v10 ? v10 : v3);
    memcpy(v9, a2, v7);
    (*(*this + 24))(this, v7);
    a2 = (a2 + v7);
    v3 -= v7;
  }

  while (v3);
  return v6;
}

void re::zerocopy::BufferedReadStream::~BufferedReadStream(re::zerocopy::BufferedReadStream *this)
{
  v1 = this;
  *this = &unk_1F5D0CA50;
  if (*(this + 4))
  {
    this = (*(**(this + 1) + 24))(*(this + 1));
    *(v1 + 4) = 0;
  }

  v2 = *(v1 + 13);
  if (v2 != (v1 + 40) && v2 != 0)
  {
    v4 = re::globalAllocators(this);
    (*(*v4[2] + 40))(v4[2], v2);
  }

  *(v1 + 13) = 0;
  *(v1 + 14) = 0;
  *(v1 + 15) = 0;
}

{
  re::zerocopy::BufferedReadStream::~BufferedReadStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::BufferedReadStream::contiguousRead(re::zerocopy::BufferedReadStream *this, char *a2, void *a3)
{
  if (*(this + 13) != *(this + 14))
  {
    goto LABEL_2;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    result = re::zerocopy::BufferedReadStream::nextFromStream(this);
    if (!result)
    {
      return result;
    }

    v8 = *(this + 3);
  }

  if (v8 >= a2)
  {
    a3[1] = a2;
    v9 = *(this + 2);
    v10 = *(this + 3);
    *a3 = v9;
    if (v10 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    *(this + 2) = v9 + v11;
    *(this + 3) = v10 - v11;
    *(this + 4) += v11;
  }

  else
  {
LABEL_2:
    result = re::zerocopy::BufferedReadStream::fillInternal(this, a2);
    if (!result)
    {
      return result;
    }

    v7 = *(this + 13);
    *a3 = v7;
    a3[1] = a2;
    *(this + 14) = v7;
  }

  return 1;
}

uint64_t re::zerocopy::BufferedReadStream::nextFromStream(re::zerocopy::BufferedReadStream *this)
{
  if (*(this + 4))
  {
    (*(**(this + 1) + 24))(*(this + 1));
    *(this + 4) = 0;
  }

  v2 = *(**(this + 1) + 16);

  return v2();
}

uint64_t re::zerocopy::BufferedReadStream::fillInternal(re::zerocopy::BufferedReadStream *this, char *a2)
{
  v3 = *(this + 14);
  v4 = *(this + 13);
  if (&v3[-v4] < a2)
  {
    v6 = *(this + 3);
    do
    {
      if (!v6)
      {
        result = re::zerocopy::BufferedReadStream::nextFromStream(this);
        if (!result)
        {
          return result;
        }

        v4 = *(this + 13);
        v3 = *(this + 14);
        v6 = *(this + 3);
      }

      v8 = &a2[v4] - v3;
      if (v8 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      memcpy(v3, *(this + 2), v9);
      v10 = *(this + 3);
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = *(this + 3);
      }

      v6 = v10 - v11;
      *(this + 2) += v11;
      *(this + 3) = v6;
      *(this + 4) += v11;
      v4 = *(this + 13);
      v3 = (*(this + 14) + v9);
      *(this + 14) = v3;
    }

    while (&v3[-v4] < a2);
  }

  return 1;
}

uint64_t re::zerocopy::BufferedReadStream::boundedRead(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1, a3);
  if (v6)
  {
    if (*(a3 + 8) >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(a3 + 8);
    }

    *(a3 + 8) = v7;
    (*(*a1 + 24))(a1);
  }

  return v6;
}

uint64_t re::zerocopy::BufferedReadStream::nextRead(re::zerocopy::BufferedReadStream *this, void *a2)
{
  v3 = *(this + 13);
  v4 = *(this + 14);
  if (v3 != v4)
  {
    *a2 = v3;
    a2[1] = v4 - v3;
    return 1;
  }

  if (*(this + 3) || (result = re::zerocopy::BufferedReadStream::nextFromStream(this), result))
  {
    *a2 = *(this + 1);
    return 1;
  }

  return result;
}

char *re::zerocopy::BufferedReadStream::advanceRead(re::zerocopy::BufferedReadStream *this, unint64_t a2)
{
  result = *(this + 13);
  v4 = *(this + 14);
  if (result == v4)
  {
    v7 = *(this + 3);
    if (v7 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = *(this + 3);
    }

    *(this + 2) += v8;
    *(this + 3) = v7 - v8;
    *(this + 4) += v8;
  }

  else
  {
    v5 = v4 - result;
    v6 = v5 - a2;
    if (v5 > a2)
    {
      memmove(result, &result[a2], v6);
      result = (*(this + 13) + v6);
    }

    *(this + 14) = result;
  }

  return result;
}

__n128 re::TransferStats::aggregate(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u32[0])
  {
    if (a1->n128_u32[0])
    {
      v2 = a1->n128_u32[2];
      v3 = a1->n128_u32[1] + a2->n128_u32[1];
      a1->n128_u32[0] += a2->n128_u32[0];
      a1->n128_u32[1] = v3;
      v4 = a2->n128_u32[2];
      if (v4 >= v2)
      {
        v4 = v2;
      }

      a1->n128_u32[2] = v4;
      v5 = a1->n128_u32[3];
      if (v5 <= a2->n128_u32[3])
      {
        v5 = a2->n128_u32[3];
      }

      a1->n128_u32[3] = v5;
    }

    else
    {
      result = *a2;
      *a1 = *a2;
    }
  }

  return result;
}

uint64_t re::PeerTransferReport::addEntry(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v24 = a2;
  if (a5)
  {
    v8 = this;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 8, &v24);
    if (v9)
    {
      if (*v9)
      {
        v10 = v9[2];
        v11 = v9[1] + a5;
        ++*v9;
        v9[1] = v11;
        if (a5 >= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = a5;
        }

        v13 = v9[3];
        if (v13 <= a5)
        {
          v13 = a5;
        }

        v9[2] = v12;
        v9[3] = v13;
      }

      else
      {
        *v9 = 1;
        v9[1] = a5;
        v9[2] = a5;
        v9[3] = a5;
      }
    }

    else
    {
      LODWORD(v25) = 1;
      DWORD1(v25) = a5;
      DWORD2(v25) = a5;
      HIDWORD(v25) = a5;
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(v8 + 8, &v24, &v25);
    }

    *&v22 = a3;
    *(&v22 + 1) = a4;
    v23 = v24;
    this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(v8 + 56, &v22, &v25);
    if (HIDWORD(v25) == 0x7FFFFFFF)
    {
      *&v22 = a3;
      *(&v22 + 1) = a4;
      v23 = v24;
      v25 = 0uLL;
      v26 = 0;
      this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(v8 + 56, &v22, &v25);
      if (HIDWORD(v25) == 0x7FFFFFFF)
      {
        this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(v8 + 56, DWORD2(v25), v25);
        *(this + 8) = v22;
        *(this + 24) = v23;
        *(this + 32) = 1;
        *(this + 36) = a5;
        *(this + 40) = a5;
        *(this + 44) = a5;
        ++*(v8 + 96);
      }
    }

    else
    {
      v14 = *(v8 + 72) + 56 * HIDWORD(v25);
      v17 = *(v14 + 32);
      v15 = (v14 + 32);
      v16 = v17;
      if (v17)
      {
        v18 = v15[2];
        v19 = v15[1] + a5;
        *v15 = v16 + 1;
        v15[1] = v19;
        if (a5 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = a5;
        }

        v21 = v15[3];
        if (v21 <= a5)
        {
          v21 = a5;
        }

        v15[2] = v20;
        v15[3] = v21;
      }

      else
      {
        *v15 = 1;
        v15[1] = a5;
        v15[2] = a5;
        v15[3] = a5;
      }
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

void re::PeerTransferReport::aggregate(re::PeerTransferReport *this, const re::PeerTransferReport *a2)
{
  v4 = *(a2 + 10);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 3);
    while (1)
    {
      v7 = *v6;
      v6 += 10;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 10);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 3);
    do
    {
      v9 = (v8 + 40 * v5);
      v10 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 8, &v9->n128_u64[1]);
      if (v10)
      {
        re::TransferStats::aggregate(v10, v9 + 1);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v11 = 0xBF58476D1CE4E5B9 * (v9->n128_u64[1] ^ (v9->n128_u64[1] >> 30));
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 8, &v9->n128_u64[1], (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), &v23);
        if (HIDWORD(v24) == 0x7FFFFFFF)
        {
          v12 = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 8, v24, v23);
          *(v12 + 8) = v9->n128_u64[1];
          *(v12 + 16) = v9[1];
          ++*(this + 12);
        }
      }

      if (*(a2 + 10) <= (v5 + 1))
      {
        v13 = v5 + 1;
      }

      else
      {
        v13 = *(a2 + 10);
      }

      v8 = *(a2 + 3);
      while (v13 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 40 * v5) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v5) = v13;
LABEL_21:
      ;
    }

    while (v5 != v4);
  }

  v14 = *(a2 + 22);
  if (v14)
  {
    v15 = 0;
    v16 = *(a2 + 9);
    while (1)
    {
      v17 = *v16;
      v16 += 14;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(a2 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != v14)
  {
    v18 = *(a2 + 9);
    do
    {
      v19 = (v18 + 56 * v15);
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(this + 56, &v19->n128_u64[1], &v23);
      if (HIDWORD(v24) == 0x7FFFFFFF)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(this + 56, &v19->n128_u64[1], &v23);
        if (HIDWORD(v24) == 0x7FFFFFFF)
        {
          v20 = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(this + 56, v24, v23);
          v21 = *(v19 + 8);
          *(v20 + 24) = v19[1].n128_u64[1];
          *(v20 + 8) = v21;
          *(v20 + 32) = v19[2];
          ++*(this + 24);
        }
      }

      else
      {
        re::TransferStats::aggregate((*(this + 9) + 56 * HIDWORD(v24) + 32), v19 + 2);
      }

      if (*(a2 + 22) <= (v15 + 1))
      {
        v22 = v15 + 1;
      }

      else
      {
        v22 = *(a2 + 22);
      }

      v18 = *(a2 + 9);
      while (v22 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(v18 + 56 * v15) & 0x80000000) != 0)
        {
          goto LABEL_42;
        }
      }

      LODWORD(v15) = v22;
LABEL_42:
      ;
    }

    while (v15 != v14);
  }
}

void re::SessionTransferReport::aggregate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 32;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = v8 + (v5 << 7);
      v10 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 16, (v9 + 8));
      if (v10)
      {
        re::PeerTransferReport::aggregate(v10, (v9 + 16));
      }

      else
      {
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(a1 + 16, (v9 + 8), (v9 + 16));
      }

      if (*(a2 + 48) <= (v5 + 1))
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(a2 + 48);
      }

      v8 = *(a2 + 32);
      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + (v5 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v5) = v11;
LABEL_21:
      ;
    }

    while (v5 != v4);
  }
}

void re::TransferReport::aggregate(double *a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 0.0 && v2 < *(a2 + 8))
  {
    v6 = *a1;
    if (*a1 <= 0.0 || (v7 = a1[1], v6 >= v7))
    {
      *a1 = *a2;
      v13 = (a1 + 2);
      v14 = a2 + 16;

      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v13, v14);
    }

    else
    {
      if (v2 >= v6)
      {
        v2 = *a1;
      }

      *a1 = v2;
      v8 = *(a2 + 8);
      if (v7 >= v8)
      {
        v8 = v7;
      }

      a1[1] = v8;
      v9 = *(a2 + 48);
      if (v9)
      {
        v10 = 0;
        v11 = *(a2 + 32);
        while (1)
        {
          v12 = *v11;
          v11 += 22;
          if (v12 < 0)
          {
            break;
          }

          if (v9 == ++v10)
          {
            LODWORD(v10) = *(a2 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v9)
      {
        v15 = *(a2 + 32);
        do
        {
          v16 = v15 + 88 * v10;
          v17 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((a1 + 2), (v16 + 8));
          if (v17)
          {
            re::SessionTransferReport::aggregate(v17, v16 + 16);
          }

          else
          {
            re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addNew((a1 + 2), (v16 + 8), v16 + 16);
          }

          if (*(a2 + 48) <= (v10 + 1))
          {
            v18 = v10 + 1;
          }

          else
          {
            v18 = *(a2 + 48);
          }

          v15 = *(a2 + 32);
          while (v18 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v15 + 88 * v10) & 0x80000000) != 0)
            {
              goto LABEL_34;
            }
          }

          LODWORD(v10) = v18;
LABEL_34:
          ;
        }

        while (v10 != v9);
      }
    }
  }
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addNew(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 88 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v12, v11);
  *(v7 + 8) = *a2;
  v8 = *(a3 + 8);
  *(v7 + 16) = *a3;
  v9 = v7 + 16;
  *(v7 + 24) = v8;
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v7 + 32, a3 + 16);
  ++*(a1 + 40);
  return v9;
}

void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_9_0, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 32));
          v3 = *(a1 + 32);
        }

        v4 += 88;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        v10 = *(v9 + 24);
        *(v8 + 16) = *(v9 + 16);
        *(v8 + 24) = v10;
        result = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v8 + 32, v9 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 120) % *(v4 + 24), *(v7 + v5 + 120));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        *(v8 + 16) = *(v9 + 16);
        re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v8 + 24, v9 + 24);
        result = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(v8 + 72, v9 + 72);
        v2 = *(a2 + 32);
      }

      v5 += 128;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_26, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(a1, v4, v5);
    re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 24);
        *(result + 8) = *(v8 + 8);
        *(result + 24) = v9;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(a1, v9);
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 56 * v6;
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11 == *a2 && *(result + 8) == a2[1])
      {
        result = *(result + 16);
        if (result == a2[2])
        {
          break;
        }
      }

      v6 = *(v8 + 56 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport const&>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = *a4;
  v8 = v7 + 16;
  re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v7 + 24, (a4 + 1));
  re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(v8 + 56, (a4 + 7));
  ++*(a1 + 40);
  return v8;
}

BOOL re::zerocopy::MemoryReadStream::nextRead(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  *a2 = v2;
  a2[1] = v3;
  return v3 != 0;
}

uint64_t re::zerocopy::MemoryReadStream::advanceRead(uint64_t this, unint64_t a2)
{
  v2 = *(this + 16);
  v3 = *(this + 24) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(this + 16) = v2 + v3;
  return this;
}

uint64_t re::TransferReportWriter::write(re::zerocopy ***a1, uint64_t a2)
{
  v4 = *a1;
  v45 = -30;
  re::zerocopy::writeAll(*v4, &v45, 1);
  v5 = *a1;
  v45 = 8;
  re::zerocopy::writeAll(*v5, &v45, 1);
  v6 = *a1;
  v45 = -30;
  re::zerocopy::writeAll(*v6, &v45, 1);
  v45 = 8;
  re::zerocopy::writeAll(*v6, &v45, 1);
  re::OPackWriter::writeFloat64(v6, *a2);
  v45 = 9;
  re::zerocopy::writeAll(*v6, &v45, 1);
  re::OPackWriter::writeFloat64(v6, *(a2 + 8));
  v7 = *a1;
  v45 = 9;
  re::zerocopy::writeAll(*v7, &v45, 1);
  v8 = *a1;
  result = re::OPackWriter::writeDictionaryBegin(v8, *(a2 + 44));
  v42 = *(a2 + 48);
  if (v42)
  {
    v10 = 0;
    v11 = *(a2 + 32);
    while (1)
    {
      v12 = *v11;
      v11 += 22;
      if (v12 < 0)
      {
        break;
      }

      if (v42 == ++v10)
      {
        LODWORD(v10) = *(a2 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 != v42)
  {
    v13 = *(a2 + 32);
    v41 = a2;
    do
    {
      v14 = v13 + 88 * v10;
      re::OPackWriter::writeInteger(v8, *(v14 + 8));
      v45 = -29;
      re::zerocopy::writeAll(*v8, &v45, 1);
      v45 = 8;
      re::zerocopy::writeAll(*v8, &v45, 1);
      v16 = *(v14 + 16);
      v15 = v14 + 16;
      re::OPackWriter::writeInteger(v8, v16);
      v45 = 9;
      re::zerocopy::writeAll(*v8, &v45, 1);
      if (*(v15 + 8))
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v45 = v17;
      re::zerocopy::writeAll(*v8, &v45, 1);
      v45 = 10;
      re::zerocopy::writeAll(*v8, &v45, 1);
      result = re::OPackWriter::writeDictionaryBegin(v8, *(v15 + 44));
      v44 = *(v15 + 48);
      if (v44)
      {
        v18 = 0;
        v19 = *(v15 + 32);
        while (1)
        {
          v20 = *v19;
          v19 += 32;
          if (v20 < 0)
          {
            break;
          }

          if (v44 == ++v18)
          {
            LODWORD(v18) = *(v15 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 != v44)
      {
        v21 = *(v15 + 32);
        v43 = v15;
        do
        {
          v22 = v21 + (v18 << 7);
          re::OPackWriter::writeInteger(v8, *(v22 + 8));
          v45 = -29;
          re::zerocopy::writeAll(*v8, &v45, 1);
          v45 = 8;
          re::zerocopy::writeAll(*v8, &v45, 1);
          v24 = *(v22 + 16);
          v23 = v22 + 16;
          re::OPackWriter::writeInteger(v8, v24);
          v45 = 9;
          re::zerocopy::writeAll(*v8, &v45, 1);
          re::OPackWriter::writeDictionaryBegin(v8, *(v23 + 36));
          v25 = *(v23 + 40);
          if (v25)
          {
            v26 = 0;
            v27 = *(v23 + 24);
            while (1)
            {
              v28 = *v27;
              v27 += 10;
              if (v28 < 0)
              {
                break;
              }

              if (v25 == ++v26)
              {
                LODWORD(v26) = *(v23 + 40);
                break;
              }
            }
          }

          else
          {
            LODWORD(v26) = 0;
          }

          if (v26 != v25)
          {
            v29 = *(v23 + 24);
            do
            {
              v30 = v29 + 40 * v26;
              re::OPackWriter::writeInteger(v8, *(v30 + 8));
              if (*(v23 + 40) <= (v26 + 1))
              {
                v31 = v26 + 1;
              }

              else
              {
                v31 = *(v23 + 40);
              }

              v29 = *(v23 + 24);
              while (v31 - 1 != v26)
              {
                LODWORD(v26) = v26 + 1;
                if ((*(v29 + 40 * v26) & 0x80000000) != 0)
                {
                  goto LABEL_37;
                }
              }

              LODWORD(v26) = v31;
LABEL_37:
              ;
            }

            while (v26 != v25);
          }

          if (*(v23 + 36) >= 0xFu)
          {
            v45 = 3;
            re::zerocopy::writeAll(*v8, &v45, 1);
          }

          v45 = 10;
          re::zerocopy::writeAll(*v8, &v45, 1);
          result = re::OPackWriter::writeDictionaryBegin(v8, *(v23 + 84));
          v32 = *(v23 + 88);
          if (v32)
          {
            v33 = 0;
            v34 = *(v23 + 72);
            while (1)
            {
              v35 = *v34;
              v34 += 14;
              if (v35 < 0)
              {
                break;
              }

              if (v32 == ++v33)
              {
                LODWORD(v33) = *(v23 + 88);
                break;
              }
            }
          }

          else
          {
            LODWORD(v33) = 0;
          }

          if (v33 != v32)
          {
            v36 = *(v23 + 72);
            do
            {
              v37 = v36 + 56 * v33;
              v45 = -45;
              re::zerocopy::writeAll(*v8, &v45, 1);
              re::OPackWriter::writeInteger(v8, *(v37 + 8));
              re::OPackWriter::writeInteger(v8, *(v37 + 16));
              re::OPackWriter::writeInteger(v8, *(v37 + 24));
              if (*(v23 + 88) <= (v33 + 1))
              {
                v38 = v33 + 1;
              }

              else
              {
                v38 = *(v23 + 88);
              }

              v36 = *(v23 + 72);
              while (v38 - 1 != v33)
              {
                LODWORD(v33) = v33 + 1;
                if ((*(v36 + 56 * v33) & 0x80000000) != 0)
                {
                  goto LABEL_56;
                }
              }

              LODWORD(v33) = v38;
LABEL_56:
              ;
            }

            while (v33 != v32);
          }

          if (*(v23 + 84) >= 0xFu)
          {
            v45 = 3;
            result = re::zerocopy::writeAll(*v8, &v45, 1);
          }

          v15 = v43;
          if (*(v43 + 48) <= (v18 + 1))
          {
            v39 = v18 + 1;
          }

          else
          {
            v39 = *(v43 + 48);
          }

          v21 = *(v43 + 32);
          while (v39 - 1 != v18)
          {
            LODWORD(v18) = v18 + 1;
            if ((*(v21 + (v18 << 7)) & 0x80000000) != 0)
            {
              goto LABEL_67;
            }
          }

          LODWORD(v18) = v39;
LABEL_67:
          ;
        }

        while (v18 != v44);
      }

      if (*(v15 + 44) >= 0xFu)
      {
        v45 = 3;
        result = re::zerocopy::writeAll(*v8, &v45, 1);
      }

      a2 = v41;
      if (*(v41 + 48) <= (v10 + 1))
      {
        v40 = v10 + 1;
      }

      else
      {
        v40 = *(v41 + 48);
      }

      v13 = *(v41 + 32);
      while (v40 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(v13 + 88 * v10) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v10) = v40;
LABEL_78:
      ;
    }

    while (v10 != v42);
  }

  if (*(a2 + 44) >= 0xFu)
  {
    v45 = 3;
    return re::zerocopy::writeAll(*v8, &v45, 1);
  }

  return result;
}

uint64_t re::TransferReportReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) != 13)
    {
      return 0;
    }

    v7 = *a1;
    if (!re::OPackReader::next(*a1, v6))
    {
      return *(*a1 + 184) == 5;
    }

    while (1)
    {
      if (*(v7 + 196) != 6)
      {
        return *(*a1 + 184) == 5;
      }

      v9 = *(v7 + 224);
      v10 = *a1;
      if (v9 == 1)
      {
        break;
      }

      if (!v9)
      {
        result = re::OPackReader::next(*a1, v8);
        if (!result)
        {
          return result;
        }

        if (*(v10 + 196) != 13)
        {
          return 0;
        }

        if (re::OPackReader::next(v10, v11))
        {
          while (*(v10 + 196) == 6)
          {
            if (*(v10 + 224) == 1)
            {
              result = re::OPackReader::next(v10, v12);
              if (!result)
              {
                return result;
              }

              if (*(v10 + 196) != 8)
              {
                return 0;
              }

              *(a2 + 8) = *(v10 + 28);
            }

            else if (*(v10 + 224))
            {
              re::OPackReader::next(v10, v12);
            }

            else
            {
              result = re::OPackReader::next(v10, v12);
              if (!result)
              {
                return result;
              }

              if (*(v10 + 196) != 8)
              {
                return 0;
              }

              *a2 = *(v10 + 28);
            }

            if ((re::OPackReader::next(v10, v13) & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_93:
        if (*(v10 + 184) != 5)
        {
          return 0;
        }

        goto LABEL_96;
      }

      re::OPackReader::next(*a1, v8);
LABEL_96:
      v7 = *a1;
      if ((re::OPackReader::next(*a1, v12) & 1) == 0)
      {
        return *(*a1 + 184) == 5;
      }
    }

    result = re::OPackReader::next(*a1, v8);
    if (!result)
    {
      return result;
    }

    if (*(v10 + 196) != 13)
    {
      return 0;
    }

    v15 = re::OPackReader::next(v10, v14);
    if (!v15)
    {
      goto LABEL_93;
    }

    while (1)
    {
      if (*(v10 + 196) != 6)
      {
        goto LABEL_93;
      }

      v16 = *(v10 + 28);
      v42 = 0;
      v43 = 0;
      memset(v44, 0, sizeof(v44));
      v45 = 0;
      v46 = 0x7FFFFFFFLL;
      if (!re::OPackReader::next(v10, v17) || *(v10 + 196) != 13)
      {
        goto LABEL_99;
      }

      if (re::OPackReader::next(v10, v18))
      {
        break;
      }

LABEL_89:
      if (*(v10 + 184) != 5)
      {
LABEL_99:
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v44);
        return 0;
      }

      *&v56 = v16;
      memset(v47, 0, 24);
      v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a2 + 16, &v56, v38 ^ (v38 >> 31), v47);
      if (*&v47[12] == 0x7FFFFFFF)
      {
        v39 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a2 + 16, *&v47[8], *v47);
        v40 = v56;
        *(v39 + 32) = 0u;
        v39 += 32;
        *(v39 - 24) = v40;
        *(v39 - 16) = v42;
        *(v39 - 8) = v43;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0;
        *(v39 + 36) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v39, v44);
        ++*(a2 + 56);
      }

      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v44);
      v15 = re::OPackReader::next(v10, v41);
      if ((v15 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    while (1)
    {
      if (*(v10 + 196) != 6)
      {
        goto LABEL_89;
      }

      v20 = *(v10 + 224);
      if (v20 == 2)
      {
        break;
      }

      if (v20 == 1)
      {
        if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 2)
        {
          goto LABEL_99;
        }

        v43 = *(v10 + 224);
      }

      else if (*(v10 + 224))
      {
        re::OPackReader::next(v10, v19);
      }

      else
      {
        if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 6)
        {
          goto LABEL_99;
        }

        v42 = *(v10 + 28);
      }

LABEL_88:
      if ((re::OPackReader::next(v10, v21) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 13)
    {
      goto LABEL_99;
    }

    v52 = 0;
    v23 = re::OPackReader::next(v10, v22);
    if (v23)
    {
      do
      {
        if (*(v10 + 196) != 6)
        {
          break;
        }

        v52 = *(v10 + 28);
        memset(v47, 0, sizeof(v47));
        v48 = 0x7FFFFFFFLL;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        v51 = 0x7FFFFFFFLL;
        if (!re::OPackReader::next(v10, v24) || *(v10 + 196) != 13)
        {
          goto LABEL_98;
        }

        if (re::OPackReader::next(v10, v25))
        {
          while (1)
          {
            if (*(v10 + 196) != 6)
            {
              goto LABEL_83;
            }

            v27 = *(v10 + 224);
            if (v27 == 2)
            {
              break;
            }

            if (v27 == 1)
            {
              if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 13)
              {
                goto LABEL_98;
              }

              *&v54 = 0;
              if (re::OPackReader::next(v10, v29))
              {
                do
                {
                  if (*(v10 + 196) != 6)
                  {
                    break;
                  }

                  *&v54 = *(v10 + 28);
                  v56 = 0uLL;
                  {
                    goto LABEL_98;
                  }

                  re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(&v47[8], &v54, &v56);
                }

                while ((re::OPackReader::next(v10, v30) & 1) != 0);
              }

LABEL_79:
              if (*(v10 + 184) != 5)
              {
                goto LABEL_98;
              }

              goto LABEL_82;
            }

            if (*(v10 + 224))
            {
              re::OPackReader::next(v10, v26);
            }

            else
            {
              if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 6)
              {
                goto LABEL_98;
              }

              *v47 = *(v10 + 28);
            }

LABEL_82:
            if ((re::OPackReader::next(v10, v28) & 1) == 0)
            {
              goto LABEL_83;
            }
          }

          if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 13)
          {
            goto LABEL_98;
          }

          if (re::OPackReader::next(v10, v31))
          {
            while (*(v10 + 196) == 12)
            {
              v54 = 0uLL;
              v55 = 0;
              if (re::OPackReader::next(v10, v28) && *(v10 + 196) == 6)
              {
                *&v54 = *(v10 + 28);
              }

              if (re::OPackReader::next(v10, v32) && *(v10 + 196) == 6)
              {
                *(&v54 + 1) = *(v10 + 28);
              }

              if (re::OPackReader::next(v10, v33) && *(v10 + 196) == 6)
              {
                v55 = *(v10 + 28);
              }

              if (!re::OPackReader::next(v10, v34))
              {
                goto LABEL_98;
              }

              if (*(v10 + 184) != 3)
              {
                goto LABEL_98;
              }

              v53 = 0uLL;
              {
                goto LABEL_98;
              }

              v56 = 0uLL;
              v57 = 0;
              re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(v49, &v54, &v56);
              if (HIDWORD(v56) == 0x7FFFFFFF)
              {
                v36 = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(v49, DWORD2(v56), v56);
                *(v36 + 8) = v54;
                *(v36 + 24) = v55;
                *(v36 + 32) = v53;
                ++HIDWORD(v51);
              }

              if ((re::OPackReader::next(v10, v35) & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_83:
        if (*(v10 + 184) != 5)
        {
LABEL_98:
          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v49);
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v47[8]);
          goto LABEL_99;
        }

        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(v44, &v52, v47);
        re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v49);
        re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v47[8]);
        v23 = re::OPackReader::next(v10, v37);
      }

      while ((v23 & 1) != 0);
    }

    if (*(v10 + 184) != 5)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  return result;
}

uint64_t re::anonymous namespace::writeTransferStats(re::zerocopy **a1, unsigned int *a2)
{
  v6 = -28;
  re::zerocopy::writeAll(*a1, &v6, 1);
  v7 = 8;
  re::zerocopy::writeAll(*a1, &v7, 1);
  re::OPackWriter::writeInteger(a1, *a2);
  v8 = 9;
  re::zerocopy::writeAll(*a1, &v8, 1);
  re::OPackWriter::writeInteger(a1, a2[1]);
  v9 = 10;
  re::zerocopy::writeAll(*a1, &v9, 1);
  re::OPackWriter::writeInteger(a1, a2[2]);
  v10 = 11;
  re::zerocopy::writeAll(*a1, &v10, 1);
  v4 = a2[3];

  return re::OPackWriter::writeInteger(a1, v4);
}

BOOL re::anonymous namespace::readTransferStats(unsigned __int8 *a1, _DWORD *a2)
{
  v5 = re::OPackReader::next(a1, a2);
  result = 0;
  if (v5 && a1[196] == 13)
  {
    while (1)
    {
      while (1)
      {
        if (!re::OPackReader::next(a1, v4) || a1[196] != 6)
        {
          return a1[184] == 5;
        }

        v8 = a1[224];
        if (v8 <= 1)
        {
          break;
        }

        if (v8 == 2)
        {
          v12 = re::OPackReader::next(a1, v7);
          result = 0;
          if (!v12 || a1[196] != 6)
          {
            return result;
          }

          a2[2] = *(a1 + 28);
        }

        else if (v8 == 3)
        {
          v10 = re::OPackReader::next(a1, v7);
          result = 0;
          if (!v10 || a1[196] != 6)
          {
            return result;
          }

          a2[3] = *(a1 + 28);
        }

        else
        {
LABEL_16:
          re::OPackReader::next(a1, v7);
        }
      }

      if (a1[224])
      {
        if (v8 != 1)
        {
          goto LABEL_16;
        }

        v9 = re::OPackReader::next(a1, v7);
        result = 0;
        if (!v9 || a1[196] != 6)
        {
          return result;
        }

        a2[1] = *(a1 + 28);
      }

      else
      {
        v11 = re::OPackReader::next(a1, v7);
        result = 0;
        if (!v11 || a1[196] != 6)
        {
          return result;
        }

        *a2 = *(a1 + 28);
      }
    }
  }

  return result;
}

void re::zerocopy::DispatchWriteStream::clear(re::zerocopy::DispatchWriteStream *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

void re::zerocopy::DispatchWriteStream::~DispatchWriteStream(re::zerocopy::DispatchWriteStream *this)
{
  *this = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(this);
}

{
  *this = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(this);

  JUMPOUT(0x1E6906520);
}

void re::zerocopy::DispatchWriteStream::mergeTail(re::zerocopy::DispatchWriteStream *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = (this + 16);
    subrange = dispatch_data_create_subrange(*(this + 2), 0, *(this + 5) - v2);
    if (!*v3)
    {
      goto LABEL_6;
    }

    dispatch_release(*v3);
  }

  else
  {
    v3 = (this + 16);
    subrange = *(this + 2);
  }

  *v3 = 0;
LABEL_6:
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    concat = dispatch_data_create_concat(v5, subrange);
    dispatch_release(*(this + 1));
    *(this + 1) = concat;

    dispatch_release(subrange);
  }

  else
  {
    *(this + 1) = subrange;
  }
}

uint64_t re::zerocopy::DispatchWriteStream::nextWrite(re::zerocopy::DispatchWriteStream *this, void *a2)
{
  v4 = *(this + 4);
  if (!v4)
  {
    re::zerocopy::DispatchWriteStream::mergeTail(this);
    v5 = (2 * *(this + 5)) <= 0x1000 ? 4096 : 2 * *(this + 5);
    *(this + 4) = v5;
    *(this + 5) = v5;
    *(this + 2) = dispatch_data_create_alloc();
    v4 = *(this + 4);
    if (!v4)
    {
      return 0;
    }
  }

  *a2 = *(this + 3);
  a2[1] = v4;
  return 1;
}

uint64_t re::zerocopy::DispatchWriteStream::advanceWrite(uint64_t this, unint64_t a2)
{
  v2 = *(this + 32);
  if (v2 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(this + 32);
  }

  *(this + 24) += v3;
  *(this + 32) = v2 - v3;
  return this;
}

void re::Raft::init(int8x16_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  re::Config::validate(a1, v119);
  if (v119[0] == 1)
  {
    (*(**a2 + 16))(&v117);
    if (v117 != 1)
    {
      *a3 = 0;
      a3[8] = 1;
      goto LABEL_79;
    }

    RaftState::RaftState(v108, v118);
    v85 = 0u;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    DWORD1(v85) = 0x7FFFFFFF;
    v88 = 0;
    v86 = 0;
    v87 = 0;
    v89 = 0;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    v94 = 0u;
    v95 = 0;
    memset(v93, 0, sizeof(v93));
    v97 = 0u;
    HIDWORD(v94) = 0x7FFFFFFF;
    memset(v96, 0, sizeof(v96));
    v98 = 0;
    v99[0] = 0;
    v101[0] = 0;
    v102 = 0;
    memset(v107, 0, 53);
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    *&v104 = a1->i64[1];
    v7 = *a2;
    *a2 = 0;
    *(&v39 + 1) = 0;
    v35 = v7;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v39) = 0;
    LOBYTE(v40[0]) = 0;
    v45 = 0;
    (*(*v7 + 32))(&v50);
    v8 = *(&v50 + 1);
    (*(*v35 + 40))(&v50);
    v46 = v8 - 1;
    v47 = v8 - 1;
    v9 = *(&v50 + 1) + 1;
    *&v52 = 0;
    *&v51 = 0;
    v50 = 0uLL;
    DWORD2(v51) = 0;
    BYTE8(v52) = 0;
    *&v62 = v9;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v36, &v50);
    re::Optional<re::Snapshot>::operator=(v40, &v52 + 8);
    v45 = v62;
    if (BYTE8(v52) == 1)
    {
      re::Snapshot::~Snapshot(&v53);
    }

    re::DynamicArray<re::Entry>::deinit(&v50);
    re::RaftLog::operator=(&v65, &v35);
    re::RaftLog::~RaftLog(&v35);
    *&v106 = a1[1].i64[1];
    v10 = v113;
    v11 = v115;
    v50 = 0u;
    v51 = 0u;
    LODWORD(v52) = 0;
    *(&v52 + 4) = 0x7FFFFFFFLL;
    v57 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
    v56 = 0;
    v58 = 0;
    memset(v59, 0, sizeof(v59));
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v62 = 0u;
    DWORD1(v60) = 0x7FFFFFFF;
    DWORD1(v62) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v59, v113);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v61, v11);
    v63 = v10;
    v64 = v11;
    re::DynamicArray<double>::resize(&v53, v10);
    LOBYTE(v35) = 1;
    re::ProgressSet::ProgressSet(&v36, &v50);
    re::Optional<re::ProgressSet>::operator=(v99, &v35);
    if (v35 == 1)
    {
      re::ProgressSet::~ProgressSet(&v36);
    }

    re::ProgressSet::~ProgressSet(&v50);
    *(&v105 + 1) = 0;
    v98 = 0;
    LOBYTE(v107[6]) = 0;
    *(&v107[6] + 1) = a1[4].i16[0];
    re::ReadOnly::ReadOnly(&v35, a1);
    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(&v93[8], &v35);
    re::Queue<re::DynamicArray<unsigned char>>::operator=(v96, v40);
    BYTE8(v97) = v40[3];
    re::Queue<re::DynamicArray<unsigned char>>::deinit(v40);
    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(&v35);
    *&v107[1] = vextq_s8(a1[3], a1[3], 8uLL);
    *(&v104 + 1) = 0;
    if (v102 == 1)
    {
      v102 = 0;
    }

    *&v103 = 0;
    *(&v106 + 1) = 0;
    *&v105 = 0;
    LOBYTE(v35) = 0;
    re::Optional<re::ConfChange>::operator=(v101, &v35);
    re::Optional<re::ConfChange>::~Optional(&v35);
    *(&v103 + 1) = 0;
    v107[0] = 0;
    v107[3] = 0;
    v14 = a1[2].i64[1];
    v13 = a1[3].i64[0];
    v15 = a1[2].i64[0];
    if (!v15)
    {
      v15 = a1[3].i64[0];
    }

    v107[4] = v15;
    v16 = 2 * v13;
    if (v14)
    {
      v16 = v14;
    }

    v107[5] = v16;
    *(&v107[6] + 3) = a1[4].i16[1];
    if (v113)
    {
      v17 = v114;
      v18 = 8 * v113;
      do
      {
        v36 = 0;
        v37 = 0;
        v35 = 0;
        LODWORD(v38) = 0;
        *&v40[0] = 0;
        v39 = 0uLL;
        *(&v40[0] + 1) = v106;
        re::DynamicArray<float *>::setCapacity(&v35, v106);
        LOBYTE(v40[1]) = 0;
        *(&v40[1] + 8) = xmmword_1E3049620;
        *(&v40[2] + 1) = 0;
        *&v40[3] = 0;
        WORD4(v40[3]) = 0;
        v19.n128_f64[0] = re::ProgressSet::insertVoter(v100, &v35, *v17, &v50);
        if (v50 & 1) == 0 && *(&v51 + 1) && (v52)
        {
          (*(**(&v51 + 1) + 40))(v19.n128_f64[0]);
        }

        if (v35)
        {
          v12 = v39;
          if (v39)
          {
            (*(*v35 + 40))(v19);
          }
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }

    if (v115)
    {
      v20 = v116;
      v21 = 8 * v115;
      do
      {
        v36 = 0;
        v37 = 0;
        v35 = 0;
        LODWORD(v38) = 0;
        *&v40[0] = 0;
        v39 = 0uLL;
        *(&v40[0] + 1) = v106;
        re::DynamicArray<float *>::setCapacity(&v35, v106);
        LOBYTE(v40[1]) = 0;
        *(&v40[1] + 8) = xmmword_1E3049620;
        *(&v40[2] + 1) = 0;
        *&v40[3] = 0;
        WORD4(v40[3]) = 0;
        v22.n128_f64[0] = re::ProgressSet::insertLearner(v100, &v35, *v20, &v50);
        if (*v20 == v104)
        {
          LOBYTE(v107[6]) = 1;
        }

        if (v50 & 1) == 0 && *(&v51 + 1) && (v52)
        {
          (*(**(&v51 + 1) + 40))(v22);
        }

        if (v35)
        {
          v12 = v39;
          if (v39)
          {
            (*(*v35 + 40))(v22);
          }
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
    }

    v23 = v112;
    if (v111 || __PAIR128__(*(&v111 + 1), 0) != v112)
    {
      if (v112 < v83 || (!*(&v66 + 1) ? (v68 != 1 ? ((*(*v65 + 40))(&v35), v24 = v36) : (v24 = *(&v81 + 1))) : (v24 = *(&v66 + 1) + *(&v82 + 1) - 1), v23 > v24))
      {
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) hs.commit is out of range", "!Unreachable code", "loadState", 149);
        _os_crash();
        __break(1u);
        goto LABEL_85;
      }

      *&v83 = v112;
      v103 = v111;
    }

    v25 = a1[1].u64[0];
    if (v25)
    {
      re::Raft::commitApply(&v65, v25);
    }

    v26 = *(&v105 + 1);
    re::Raft::reset(&v65, v103);
    *(&v104 + 1) = 0;
    v98 = 0;
    *(&v105 + 1) = v26;
    re::Optional<re::ConfState>::Optional(&v50, v108);
    if (v109 == 1)
    {
      if (v50)
      {
        v28 = v110;
        v35 = 0;
        v36 = 0;
        LODWORD(v38) = 0;
        v37 = 0;
        v39 = 0u;
        memset(v40, 0, 73);
        v42 = 0;
        v43 = 0;
        v41 = 0;
        v44 = 0;
        if (*(&v51 + 1))
        {
          v29 = *(&v52 + 1);
          v30 = 8 * *(&v51 + 1);
          do
          {
            v31 = *v29++;
            v49 = v31;
            re::DynamicArray<re::TransitionCondition *>::add(&v39 + 1, &v49);
            v30 -= 8;
          }

          while (v30);
        }

        if (v55)
        {
          v32 = v57;
          v33 = 8 * v55;
          do
          {
            v34 = *v32++;
            v49 = v34;
            re::DynamicArray<re::TransitionCondition *>::add(&v40[2], &v49);
            v33 -= 8;
          }

          while (v33);
        }

        v44 = 1;
        BYTE8(v40[4]) = 3;
        v43 = v28;
        re::Raft::beginMembershipChange(&v65, &v35, v48);
        if (*&v40[2])
        {
          if (*&v40[4])
          {
            (*(**&v40[2] + 40))();
          }

          *&v40[4] = 0;
          memset(&v40[2], 0, 24);
          ++DWORD2(v40[3]);
        }

        if (*(&v39 + 1))
        {
          if (*(&v40[1] + 1))
          {
            (*(**(&v39 + 1) + 40))();
          }

          *(&v40[1] + 1) = 0;
          v40[0] = 0uLL;
          *(&v39 + 1) = 0;
          ++LODWORD(v40[1]);
        }

        if (v35 && v39)
        {
          (*(*v35 + 40))();
        }

        goto LABEL_69;
      }
    }

    else if ((v50 & 1) == 0)
    {
LABEL_69:
      re::Raft::Raft(&v35, &v65);
      *a3 = 1;
      re::Raft::Raft((a3 + 8), &v35);
      re::Raft::~Raft(&v35);
      if (v50 == 1)
      {
        if (v53)
        {
          if (v57)
          {
            (*(*v53 + 40))();
          }

          v57 = 0;
          v54 = 0;
          v55 = 0;
          v53 = 0;
          ++v56;
        }

        if (*(&v50 + 1) && *(&v52 + 1))
        {
          (*(**(&v50 + 1) + 40))();
        }
      }

      re::Raft::~Raft(&v65);
      RaftState::~RaftState(v108);
      if (v117)
      {
        RaftState::~RaftState(v118);
      }

LABEL_79:
      if (v119[0])
      {
        return;
      }

      goto LABEL_80;
    }

LABEL_85:
    re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Should never find pendingConfChange without an index", "!Unreachable code", "init", 110);
    _os_crash();
    __break(1u);
    return;
  }

  *a3 = 0;
  a3[8] = 5;
LABEL_80:
  if (v120)
  {
    if (v121)
    {
      (*(*v120 + 40))();
    }
  }
}

uint64_t *re::RaftLog::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a1 + 1), (a2 + 1));
  re::Optional<re::Snapshot>::operator=((a1 + 6), (a2 + 6));
  a1[35] = a2[35];
  *(a1 + 18) = *(a2 + 18);
  return a1;
}

_BYTE *re::Optional<re::ProgressSet>::operator=(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ProgressSet::operator=(v3, (a2 + 8));
    }

    else
    {
      re::ProgressSet::~ProgressSet(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::ProgressSet::ProgressSet((a1 + 8), a2 + 8);
  }

  return a1;
}

_BYTE *re::Optional<re::ConfChange>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::ConfChange::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      re::DynamicArray<unsigned long>::deinit((a1 + 88));
      re::DynamicArray<unsigned long>::deinit((a1 + 48));
      re::DynamicArray<unsigned long>::deinit((a1 + 8));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::ConfChange::ConfChange((a1 + 8), (a2 + 8));
  }

  return a1;
}

_BYTE *re::Optional<re::ConfChange>::~Optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<unsigned long>::deinit((a1 + 88));
    re::DynamicArray<unsigned long>::deinit((a1 + 48));
    re::DynamicArray<unsigned long>::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::Raft::commitApply(re::Raft *this, unint64_t a2)
{
  result = re::RaftLog::appliedTo(this, a2);
  if (*(this + 856) == 1 && *(this + 126) <= a2 && *(this + 536) == 2)
  {

    return re::Raft::appendFinalizeConfChangeEntry(this);
  }

  return result;
}

_BYTE *re::Optional<re::ConfState>::Optional(_BYTE *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    re::DynamicArray<char const*>::DynamicArray((a1 + 8), a2 + 1);
    re::DynamicArray<char const*>::DynamicArray((a1 + 48), a2 + 6);
  }

  return a1;
}

uint64_t re::Raft::beginMembershipChange@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 120) == 3 && (*(a2 + 152) & 1) != 0 && *(a2 + 144))
  {
    v5 = result;
    LOBYTE(v26) = 1;
    re::ConfChange::ConfChange(v27, a2);
    re::Optional<re::ConfChange>::operator=((v5 + 856), &v26);
    re::Optional<re::ConfChange>::~Optional(&v26);
    Index = re::RaftLog::lastIndex(v5);
    v7 = *(v5 + 1088);
    v8 = Index + 1;
    v27[0] = 0;
    v27[1] = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v7;
    re::DynamicArray<float *>::setCapacity(&v26, v7);
    v33 = 0;
    v34 = 0;
    v35 = v8;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    memset(v22, 0, sizeof(v22));
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    DWORD1(v23) = 0x7FFFFFFF;
    v25 = 0u;
    DWORD1(v25) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v22, 0);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v24, 0);
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *(a2 + 72);
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        v19[0] = v12;
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v22, v19);
        v11 -= 8;
      }

      while (v11);
    }

    v13 = *(a2 + 96);
    if (v13)
    {
      v14 = *(a2 + 112);
      v15 = 8 * v13;
      do
      {
        v16 = *v14++;
        v19[0] = v16;
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v24, v19);
        v15 -= 8;
      }

      while (v15);
    }

    v17 = re::ProgressSet::beginMembershipChange((v5 + 552), v22, &v26, v19);
    if (LOBYTE(v19[0]) == 1)
    {
      *a3 = v19[0];
    }

    else
    {
      *a3 = 3328;
      if (v20 && (v21 & 1) != 0)
      {
        (*(*v20 + 40))(v17);
      }
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v24);
    v18 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    result = v26;
    if (v26)
    {
      if (v29)
      {
        return (*(*v26 + 40))(v18);
      }
    }
  }

  else
  {
    *a3 = 2560;
  }

  return result;
}

uint64_t re::Raft::appendFinalizeConfChangeEntry(re::Raft *this)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  v19 = 4;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  LOBYTE(v9) = 1;
  DWORD2(v5) = 1;
  v25[0] = &unk_1F5D0C9F0;
  v25[1] = &v4;
  v3[0] = v25;
  v24 = v3;
  re::ConsensusWriter::write(&v24, v11);
  re::DynamicArray<BOOL>::DynamicArray(v25, &v4);
  re::DynamicArray<BOOL>::DynamicArray(v26, &v6 + 1);
  v29 = v9;
  v30 = v10;
  re::DynamicArray<re::Entry>::DynamicArray(v3, v25, 1uLL);
  if (v26[0])
  {
    if (v28)
    {
      (*(*v26[0] + 40))(v26[0]);
    }

    v28 = 0;
    memset(v26, 0, sizeof(v26));
    ++v27;
  }

  if (v25[0] && v25[4])
  {
    (*(*v25[0] + 40))(v25[0]);
  }

  re::Raft::appendEntry(this, v3);
  re::Raft::broadcastAppend(this);
  re::DynamicArray<re::Entry>::deinit(v3);
  if (*(&v6 + 1))
  {
    if (*(&v8 + 1))
    {
      (*(**(&v6 + 1) + 40))();
    }

    *(&v8 + 1) = 0;
    v7 = 0uLL;
    *(&v6 + 1) = 0;
    LODWORD(v8) = v8 + 1;
  }

  result = v4;
  if (v4)
  {
    if (v6)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::Raft::appendEntry(uint64_t *a1, uint64_t a2)
{
  Index = re::RaftLog::lastIndex(a1);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1[130];
    v8 = (*(a2 + 32) + 96);
    do
    {
      *(v8 - 1) = Index + 1 + v6;
      *v8 = v7;
      v6 += 2;
      v8 += 26;
    }

    while (v6 < v5);
  }

  v9 = re::RaftLog::append(a1, a2);
  v13 = a1[132];
  v10 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[]((a1 + 69), &v13);
  if (*(v10 + 72) < v9)
  {
    *(v10 + 72) = v9;
    *(v10 + 104) = 0;
  }

  if (*(v10 + 80) < v9 + 1)
  {
    *(v10 + 80) = v9 + 1;
  }

  v11 = re::ProgressSet::maximalCommittedIndex((a1 + 69));
  return re::RaftLog::maybeCommit(a1, v11, a1[130]);
}

void re::Raft::broadcastAppend(re::Raft *this)
{
  v2 = *(this + 146);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 71);
    while (1)
    {
      v5 = *v4;
      v4 += 34;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 146);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 132);
    v7 = *(this + 146);
    do
    {
      v8 = *(this + 71) + 136 * v3;
      v11 = *(v8 + 8);
      v9 = (v8 + 8);
      v10 = v11;
      if (v6 != v11)
      {
        v12 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, v9);
        re::Raft::sendAppend(this, v10, v12);
        v7 = *(this + 146);
      }

      if (v7 <= v3 + 1)
      {
        v13 = v3 + 1;
      }

      else
      {
        v13 = v7;
      }

      while (v13 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 71) + 136 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v13;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }

  v14[0] = 1;
  re::ProgressSet::ProgressSet(v15, (this + 552));
  re::Optional<re::ProgressSet>::operator=(this + 544, v14);
  if (v14[0] == 1)
  {
    re::ProgressSet::~ProgressSet(v15);
  }
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 136 * v6 + 16;
}

uint64_t re::Raft::becomeLeader(re::Raft *this)
{
  v13 = *MEMORY[0x1E69E9840];
  re::Raft::reset(this, *(this + 130));
  v2 = *(this + 132);
  *(this + 133) = v2;
  *(this + 536) = 2;
  v6 = v2;
  v3 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, &v6);
  *(v3 + 104) = 0;
  *(v3 + 64) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 80) = *(v3 + 72) + 1;
  *(v3 + 88) = 0;
  *(this + 134) = re::RaftLog::lastIndex(this);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  re::DynamicArray<re::Entry>::DynamicArray(v5, v7, 1uLL);
  if (*(&v8 + 1))
  {
    if (*(&v10 + 1))
    {
      (*(**(&v8 + 1) + 40))();
    }

    *(&v10 + 1) = 0;
    v9 = 0uLL;
    *(&v8 + 1) = 0;
    LODWORD(v10) = v10 + 1;
  }

  if (*&v7[0] && v8)
  {
    (*(**&v7[0] + 40))();
  }

  re::Raft::appendEntry(this, v5);
  if (*(this + 856) == 1 && *(this + 126) <= *(this + 36))
  {
    re::Raft::appendFinalizeConfChangeEntry(this);
  }

  return re::DynamicArray<re::Entry>::deinit(v5);
}

uint64_t re::Raft::reset(re::Raft *this, uint64_t a2)
{
  if (*(this + 130) != a2)
  {
    *(this + 130) = a2;
    *(this + 131) = 0;
  }

  *(this + 133) = 0;
  std::random_device::random_device[abi:nn200100](&v24);
  v3 = arc4random();
  v23.__x_[0] = v3;
  for (i = 1; i != 624; ++i)
  {
    v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
    v23.__x_[i] = v3;
  }

  v23.__i_ = 0;
  v5 = *(this + 284);
  v6 = *(this + 286) - 1 - v5;
  if (v6)
  {
    v7 = *(this + 286) - v5;
    if (v6 == -1)
    {
      v5 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
    }

    else
    {
      v8 = __clz(v7);
      v9 = 31;
      if (((v7 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23) & v12;
      }

      while (v13 >= v7);
      v5 += v13;
    }
  }

  *(this + 141) = v5;
  std::random_device::~random_device(&v24);
  *(this + 1096) = 0u;
  if (*(this + 1024) == 1)
  {
    *(this + 1024) = 0;
  }

  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 304);
  *(this + 134) = 0;
  re::ReadOnly::ReadOnly(&v23, this + 528);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(this + 432, &v23);
  re::Queue<re::DynamicArray<unsigned char>>::operator=(this + 480, &v23.__x_[12]);
  *(this + 528) = v23.__x_[24];
  re::Queue<re::DynamicArray<unsigned char>>::deinit(&v23.__x_[12]);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(&v23);
  *(this + 135) = 0;
  result = re::RaftLog::lastIndex(this);
  v15 = result;
  v16 = *(this + 146);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 71);
    while (1)
    {
      v19 = *v18;
      v18 += 34;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 146);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 132);
    do
    {
      v21 = *(this + 71) + 136 * v17;
      result = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, (v21 + 8));
      *(result + 72) = 0;
      *(result + 80) = v15 + 1;
      *(result + 64) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(result + 104) = 0;
      if (*(v21 + 8) == v20)
      {
        *(result + 72) = v15;
      }

      v22 = *(this + 146);
      if (v22 <= v17 + 1)
      {
        v22 = v17 + 1;
      }

      while (v22 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(*(this + 71) + 136 * v17) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }
      }

      LODWORD(v17) = v22;
LABEL_35:
      ;
    }

    while (v17 != v16);
  }

  return result;
}

re::Raft *re::Raft::sendAppend(re::Raft *this, uint64_t a2, re::Progress *a3)
{
  v5 = this;
  if (*(a3 + 64))
  {
    if (*(a3 + 64) != 1 || *(a3 + 6) == *(a3 + 7))
    {
      return this;
    }
  }

  else if (*(a3 + 104))
  {
    return this;
  }

  v26[0] = 0;
  v26[1] = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  memset(v32, 0, 233);
  v34 = 0u;
  memset(v35, 0, 25);
  v33 = 0u;
  v32[30] = a2;
  if (*(a3 + 12))
  {
    if ((re::Raft::prepareSendSnapshot(this, v26, a3) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  re::RaftLog::getTerm(this, *(a3 + 10) - 1, v24);
  re::RaftLog::entries(v5, *(a3 + 10), v20);
  if (v24[0] == 1 && (v20[0] & 1) != 0)
  {
    if (*(v5 + 1156) == 1)
    {
      v6 = *(v5 + 408);
      if (v6)
      {
        v7 = v23;
        v8 = *(v5 + 424);
        while (*(v8 + 304) != 3 || *(v8 + 312) != a2)
        {
          v8 += 384;
          if (!--v6)
          {
            goto LABEL_19;
          }
        }

        if (!v22)
        {
          goto LABEL_42;
        }

        v11 = *(v8 + 16);
        if (!v11 || *(*(v8 + 32) + 104 * v11 - 16) + 1 == v23[5].n128_u64[1])
        {
          v12 = 104 * v22;
          do
          {
            re::DynamicArray<re::Entry>::add(v8, v7);
            v7 = (v7 + 104);
            v12 -= 104;
          }

          while (v12);
          re::Progress::updateState(a3, *(*(v8 + 32) + 104 * *(v8 + 16) - 16));
LABEL_42:
          *(v8 + 352) = *(v5 + 288);
          goto LABEL_43;
        }
      }
    }

LABEL_19:
    LOBYTE(v32[29]) = 3;
    *(&v34 + 1) = *(a3 + 10) - 1;
    *&v34 = v25;
    re::DynamicArray<re::Entry>::clear(v26);
    re::DynamicArray<re::Entry>::operator=(v26, v21);
    v35[0] = *(v5 + 288);
    if (v27)
    {
      re::Progress::updateState(a3, *(v29 + 104 * v27 - 16));
    }

LABEL_22:
    if (v20[0] == 1)
    {
      re::DynamicArray<re::Entry>::deinit(v21);
    }

LABEL_24:
    re::Message::Message(v13, v26);
    re::Raft::send(v5, v13);
    re::Snapshot::~Snapshot(&v19);
    if (v14)
    {
      if (v18)
      {
        (*(*v14 + 40))();
      }

      v18 = 0;
      v15 = 0;
      v16 = 0;
      v14 = 0;
      ++v17;
    }

    v10 = v13;
    goto LABEL_29;
  }

  if (re::Raft::prepareSendSnapshot(v5, v26, a3))
  {
    goto LABEL_22;
  }

LABEL_43:
  if (v20[0] != 1)
  {
    goto LABEL_30;
  }

  v10 = v21;
LABEL_29:
  re::DynamicArray<re::Entry>::deinit(v10);
LABEL_30:
  re::Snapshot::~Snapshot(&v32[1]);
  if (*(&v29 + 1))
  {
    if (v32[0])
    {
      (*(**(&v29 + 1) + 40))();
    }

    v32[0] = 0;
    v30 = 0uLL;
    *(&v29 + 1) = 0;
    ++v31;
  }

  return re::DynamicArray<re::Entry>::deinit(v26);
}

uint64_t re::Raft::prepareSendSnapshot(re::Raft *this, re::Message *a2, re::Progress *a3)
{
  if (*(a3 + 105) != 1)
  {
    return 0;
  }

  *(a2 + 304) = 7;
  re::RaftLog::snapshot(this, *(a3 + 12), v17);
  v6 = v17[0];
  if ((v17[0] & 1) == 0)
  {
    if (LOBYTE(v18[0]) != 3)
    {
      goto LABEL_10;
    }

    return v6;
  }

  re::DynamicArray<BOOL>::DynamicArray(v10, v18);
  re::DynamicArray<char const*>::DynamicArray(v11, v19);
  re::DynamicArray<char const*>::DynamicArray(v12, v20);
  re::DynamicArray<char const*>::DynamicArray(v13, v21);
  re::DynamicArray<char const*>::DynamicArray(v14, v22);
  v15 = v23;
  v16 = v24;
  v8 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    re::DynamicArray<BOOL>::operator=(a2 + 80, v10);
    re::DynamicArray<unsigned long long>::operator=(a2 + 120, v11);
    re::DynamicArray<unsigned long long>::operator=(a2 + 160, v12);
    re::DynamicArray<unsigned long long>::operator=(a2 + 200, v13);
    re::DynamicArray<unsigned long long>::operator=(a2 + 240, v14);
    *(a2 + 280) = v15;
    *(a2 + 37) = v16;
    *(a3 + 104) = 0;
    *(a3 + 64) = 2;
    *(a3 + 5) = 0;
    *(a3 + 6) = 0;
    *(a3 + 11) = v8;
    re::Snapshot::~Snapshot(v10);
    if (v17[0])
    {
      re::Snapshot::~Snapshot(v18);
    }

    return v6;
  }

  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Need non-empty snapshot", "!Unreachable code", "prepareSendSnapshot", 320);
  _os_crash();
  __break(1u);
LABEL_10:
  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Unexpected error", "!Unreachable code", "prepareSendSnapshot", 315);
  result = _os_crash();
  __break(1u);
  return result;
}

re::Message *re::Raft::send(uint64_t a1, uint64_t a2)
{
  *(a2 + 320) = *(a1 + 1056);
  v2 = *(a2 + 304);
  if (v2 > 0x12 || ((1 << v2) & 0x60060) == 0)
  {
    if (!*(a2 + 328))
    {
      if (v2 != 2 && v2 != 15)
      {
        *(a2 + 328) = *(a1 + 1040);
      }

      goto LABEL_6;
    }

LABEL_16:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) term should be set when sending, was", "!Unreachable code", "send", 354);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (!*(a2 + 328))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) term should be set when sending", "!Unreachable code", "send", 350);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

LABEL_6:
  v4 = a1 + 392;

  return re::DynamicArray<re::Message>::add(v4, a2);
}

void re::Message::~Message(re::Message *this)
{
  re::Snapshot::~Snapshot((this + 80));
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<re::Entry>::deinit(this);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<re::Entry>::deinit(this);
}

void re::Snapshot::~Snapshot(re::Snapshot *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::DynamicArray<re::Entry>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 104 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 104;
      v4 -= 104;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::Entry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Entry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::Entry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::Entry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Entry>::copy(a1, a2);
    }
  }

  return a1;
}

re::Message *re::DynamicArray<re::Message>::add(uint64_t a1, re::Message *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Message>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Message>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::Message::Message((*(a1 + 32) + 384 * v5), a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::Raft::broadcastHeartbeat(re::Raft *this)
{
  re::ReadOnly::lastPendingRequestCtx(this + 54, v2);
  re::Raft::broadcastHeatbeatWithCtx(this, v2);
  if (v2[0] == 1 && v3)
  {
    if (v4)
    {
      (*(*v3 + 40))();
    }
  }
}

void re::Raft::broadcastHeatbeatWithCtx(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 584);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 568);
    while (1)
    {
      v6 = *v5;
      v5 += 34;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 584);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a1 + 1056);
    v8 = *(a1 + 584);
    do
    {
      v9 = *(a1 + 568) + 136 * v4;
      v11 = *(v9 + 8);
      v10 = (v9 + 8);
      if (v11 != v7)
      {
        v12 = *(re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v10) + 72);
        if (*(a1 + 288) < v12)
        {
          v12 = *(a1 + 288);
        }

        v13 = *v10;
        v23 = 0;
        v24[0] = 0;
        v25 = 0;
        v24[1] = 0;
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
        memset(v29, 0, sizeof(v29));
        v33 = 0u;
        memset(v34, 0, 25);
        v32 = 0u;
        v30 = 8;
        v31 = v13;
        v34[0] = v12;
        if (*a2 == 1)
        {
          re::DynamicArray<BOOL>::operator=(&v26 + 8, (a2 + 8));
        }

        re::Message::Message(v16, &v23);
        re::Raft::send(a1, v16);
        re::Snapshot::~Snapshot(&v22);
        if (v17)
        {
          if (v21)
          {
            (*(*v17 + 40))();
          }

          v21 = 0;
          v18 = 0;
          v19 = 0;
          v17 = 0;
          ++v20;
        }

        re::DynamicArray<re::Entry>::deinit(v16);
        re::Snapshot::~Snapshot(&v29[1]);
        if (*(&v26 + 1))
        {
          if (v29[0])
          {
            (*(**(&v26 + 1) + 40))();
          }

          v29[0] = 0;
          v27 = 0uLL;
          *(&v26 + 1) = 0;
          ++v28;
        }

        re::DynamicArray<re::Entry>::deinit(&v23);
        v8 = *(a1 + 584);
      }

      if (v8 <= v4 + 1)
      {
        v14 = v4 + 1;
      }

      else
      {
        v14 = v8;
      }

      while (v14 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(a1 + 568) + 136 * v4) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v4) = v14;
LABEL_30:
      ;
    }

    while (v4 != v3);
  }

  LOBYTE(v23) = 1;
  re::ProgressSet::ProgressSet(v24, (a1 + 552));
  re::Optional<re::ProgressSet>::operator=((a1 + 544), &v23);
  if (v23 == 1)
  {
    re::ProgressSet::~ProgressSet(v24);
  }
}

std::random_device *std::random_device::random_device[abi:nn200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t re::Raft::tick(re::Raft *this)
{
  v1 = *(this + 536);
  if (v1 < 2)
  {
    return re::Raft::tickElection(this);
  }

  if (v1 == 2)
  {
    return re::Raft::tickHeartbeat(this);
  }

  if (v1 == 3)
  {
    return re::Raft::tickElection(this);
  }

  return 0;
}

BOOL re::Raft::tickElection(re::Raft *this)
{
  v3 = *(this + 137) + 1;
  *(this + 137) = v3;
  if (v3 < *(this + 141))
  {
    return 0;
  }

  v22 = v1;
  v23 = v2;
  result = re::Raft::promotable(this);
  if (result)
  {
    *(this + 137) = 0;
    v6 = *(this + 132);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v18 = 0u;
    v19 = 0u;
    v15 = 0;
    v17 = 0u;
    v20 = 0;
    v16 = v6;
    v14 = 0;
    re::Raft::step(this, v7, v21);
    re::Snapshot::~Snapshot((v12 + 8));
    if (*(&v9 + 1))
    {
      if (*&v12[0])
      {
        (*(**(&v9 + 1) + 40))();
      }

      *&v12[0] = 0;
      v10 = 0uLL;
      *(&v9 + 1) = 0;
      ++v11;
    }

    re::DynamicArray<re::Entry>::deinit(v7);
    return 1;
  }

  return result;
}

uint64_t re::Raft::tickHeartbeat(re::Raft *this)
{
  v2 = vaddq_s64(*(this + 1096), vdupq_n_s64(1uLL));
  *(this + 1096) = v2;
  if (v2.i64[0] < *(this + 140))
  {
    v3 = 0;
    if (*(this + 536) != 2)
    {
      return v3;
    }

    goto LABEL_17;
  }

  *(this + 137) = 0;
  v3 = *(this + 1153);
  if (v3 == 1)
  {
    v4 = *(this + 132);
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v42 = 0u;
    v43 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v44 = 0;
    v49 = 0u;
    v50 = 0u;
    v46 = 0;
    v48 = 0u;
    v51 = 0;
    v47 = v4;
    v45 = 12;
    re::Message::Message(v15, &v23);
    re::Raft::step(this, v15, v22);
    re::Snapshot::~Snapshot(&v21);
    if (v16)
    {
      if (v20)
      {
        (*(*v16 + 40))();
      }

      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      ++v19;
    }

    re::DynamicArray<re::Entry>::deinit(v15);
    re::Snapshot::~Snapshot((&v30 + 8));
    if (*(&v27 + 1))
    {
      if (v30)
      {
        (*(**(&v27 + 1) + 40))();
      }

      *&v30 = 0;
      v28 = 0uLL;
      *(&v27 + 1) = 0;
      ++v29;
    }

    re::DynamicArray<re::Entry>::deinit(&v23);
  }

  if (*(this + 536) == 2)
  {
    if (*(this + 1024) == 1)
    {
      *(this + 1024) = 0;
    }

LABEL_17:
    if (*(this + 138) >= *(this + 139))
    {
      *(this + 138) = 0;
      v5 = *(this + 132);
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v42 = 0u;
      v43 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v44 = 0;
      v49 = 0u;
      v50 = 0u;
      v46 = 0;
      v48 = 0u;
      v51 = 0;
      v47 = v5;
      v45 = 1;
      re::Message::Message(v7, &v23);
      re::Raft::step(this, v7, v14);
      re::Snapshot::~Snapshot(&v13);
      if (v8)
      {
        if (v12)
        {
          (*(*v8 + 40))();
        }

        v12 = 0;
        v9 = 0;
        v10 = 0;
        v8 = 0;
        ++v11;
      }

      re::DynamicArray<re::Entry>::deinit(v7);
      re::Snapshot::~Snapshot((&v30 + 8));
      if (*(&v27 + 1))
      {
        if (v30)
        {
          (*(**(&v27 + 1) + 40))();
        }

        *&v30 = 0;
        v28 = 0uLL;
        *(&v27 + 1) = 0;
        ++v29;
      }

      re::DynamicArray<re::Entry>::deinit(&v23);
      return 1;
    }
  }

  return v3;
}

BOOL re::Raft::promotable(re::Raft *this)
{
  re::ProgressSet::voterIds((this + 552), v4);
  v2 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v4, this + 132);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v4);
  return v2;
}

void re::Raft::step(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v6 = a2[41];
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = *(a1 + 1040);
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      if (*(a1 + 1153) & 1) != 0 || (*(a1 + 1154))
      {
        v16 = *(a2 + 304);
        if (v16 == 8 || v16 == 3)
        {
          v17 = a2[40];
          v157 = 0;
          v155 = 0;
          v156 = 0;
          v158 = 0;
          *__s2 = 0u;
          v160 = 0u;
          v161 = 0;
          v174 = 0u;
          v175 = 0u;
          v162 = 0u;
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v176 = 0;
          memset(v181, 0, 25);
          v180 = 0u;
          v179 = 0u;
          v178 = v17;
          v177 = 4;
          re::Message::Message(v126, &v155);
          re::Raft::send(a1, v126);
          re::Snapshot::~Snapshot(&v132);
          if (v127)
          {
            if (v131)
            {
              (*(*v127 + 40))();
            }

            v131 = 0;
            v128 = 0;
            v129 = 0;
            v127 = 0;
            ++v130;
          }

          v18 = v126;
          goto LABEL_72;
        }
      }

      else
      {
        v16 = *(a2 + 304);
      }

      if (v16 != 17)
      {
        goto LABEL_96;
      }

      v31 = a2[40];
      v157 = 0;
      v155 = 0;
      v156 = 0;
      v158 = 0;
      *__s2 = 0u;
      v160 = 0u;
      v161 = 0;
      v174 = 0u;
      v175 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v176 = 0;
      memset(v181, 0, 24);
      *&v179 = 0;
      v180 = 0u;
      v178 = v31;
      v177 = 18;
      *(&v179 + 1) = v7;
      BYTE8(v181[1]) = 1;
      re::Message::Message(v119, &v155);
      re::Raft::send(a1, v119);
      re::Snapshot::~Snapshot(&v125);
      if (v120)
      {
        if (v124)
        {
          (*(*v120 + 40))();
        }

        v124 = 0;
        v121 = 0;
        v122 = 0;
        v120 = 0;
        ++v123;
      }

      v18 = v119;
      goto LABEL_72;
    }
  }

  else
  {
    v8 = *(a2 + 304);
    if (v8 == 17 || v8 == 5)
    {
      LOBYTE(v146[0]) = 0;
      re::DynamicArray<unsigned char>::DynamicArray(&v155, v146, 1uLL);
      v10 = 0;
      v11 = v3[7];
      if (v11 == v157)
      {
        v10 = memcmp(v3[9], __s2[0], v11) == 0;
      }

      if (v155)
      {
        a2 = __s2[0];
        if (__s2[0])
        {
          (*(*v155 + 40))();
        }
      }

      if (*(a1 + 1153) == 1 && *(a1 + 1064))
      {
        v12 = *(a1 + 1096) >= *(a1 + 1120) || v10;
        if (v12 != 1)
        {
          goto LABEL_96;
        }
      }

      v8 = *(v3 + 304);
    }

    v13 = 0;
    if (v8 <= 16)
    {
      if ((v8 - 7) < 2 || v8 == 3)
      {
        v13 = v3[40];
      }

      goto LABEL_27;
    }

    if (v8 != 17)
    {
      if (v8 != 18)
      {
LABEL_27:
        v15 = *(a1 + 1080);
        re::Raft::reset(a1, v3[41]);
        *(a1 + 1064) = v13;
        *(a1 + 536) = 0;
        *(a1 + 1080) = v15;
        goto LABEL_42;
      }

      if (v3[47])
      {
        v13 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_42:
  v19 = *(v3 + 304);
  if (v19 == 17 || v19 == 5)
  {
    v21 = *(a1 + 1048);
    v22 = v3[40];
    if (v21 != v22 && (v21 || *(a1 + 1064)))
    {
      if (v19 != 17)
      {
        goto LABEL_59;
      }

      if (v3[41] <= *(a1 + 1040))
      {
        goto LABEL_61;
      }
    }

    isUpToDate = re::RaftLog::isUpToDate(a1, v3[43], v3[42]);
    v22 = v3[40];
    v19 = *(v3 + 304);
    if (isUpToDate)
    {
      if (v19 == 5)
      {
        v24 = 6;
        goto LABEL_84;
      }

      if (v19 == 17)
      {
        v24 = 18;
LABEL_84:
        v156 = 0;
        v155 = 0;
        v158 = 0;
        v157 = 0;
        *__s2 = 0u;
        v160 = 0u;
        v161 = 0;
        v174 = 0u;
        v175 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v176 = 0;
        memset(v181, 0, 25);
        v179 = 0u;
        v180 = 0u;
        v178 = v22;
        v177 = v24;
        *(&v179 + 1) = v3[41];
        re::Message::Message(v112, &v155);
        re::Raft::send(a1, v112);
        re::Snapshot::~Snapshot(&v118);
        if (v113)
        {
          if (v117)
          {
            (*(*v113 + 40))();
          }

          v117 = 0;
          v114 = 0;
          v115 = 0;
          v113 = 0;
          ++v116;
        }

        re::DynamicArray<re::Entry>::deinit(v112);
        if (*(v3 + 304) == 5)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1048) = v3[40];
        }

        re::Snapshot::~Snapshot((&v162 + 8));
        if (!__s2[1])
        {
          goto LABEL_95;
        }

        if (v162)
        {
          (*(*__s2[1] + 40))();
        }

        *&v162 = 0;
        v160 = 0uLL;
        __s2[1] = 0;
        goto LABEL_94;
      }

LABEL_322:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Not a vote message %hhu", "!Unreachable code", "voteRespMsgType", 281, v19);
      _os_crash();
      __break(1u);
      goto LABEL_323;
    }

LABEL_59:
    if (v19 == 5)
    {
      v25 = 6;
      goto LABEL_67;
    }

    if (v19 == 17)
    {
LABEL_61:
      v25 = 18;
LABEL_67:
      v156 = 0;
      v155 = 0;
      v158 = 0;
      v157 = 0;
      *__s2 = 0u;
      v160 = 0u;
      v161 = 0;
      v174 = 0u;
      v175 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v176 = 0;
      memset(v181, 0, 24);
      v179 = 0u;
      v180 = 0u;
      v178 = v22;
      v177 = v25;
      BYTE8(v181[1]) = 1;
      *(&v179 + 1) = *(a1 + 1040);
      re::Message::Message(v105, &v155);
      re::Raft::send(a1, v105);
      re::Snapshot::~Snapshot(&v111);
      if (v106)
      {
        if (v110)
        {
          (*(*v106 + 40))();
        }

        v110 = 0;
        v107 = 0;
        v108 = 0;
        v106 = 0;
        ++v109;
      }

      v18 = v105;
LABEL_72:
      re::DynamicArray<re::Entry>::deinit(v18);
      re::Snapshot::~Snapshot((&v162 + 8));
      if (!__s2[1])
      {
LABEL_95:
        re::DynamicArray<re::Entry>::deinit(&v155);
        goto LABEL_96;
      }

      if (v162)
      {
        (*(*__s2[1] + 40))();
      }

      *&v162 = 0;
      v160 = 0uLL;
      __s2[1] = 0;
LABEL_94:
      ++v161;
      goto LABEL_95;
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Not a vote message %hhu", "!Unreachable code", "voteRespMsgType", 281, v19);
    _os_crash();
    __break(1u);
    goto LABEL_322;
  }

  if (!*(v3 + 304))
  {
    re::Raft::hup(a1, 0);
    goto LABEL_96;
  }

  v26 = *(a1 + 536);
  if (v26 <= 1)
  {
    if (*(a1 + 536))
    {
      if (v26 != 1)
      {
        goto LABEL_96;
      }

LABEL_78:
      if (*(v3 + 304) > 6u)
      {
        if (v19 == 7)
        {
          v35 = v3[40];
          v36 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v35;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v36;
          re::Raft::handleSnapshot(a1, v3);
          goto LABEL_96;
        }

        if (v19 == 8)
        {
          v39 = v3[40];
          v40 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v39;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v40;
          re::Raft::handleHeartbeat(a1, v3);
          goto LABEL_96;
        }

        if (v19 != 18)
        {
LABEL_96:
          *a3 = 1;
          return;
        }

LABEL_100:
        if ((v19 == 18 || v26 != 3) && (v19 == 6 || v26 != 1))
        {
          re::Raft::registerVote(a1, v3[40], (v3[47] & 1) == 0);
          v27 = re::ProgressSet::candidacyStatus(a1 + 552, a1 + 304);
          if (v27 == 2)
          {
            v60 = *(a1 + 1080);
            re::Raft::reset(a1, *(a1 + 1040));
            *(a1 + 1064) = 0;
            *(a1 + 536) = 0;
            *(a1 + 1080) = v60;
          }

          else if (!v27)
          {
            if (*(a1 + 536) == 3)
            {
              LOBYTE(v146[0]) = 2;
              re::DynamicArray<unsigned char>::DynamicArray(&v155, v146, 1uLL);
              re::Raft::campaign(a1, &v155);
              if (v155)
              {
                if (__s2[0])
                {
                  (*(*v155 + 40))();
                }
              }
            }

            else
            {
              re::Raft::becomeLeader(a1);
              re::Raft::broadcastAppend(a1);
            }
          }
        }

        goto LABEL_96;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          v37 = v3[40];
          v38 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v37;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v38;
          re::Raft::handleAppendEntries(a1, v3);
          goto LABEL_96;
        }

        if (v19 != 6)
        {
          goto LABEL_96;
        }

        goto LABEL_100;
      }

      goto LABEL_176;
    }

    if (*(v3 + 304) <= 0xCu)
    {
      if (*(v3 + 304) > 6u)
      {
        if (v19 == 7)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleSnapshot(a1, v3);
        }

        else if (v19 == 8)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleHeartbeat(a1, v3);
        }

        goto LABEL_191;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleAppendEntries(a1, v3);
        }

        goto LABEL_191;
      }

      v49 = *(a1 + 1064);
      if (!v49)
      {
LABEL_176:
        *a3 = 1024;
        return;
      }

      v3[39] = v49;
      re::Message::Message(&v155, v3);
      re::Raft::send(a1, &v155);
      re::Snapshot::~Snapshot((&v162 + 8));
      if (__s2[1])
      {
        if (v162)
        {
          (*(*__s2[1] + 40))();
        }

        *&v162 = 0;
        v160 = 0uLL;
        __s2[1] = 0;
        ++v161;
      }

      v50 = &v155;
      goto LABEL_190;
    }

    if (*(v3 + 304) > 0xEu)
    {
      if (v19 != 15)
      {
        if (v19 == 16 && v3[2] == 1)
        {
          memset(v133, 0, sizeof(v133));
          v134 = 0;
          v41 = v3[43];
          v135 = 0;
          v136 = v41;
          re::DynamicArray<BOOL>::operator=(v133, v3[4]);
          re::DynamicArray<re::ReadState>::add(a1 + 352, v133);
          if (v133[0])
          {
            if (v135)
            {
              (*(*v133[0] + 40))();
            }
          }
        }

        goto LABEL_191;
      }

      v52 = *(a1 + 1064);
      if (v52)
      {
        v3[39] = v52;
        re::Message::Message(&v137, v3);
        re::Raft::send(a1, &v137);
        re::Snapshot::~Snapshot(&v144);
        if (v139[1])
        {
          if (v143)
          {
            (*(*v139[1] + 40))();
          }

          v143 = 0;
          v140 = 0;
          v141 = 0;
          v139[1] = 0;
          ++v142;
        }

        v50 = &v137;
        goto LABEL_190;
      }
    }

    else
    {
      if (v19 != 13)
      {
        if (re::Raft::promotable(a1))
        {
          re::Raft::hup(a1, 1);
        }

        goto LABEL_191;
      }

      v51 = *(a1 + 1064);
      if (v51)
      {
        v3[39] = v51;
        re::Message::Message(v146, v3);
        re::Raft::send(a1, v146);
        re::Snapshot::~Snapshot(&v154);
        if (v149)
        {
          if (v153)
          {
            (*(*v149 + 40))();
          }

          v153 = 0;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          ++v152;
        }

        v50 = v146;
LABEL_190:
        re::DynamicArray<re::Entry>::deinit(v50);
      }
    }

LABEL_191:
    *a3 = 1;
    goto LABEL_96;
  }

  if (v26 != 2)
  {
    if (v26 != 3)
    {
      goto LABEL_96;
    }

    goto LABEL_78;
  }

  re::Message::Message(v90, v3);
  if (v99 > 0xBu)
  {
    if (v99 == 12)
    {
      if (!re::ProgressSet::quorumRecentlyActive((a1 + 552)))
      {
        v48 = *(a1 + 1080);
        re::Raft::reset(a1, *(a1 + 1040));
        *(a1 + 1064) = 0;
        *(a1 + 536) = 0;
        *(a1 + 1080) = v48;
      }

      goto LABEL_211;
    }

    if (v99 != 15)
    {
      goto LABEL_155;
    }

    re::RaftLog::getTerm(a1, *(a1 + 288), &v155);
    if (v155)
    {
      v32 = v156;
    }

    else
    {
      v32 = 0;
    }

    if (v32 != *(a1 + 1040))
    {
LABEL_211:
      v30 = 1;
      *a3 = 1;
      goto LABEL_310;
    }

    *v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    HIDWORD(v139[0]) = 0x7FFFFFFF;
    v33 = (a1 + 1056);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v137, (a1 + 1056));
    if (re::ProgressSet::hasQuorum(a1 + 552, &v137))
    {
      if (!v100[0] || v100[0] == *v33)
      {
        v156 = 0;
        v155 = 0;
        v158 = 0;
        v157 = 0;
        v34 = *(a1 + 288);
LABEL_259:
        __s2[0] = 0;
        __s2[1] = v34;
        re::DynamicArray<BOOL>::operator=(&v155, v92);
        re::DynamicArray<re::ReadState>::add(a1 + 352, &v155);
        v53 = v155;
        if (!v155 || !__s2[0])
        {
          goto LABEL_268;
        }

        goto LABEL_261;
      }

      v156 = 0;
      v155 = 0;
      v158 = 0;
      v157 = 0;
      *__s2 = 0u;
      v160 = 0u;
      v161 = 0;
      v174 = 0u;
      v175 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v176 = 0;
      memset(v181, 0, 25);
      v180 = 0u;
      v179 = 0u;
      v177 = 16;
      v178 = v100[0];
      v34 = *(a1 + 288);
    }

    else
    {
      if (*(a1 + 528) != 1)
      {
        if (*(a1 + 528))
        {
          goto LABEL_268;
        }

        re::DynamicArray<BOOL>::DynamicArray(v146, v92);
        re::ReadOnly::addRequest((a1 + 432), *(a1 + 288), v90);
        LOBYTE(v155) = 1;
        re::DynamicArray<BOOL>::DynamicArray(&v156, v146);
        re::Raft::broadcastHeatbeatWithCtx(a1, &v155);
        if (v155 == 1 && v156 && __s2[1])
        {
          (*(*v156 + 40))();
        }

        v53 = v146[0];
        if (!v146[0] || !v148)
        {
          goto LABEL_268;
        }

LABEL_261:
        (*(*v53 + 40))(v53);
LABEL_268:
        v30 = 1;
        *a3 = 1;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v137);
        goto LABEL_310;
      }

      v34 = *(a1 + 288);
      if (!v100[0] || v100[0] == *v33)
      {
        v157 = 0;
        v155 = 0;
        v156 = 0;
        v158 = 0;
        goto LABEL_259;
      }

      v156 = 0;
      v155 = 0;
      v158 = 0;
      v157 = 0;
      *__s2 = 0u;
      v160 = 0u;
      v161 = 0;
      v174 = 0u;
      v175 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v176 = 0;
      memset(v181, 0, 25);
      v180 = 0u;
      v179 = 0u;
      v177 = 16;
      v178 = v100[0];
    }

    *(&v180 + 1) = v34;
    re::DynamicArray<re::Entry>::operator=(&v155, v90);
    re::Message::Message(v146, &v155);
    re::Raft::send(a1, v146);
    re::Message::~Message(v146);
    re::Message::~Message(&v155);
    goto LABEL_268;
  }

  if (v99 == 1)
  {
    re::Raft::broadcastHeartbeat(a1);
    goto LABEL_211;
  }

  if (v99 == 2)
  {
    if (v91)
    {
      re::ProgressSet::voterIds((a1 + 552), &v155);
      v29 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v155, (a1 + 1056));
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v155);
      if (!v29 || (*(a1 + 1024) & 1) != 0)
      {
        v30 = 0;
        *a3 = 1024;
        goto LABEL_310;
      }

      v54 = v91;
      if (v91)
      {
        v55 = 0;
        v56 = 1;
        do
        {
          v57 = &v92[v55];
          if (LOBYTE(v92[v55 + 10]) == 1)
          {
            if (*(a1 + 1072) > *(a1 + 296) || *(a1 + 856) == 1)
            {
              v58 = &v92[v55];
              v58[7] = 0;
              v58[11] = 0;
              v58[12] = 0;
              ++*(v58 + 16);
              v58[2] = 0;
              ++*(v58 + 6);
              *(v57 + 80) = 0;
            }

            else
            {
              *(a1 + 1072) = re::RaftLog::lastIndex(a1) + v56;
              v54 = v91;
            }
          }

          v55 += 13;
        }

        while (v56++ < v54);
      }

      re::Raft::appendEntry(a1, v90);
      re::Raft::broadcastAppend(a1);
      goto LABEL_211;
    }

LABEL_323:
    re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) stepped empty msgprop", "!Unreachable code", "stepLeader", 994);
    _os_crash();
    __break(1u);
    return;
  }

LABEL_155:
  LOBYTE(v133[0]) = 0;
  v145 = 0;
  v139[0] = 0;
  *&v138 = 0;
  v137 = 0uLL;
  DWORD2(v138) = 0;
  v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v100[0] ^ (v100[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v100[0] ^ (v100[0] >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 552, v100, v42 ^ (v42 >> 31), &v155);
  if (HIDWORD(v156) != 0x7FFFFFFF)
  {
    v43 = 0;
    if (v99 > 9u)
    {
      if (v99 == 10)
      {
        v73 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v100);
        if (*(v73 + 64) == 1)
        {
          re::Progress::becomeProbe(v73);
        }

        goto LABEL_285;
      }

      if (v99 == 11)
      {
        v74 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v100);
        if (*(v74 + 64) == 2)
        {
          v75 = v74;
          if (v104 == 1)
          {
            *(v74 + 88) = 0;
          }

          re::Progress::becomeProbe(v74);
          v43 = 0;
          *(v75 + 104) = 1;
          *(v75 + 96) = 0;
          goto LABEL_286;
        }

        goto LABEL_285;
      }

      if (v99 != 13)
      {
LABEL_286:
        LOBYTE(v155) = 1;
        re::ProgressSet::ProgressSet(&v156, (a1 + 552));
        re::Optional<re::ProgressSet>::operator=((a1 + 544), &v155);
        if (v155 == 1)
        {
          re::ProgressSet::~ProgressSet(&v156);
        }

        if (v145)
        {
          v83 = re::ProgressSet::maximalCommittedIndex((a1 + 552));
          if (re::RaftLog::maybeCommit(a1, v83, *(a1 + 1040)))
          {
            if (*(a1 + 1155) != 1 || *(a1 + 1072) > *(a1 + 296) || *(a1 + 856) == 1)
            {
              re::Raft::broadcastAppend(a1);
            }
          }

          else if (v43)
          {
            LOBYTE(v133[0]) = 1;
          }
        }

        goto LABEL_296;
      }

      v146[0] = v100[0];
      re::ProgressSet::learnerIds((a1 + 552), &v155);
      v44 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v155, v146);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v155);
      if (!v44)
      {
        v45 = v146[0];
        if (*(a1 + 1024) != 1)
        {
          goto LABEL_164;
        }

        if (*(a1 + 1032) != v146[0])
        {
          *(a1 + 1024) = 0;
LABEL_164:
          if (v45 != *(a1 + 1056))
          {
            *(a1 + 1096) = 0;
            *(a1 + 1024) = 1;
            *(a1 + 1032) = v45;
            v46 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v146);
            v47 = *(v46 + 9);
            if (v47 == re::RaftLog::lastIndex(a1))
            {
              re::Raft::sendTimeoutNow(a1, v45);
            }

            else
            {
              re::Raft::sendAppend(a1, v45, v46);
            }
          }
        }
      }

LABEL_285:
      v43 = 0;
      goto LABEL_286;
    }

    if (v99 != 4)
    {
      if (v99 != 9)
      {
        goto LABEL_286;
      }

      v61 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v100);
      v62 = v61;
      *(v61 + 104) = 256;
      if (*(v61 + 64) == 1 && *(v61 + 48) == *(v61 + 56))
      {
        re::Inflights::freeFirstOne(v61);
      }

      v63 = *(v62 + 72);
      if (v63 < re::RaftLog::lastIndex(a1) || *(v62 + 96))
      {
        LOBYTE(v133[0]) = 1;
      }

      v43 = 0;
      if (*(a1 + 528) || !v95)
      {
        goto LABEL_286;
      }

      re::ReadOnly::recvAck((a1 + 432), v90, &v155);
      hasQuorum = re::ProgressSet::hasQuorum(a1 + 552, &v155);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v155);
      if (hasQuorum)
      {
        re::ReadOnly::advance((a1 + 432), v90, v146);
        if (v147)
        {
          v65 = v148;
          v66 = 440 * v147;
          do
          {
            v67 = *(v65 + 46);
            if (v67 && v67 != *(a1 + 1056))
            {
              v156 = 0;
              v155 = 0;
              v158 = 0;
              v157 = 0;
              *__s2 = 0u;
              v160 = 0u;
              v161 = 0;
              v162 = 0u;
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v171 = 0u;
              v172 = 0u;
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0;
              v180 = 0u;
              memset(v181, 0, 25);
              v179 = 0u;
              v177 = 16;
              v69 = *(v65 + 54);
              v178 = v67;
              *(&v180 + 1) = v69;
              re::DynamicArray<re::Entry>::operator=(&v155, v65 + 6);
              re::DynamicArray<re::Message>::add(&v137, &v155);
              re::Snapshot::~Snapshot((&v162 + 8));
              if (__s2[1])
              {
                if (v162)
                {
                  (*(*__s2[1] + 40))();
                }

                *&v162 = 0;
                v160 = 0uLL;
                __s2[1] = 0;
                ++v161;
              }

              re::DynamicArray<re::Entry>::deinit(&v155);
            }

            else
            {
              v156 = 0;
              v155 = 0;
              v158 = 0;
              v157 = 0;
              v68 = *(v65 + 54);
              __s2[0] = 0;
              __s2[1] = v68;
              re::DynamicArray<BOOL>::operator=(&v155, *(v65 + 10));
              re::DynamicArray<re::ReadState>::add(a1 + 352, &v155);
              if (v155 && __s2[0])
              {
                (*(*v155 + 40))();
              }
            }

            v65 = (v65 + 440);
            v66 -= 440;
          }

          while (v66);
        }

        v70 = v146[0];
        if (v146[0])
        {
          v71 = v148;
          if (v148)
          {
            if (v147)
            {
              v72 = 440 * v147;
              do
              {
                re::ReadIndexStatus::~ReadIndexStatus(v71);
                v71 = (v71 + 440);
                v72 -= 440;
              }

              while (v72);
              v70 = v146[0];
              v71 = v148;
            }

            (*(*v70 + 40))(v70, v71);
          }
        }
      }

      goto LABEL_285;
    }

    v76 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v100);
    v77 = v76;
    *(v76 + 105) = 1;
    if (v104 == 1)
    {
      if (!re::Progress::maybeDecrementTo(v76, v101, v103, v102))
      {
        goto LABEL_285;
      }

      if (*(v77 + 64) == 1)
      {
        re::Progress::becomeProbe(v77);
      }

      v43 = 0;
      v78 = v133;
    }

    else
    {
      if (*(v76 + 64) == 1)
      {
        v43 = *(v76 + 48) == *(v76 + 56);
      }

      else if (*(v76 + 64))
      {
        v43 = 1;
      }

      else
      {
        v43 = *(v76 + 104);
      }

      v79 = v101;
      v80 = *(v76 + 72);
      if (v80 < v101)
      {
        *(v76 + 72) = v101;
        *(v76 + 104) = 0;
      }

      if (*(v76 + 80) < v79 + 1)
      {
        *(v76 + 80) = v79 + 1;
      }

      if (v80 >= v79)
      {
        goto LABEL_286;
      }

      if (*(a1 + 1024) == 1)
      {
        Index = re::RaftLog::lastIndex(a1);
        if (v100[0] == *(a1 + 1032) && *(v77 + 72) == Index)
        {
          re::Raft::sendTimeoutNow(a1, v100[0]);
        }
      }

      v82 = *(v77 + 64);
      if (v82 == 2)
      {
        if (*(v77 + 72) < *(v77 + 88))
        {
          goto LABEL_286;
        }

        re::Progress::becomeProbe(v77);
      }

      else if (v82 == 1)
      {
        re::Inflights::freeTo(v77, v101);
      }

      else if (!*(v77 + 64))
      {
        *(v77 + 104) = 0;
        *(v77 + 64) = 1;
        *(v77 + 40) = 0;
        *(v77 + 48) = 0;
        *(v77 + 80) = *(v77 + 72) + 1;
        *(v77 + 88) = 0;
      }

      v78 = &v145;
    }

    *v78 = 1;
    goto LABEL_286;
  }

LABEL_296:
  if (LOBYTE(v133[0]) == 1)
  {
    v84 = v100[0];
    v85 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v100);
    re::Raft::sendAppend(a1, v84, v85);
    LOBYTE(v155) = 1;
    re::ProgressSet::ProgressSet(&v156, (a1 + 552));
    re::Optional<re::ProgressSet>::operator=((a1 + 544), &v155);
    if (v155 == 1)
    {
      re::ProgressSet::~ProgressSet(&v156);
    }
  }

  if (v138)
  {
    v86 = v139[0];
    v87 = 384 * v138;
    v88 = 384 * v138;
    v89 = v139[0];
    do
    {
      re::Message::Message(&v155, v89);
      re::Raft::send(a1, &v155);
      re::Snapshot::~Snapshot((&v162 + 8));
      if (__s2[1])
      {
        if (v162)
        {
          (*(*__s2[1] + 40))();
        }

        *&v162 = 0;
        v160 = 0uLL;
        __s2[1] = 0;
        ++v161;
      }

      re::DynamicArray<re::Entry>::deinit(&v155);
      v89 = (v89 + 384);
      v88 -= 384;
    }

    while (v88);
    *&v138 = 0;
    do
    {
      re::Snapshot::~Snapshot((v86 + 80));
      re::DynamicArray<unsigned long>::deinit(v86 + 40);
      re::DynamicArray<re::Entry>::deinit(v86);
      v86 = (v86 + 384);
      v87 -= 384;
    }

    while (v87);
    ++DWORD2(v138);
  }

  v30 = 1;
  *a3 = 1;
  re::DynamicArray<re::Message>::deinit(&v137);
LABEL_310:
  re::Snapshot::~Snapshot(&v98);
  if (v93)
  {
    if (v97)
    {
      (*(*v93 + 40))();
    }

    v97 = 0;
    v94 = 0;
    v95 = 0;
    v93 = 0;
    ++v96;
  }

  re::DynamicArray<re::Entry>::deinit(v90);
  if (v30)
  {
    goto LABEL_96;
  }
}

uint64_t re::Raft::hup(uint64_t this, int a2)
{
  if (*(this + 536) != 2)
  {
    v18 = v3;
    v19 = v4;
    v6 = this;
    if (*(this + 48) == 1)
    {
      v2 = *(this + 264) + 1;
    }

    if (*(this + 48))
    {
      v7 = v2;
    }

    else
    {
      v7 = *(this + 296) + 1;
    }

    re::RaftLog::slice(this, v7, *(this + 288) + 1, &v13);
    re::DynamicArray<re::Entry>::DynamicArray(v15, v14);
    if (v13 == 1)
    {
      re::DynamicArray<re::Entry>::deinit(v14);
    }

    if (!v16)
    {
      goto LABEL_15;
    }

    v8 = 0;
    v9 = 104 * v16;
    v10 = (v17 + 80);
    do
    {
      v11 = *v10;
      v10 += 104;
      if (v11 == 1)
      {
        ++v8;
      }

      v9 -= 104;
    }

    while (v9);
    if (!v8)
    {
LABEL_15:
      if (a2)
      {
        v12 = 0;
      }

      else if (*(v6 + 1154) == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      re::DynamicArray<unsigned char>::DynamicArray(&v13, &v12, 1uLL);
      re::Raft::campaign(v6, &v13);
      if (v13)
      {
        if (v14[3])
        {
          (*(*v13 + 40))();
        }
      }
    }

    return re::DynamicArray<re::Entry>::deinit(v15);
  }

  return this;
}

void re::Raft::campaign(uint64_t a1, uint64_t a2)
{
  LOBYTE(v45[0]) = 1;
  re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
  v4 = *(a2 + 16);
  v5 = v4 == v33 && memcmp(*(a2 + 32), __s2, v4) == 0;
  if (v32[0] && __s2)
  {
    (*(*v32[0] + 40))();
  }

  if (v5)
  {
    *(a1 + 536) = 3;
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 304);
    *(a1 + 1064) = 0;
    v21 = *(a1 + 1040) + 1;
    v6 = *(a1 + 1056);
    v7 = 17;
  }

  else
  {
    re::Raft::reset(a1, *(a1 + 1040) + 1);
    v6 = *(a1 + 1056);
    *(a1 + 1048) = v6;
    *(a1 + 536) = 1;
    v21 = *(a1 + 1040);
    v7 = 5;
  }

  v20 = v7;
  re::Raft::registerVote(a1, v6, 1);
  if (re::ProgressSet::candidacyStatus(a1 + 552, a1 + 304))
  {
    re::ProgressSet::voterIds((a1 + 552), v45);
    v8 = v47;
    if (v47)
    {
      v9 = 0;
      v10 = (v46 + 8);
      while (1)
      {
        v11 = *v10;
        v10 += 6;
        if (v11 < 0)
        {
          break;
        }

        if (v47 == ++v9)
        {
          LODWORD(v9) = v47;
          break;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v9 != v47)
    {
      v14 = v46;
      v15 = v47;
      do
      {
        v16 = *(v14 + 24 * v9 + 16);
        if (v16 != v6)
        {
          v32[0] = 0;
          v32[1] = 0;
          v34 = 0;
          v33 = 0;
          __s2 = 0u;
          v36 = 0u;
          v37 = 0;
          memset(v38, 0, sizeof(v38));
          v43 = 0u;
          memset(v44, 0, sizeof(v44));
          v41 = 0;
          v39 = v20;
          v40 = v16;
          v42 = v21;
          *(&v43 + 1) = re::RaftLog::lastIndex(a1);
          *&v43 = re::RaftLog::lastTerm(a1);
          v29 = 0;
          re::DynamicArray<unsigned char>::DynamicArray(v30, &v29, 1uLL);
          v17 = 0;
          v18 = *(a2 + 16);
          if (v18 == v30[2])
          {
            v17 = memcmp(*(a2 + 32), v31, v18) == 0;
          }

          if (v30[0] && v31)
          {
            (*(*v30[0] + 40))();
          }

          if (v17)
          {
            re::DynamicArray<BOOL>::operator=(&__s2 + 8, a2);
          }

          re::Message::Message(v22, v32);
          re::Raft::send(a1, v22);
          re::Snapshot::~Snapshot(&v28);
          if (v23)
          {
            if (v27)
            {
              (*(*v23 + 40))();
            }

            v27 = 0;
            v24 = 0;
            v25 = 0;
            v23 = 0;
            ++v26;
          }

          re::DynamicArray<re::Entry>::deinit(v22);
          re::Snapshot::~Snapshot(&v38[1]);
          if (*(&__s2 + 1))
          {
            if (v38[0])
            {
              (*(**(&__s2 + 1) + 40))();
            }

            v38[0] = 0;
            v36 = 0uLL;
            *(&__s2 + 1) = 0;
            ++v37;
          }

          re::DynamicArray<re::Entry>::deinit(v32);
          v15 = v47;
          v14 = v46;
        }

        if (v15 <= v9 + 1)
        {
          v19 = v9 + 1;
        }

        else
        {
          v19 = v15;
        }

        while (v19 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v14 + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        LODWORD(v9) = v19;
LABEL_45:
        ;
      }

      while (v9 != v8);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v45);
  }

  else
  {
    LOBYTE(v45[0]) = 1;
    re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
    v12 = *(a2 + 16);
    v13 = v12 == v33 && memcmp(*(a2 + 32), __s2, v12) == 0;
    if (v32[0] && __s2)
    {
      (*(*v32[0] + 40))();
    }

    if (v13)
    {
      LOBYTE(v45[0]) = 2;
      re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
      re::Raft::campaign(a1, v32);
      if (v32[0] && __s2)
      {
        (*(*v32[0] + 40))();
      }
    }

    else
    {
      re::Raft::becomeLeader(a1);
    }
  }
}

uint64_t re::Raft::registerVote(uint64_t this, unint64_t a2, char a3)
{
  v4 = this;
  v10 = a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(this + 304) || (v7 = *(*(this + 312) + 4 * (v6 % *(this + 328))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    this = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 304, &v10, v6, &v11);
    v9 = HIDWORD(v12);
    if (HIDWORD(v12) == 0x7FFFFFFF)
    {
      this = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4 + 304, v12, v11);
      *(this + 8) = v10;
      *(this + 16) = a3;
      ++*(v4 + 344);
    }

    else
    {
      ++*(v4 + 344);
      *(*(v4 + 320) + 32 * v9 + 16) = a3;
    }
  }

  else
  {
    v8 = *(this + 320);
    while (*(v8 + 32 * v7 + 8) != a2)
    {
      v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return this;
}

_BYTE *re::Raft::finalizeMembershipChange@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  if (*(a2 + 120) != 4 || *(a2 + 152) == 1)
  {
    v4 = 2560;
LABEL_4:
    *a3 = v4;
    return result;
  }

  v5 = result;
  if ((result[640] & 1) == 0)
  {
    v4 = 3584;
    goto LABEL_4;
  }

  if (!re::Configuration::contains((result + 648), *(result + 133)))
  {
    Term = re::RaftLog::lastTerm(v5);
    if (v5[536] == 2)
    {
      v7 = *(v5 + 135);
      re::Raft::reset(v5, Term);
      *(v5 + 133) = 0;
      v5[536] = 0;
      *(v5 + 135) = v7;
    }

    else
    {
      *(v5 + 133) = 0;
    }
  }

  re::ProgressSet::finalizeMembershipChange((v5 + 552), v10);
  if (v10[0] == 1)
  {
    v9[0] = 0;
    re::Optional<re::ConfChange>::operator=(v5 + 856, v9);
    result = re::Optional<re::ConfChange>::~Optional(v9);
    v8 = v10[0];
    *a3 = 1;
    if (v8)
    {
      return result;
    }
  }

  else
  {
    *a3 = 3584;
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))(v11, v13);
    }
  }

  return result;
}

uint64_t re::Raft::sendTimeoutNow(re::Raft *this, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v18 = a2;
  v17 = 14;
  re::Message::Message(v4, v11);
  re::Raft::send(this, v4);
  re::Snapshot::~Snapshot(&v10);
  if (v5)
  {
    if (v9)
    {
      (*(*v5 + 40))();
    }

    v9 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    ++v8;
  }

  re::DynamicArray<re::Entry>::deinit(v4);
  re::Snapshot::~Snapshot(&v16[1]);
  if (*(&v13 + 1))
  {
    if (v16[0])
    {
      (*(**(&v13 + 1) + 40))();
    }

    v16[0] = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  return re::DynamicArray<re::Entry>::deinit(v11);
}

uint64_t re::DynamicArray<re::ReadState>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::ReadState>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ReadState>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::DynamicArray<BOOL>::DynamicArray(*(a1 + 32) + 48 * v5, a2);
  *(result + 40) = a2[5];
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Raft::handleAppendEntries(re::Raft *this, const re::Message *a2)
{
  if (*(this + 135))
  {

    return re::Raft::sendRequestSnapshot(this);
  }

  v5 = *(a2 + 43);
  v6 = *(this + 36);
  if (v5 < v6)
  {
    v26 = 0;
    v25 = 0;
    v28 = 0;
    v27 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v44 = 0u;
    v45 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v46 = 0;
    memset(v51, 0, 25);
    v50 = 0u;
    v49 = 0u;
    v47 = 4;
    v48 = *(a2 + 40);
    *(&v50 + 1) = v6;
    re::Message::Message(v18, &v25);
    re::Raft::send(this, v18);
    re::Snapshot::~Snapshot(&v24);
    if (v19)
    {
      if (v23)
      {
        (*(*v19 + 40))();
      }

      v23 = 0;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      ++v22;
    }

    v7 = v18;
    goto LABEL_22;
  }

  v26 = 0;
  v25 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v44 = 0u;
  v45 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v46 = 0;
  memset(v51, 0, 25);
  v50 = 0u;
  v49 = 0u;
  v48 = *(a2 + 40);
  v47 = 4;
  re::RaftLog::maybeAppend(this, v5, *(a2 + 42), *(a2 + 44), a2, v16);
  if (v16[0] == 1)
  {
    *(&v50 + 1) = v17;
    v8 = v13;
    re::Message::Message(v13, &v25);
    re::Raft::send(this, v13);
    re::Snapshot::~Snapshot(&v15);
    if (v14[0])
    {
      v9 = v14;
      if (v14[4])
      {
        (*(*v14[0] + 40))();
      }

      v8 = v13;
LABEL_20:
      *(v8 + 9) = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      ++*(v8 + 16);
    }
  }

  else
  {
    *(&v50 + 1) = *(a2 + 43);
    BYTE8(v51[1]) = 1;
    *&v51[1] = re::RaftLog::lastIndex(this);
    v8 = v10;
    re::Message::Message(v10, &v25);
    re::Raft::send(this, v10);
    re::Snapshot::~Snapshot(&v12);
    if (v11[0])
    {
      v9 = v11;
      if (v11[4])
      {
        (*(*v11[0] + 40))();
      }

      v8 = v10;
      goto LABEL_20;
    }
  }

  v7 = v8;
LABEL_22:
  re::DynamicArray<re::Entry>::deinit(v7);
  re::Snapshot::~Snapshot((&v32 + 8));
  if (*(&v29 + 1))
  {
    if (v32)
    {
      (*(**(&v29 + 1) + 40))();
    }

    *&v32 = 0;
    v30 = 0uLL;
    *(&v29 + 1) = 0;
    ++v31;
  }

  return re::DynamicArray<re::Entry>::deinit(&v25);
}

uint64_t re::Raft::handleHeartbeat(re::Raft *this, const re::Message *a2)
{
  re::RaftLog::commitTo(this, *(a2 + 44));
  if (*(this + 135))
  {

    return re::Raft::sendRequestSnapshot(this);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    memset(v17, 0, sizeof(v17));
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v20 = 0u;
    v18 = 9;
    v19 = *(a2 + 40);
    re::DynamicArray<BOOL>::operator=(&v14 + 8, a2 + 5);
    re::Message::Message(v5, v12);
    re::Raft::send(this, v5);
    re::Snapshot::~Snapshot(&v11);
    if (v6)
    {
      if (v10)
      {
        (*(*v6 + 40))();
      }

      v10 = 0;
      v7 = 0;
      v8 = 0;
      v6 = 0;
      ++v9;
    }

    re::DynamicArray<re::Entry>::deinit(v5);
    re::Snapshot::~Snapshot(&v17[1]);
    if (*(&v14 + 1))
    {
      if (v17[0])
      {
        (*(**(&v14 + 1) + 40))();
      }

      v17[0] = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    return re::DynamicArray<re::Entry>::deinit(v12);
  }
}

uint64_t re::Raft::handleSnapshot(re::Raft *this, const re::Message *a2)
{
  v4 = *(this + 36);
  if (*(a2 + 36) < v4)
  {
LABEL_2:
    v27 = 0;
    v26 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v45 = 0u;
    v46 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v47 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v50 = 0u;
    v48 = 4;
    v49 = *(a2 + 40);
    *(&v51 + 1) = v4;
    re::Message::Message(v12, &v26);
    re::Raft::send(this, v12);
    re::Snapshot::~Snapshot(&v18);
    if (v13)
    {
      if (v17)
      {
        (*(*v13 + 40))();
      }

      v17 = 0;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      ++v16;
    }

    re::DynamicArray<re::Entry>::deinit(v12);
    re::Snapshot::~Snapshot((&v33 + 8));
    if (*(&v30 + 1))
    {
      if (v33)
      {
        (*(**(&v30 + 1) + 40))();
      }

      *&v33 = 0;
      v31 = 0uLL;
      *(&v30 + 1) = 0;
LABEL_75:
      ++v32;
      return re::DynamicArray<re::Entry>::deinit(&v26);
    }

    return re::DynamicArray<re::Entry>::deinit(&v26);
  }

  re::DynamicArray<char const*>::DynamicArray(v72, a2 + 15);
  re::DynamicArray<char const*>::DynamicArray(v73, a2 + 20);
  re::DynamicArray<char const*>::DynamicArray(v77, a2 + 25);
  re::DynamicArray<char const*>::DynamicArray(v80, a2 + 30);
  v83 = *(a2 + 280);
  v84 = *(a2 + 37);
  if (!*(this + 135))
  {
    v9 = v84;
    re::RaftLog::getTerm(this, *(&v83 + 1), &v26);
    if (v26 == 1 && v27 == v9)
    {
      re::RaftLog::commitTo(this, *(&v83 + 1));
LABEL_24:
      v54 = 1;
      v10 = &v53;
      goto LABEL_48;
    }
  }

  if (*(this + 145) && (*(this + 1152) & 1) == 0 && v74)
  {
    v5 = v76;
    v6 = 8 * v74;
    while (*v5 != *(this + 132))
    {
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

LABEL_17:
  Index = re::RaftLog::lastIndex(this);
  re::ProgressSet::restoreSnapshotMeta(v72, Index + 1, *(this + 136), v59);
  LOBYTE(v26) = 1;
  re::ProgressSet::ProgressSet(&v27, v59);
  re::Optional<re::ProgressSet>::operator=(this + 544, &v26);
  if (v26 == 1)
  {
    re::ProgressSet::~ProgressSet(&v27);
  }

  re::ProgressSet::~ProgressSet(v59);
  *(re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, this + 132) + 72) = Index;
  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 792, this + 132))
  {
    v8 = 1;
LABEL_27:
    *(this + 1152) = v8;
    goto LABEL_28;
  }

  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 744, this + 132))
  {
    v8 = 0;
    goto LABEL_27;
  }

LABEL_28:
  if (v83)
  {
    re::DynamicArray<char const*>::DynamicArray(v55, v77);
    re::DynamicArray<char const*>::DynamicArray(v56, v80);
    memset(v59, 0, sizeof(v59));
    v60 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v71 = 0;
    v67 = 3;
    re::DynamicArray<unsigned long long>::operator=(&v61 + 8, v55);
    re::DynamicArray<unsigned long long>::operator=(&v64, v56);
    v71 = 1;
    v70 = v83;
    LOBYTE(v26) = 1;
    re::ConfChange::ConfChange(&v27, v59);
    re::Optional<re::ConfChange>::operator=(this + 856, &v26);
    re::Optional<re::ConfChange>::~Optional(&v26);
    if (v64)
    {
      if (v66)
      {
        (*(*v64 + 40))();
      }

      v66 = 0;
      *&v65 = 0;
      v64 = 0uLL;
      ++DWORD2(v65);
    }

    if (*(&v61 + 1))
    {
      if (*(&v63 + 1))
      {
        (*(**(&v61 + 1) + 40))();
      }

      *(&v63 + 1) = 0;
      v62 = 0uLL;
      *(&v61 + 1) = 0;
      LODWORD(v63) = v63 + 1;
    }

    if (v59[0] && v61)
    {
      (*(*v59[0] + 40))();
    }

    if (v56[0])
    {
      if (v58)
      {
        (*(*v56[0] + 40))();
      }

      v58 = 0;
      memset(v56, 0, sizeof(v56));
      ++v57;
    }

    if (v55[0] && v55[4])
    {
      (*(*v55[0] + 40))();
    }
  }

  *(this + 135) = 0;
  v10 = &v54;
LABEL_48:
  *v10 = 0;
  if (v80[0])
  {
    if (v82)
    {
      (*(*v80[0] + 40))(v80[0]);
    }

    v82 = 0;
    memset(v80, 0, sizeof(v80));
    ++v81;
  }

  if (v77[0])
  {
    if (v79)
    {
      (*(*v77[0] + 40))(v77[0]);
    }

    v79 = 0;
    memset(v77, 0, sizeof(v77));
    ++v78;
  }

  if (v73[0])
  {
    if (v76)
    {
      (*(*v73[0] + 40))(v73[0]);
    }

    v76 = 0;
    v73[1] = 0;
    v74 = 0;
    v73[0] = 0;
    ++v75;
  }

  if (v72[0] && v72[4])
  {
    (*(*v72[0] + 40))(v72[0]);
  }

  if (v54)
  {
    if ((v53 & 1) == 0)
    {
      v4 = *(this + 36);
      goto LABEL_2;
    }
  }

  else
  {
    *(this + 36) = *(a2 + 36);
    re::Unstable::restore((this + 8), (a2 + 80));
  }

  v27 = 0;
  v26 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v45 = 0u;
  v46 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v47 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0u;
  v50 = 0u;
  v48 = 4;
  v49 = *(a2 + 40);
  *(&v51 + 1) = re::RaftLog::lastIndex(this);
  re::Message::Message(v19, &v26);
  re::Raft::send(this, v19);
  re::Snapshot::~Snapshot(&v25);
  if (v20)
  {
    if (v24)
    {
      (*(*v20 + 40))();
    }

    v24 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    ++v23;
  }

  re::DynamicArray<re::Entry>::deinit(v19);
  re::Snapshot::~Snapshot((&v33 + 8));
  if (*(&v30 + 1))
  {
    if (v33)
    {
      (*(**(&v30 + 1) + 40))();
    }

    *&v33 = 0;
    v31 = 0uLL;
    *(&v30 + 1) = 0;
    goto LABEL_75;
  }

  return re::DynamicArray<re::Entry>::deinit(&v26);
}

uint64_t re::Raft::sendRequestSnapshot(re::Raft *this)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v20 = 0u;
  v21 = 0u;
  v18 = 4;
  v2 = *(this + 36);
  v22 = 0;
  *(&v21 + 1) = v2;
  v25 = 1;
  Index = re::RaftLog::lastIndex(this);
  v3 = *(this + 135);
  v19 = *(this + 133);
  v23 = v3;
  re::Message::Message(v5, v12);
  re::Raft::send(this, v5);
  re::Snapshot::~Snapshot(&v11);
  if (v6)
  {
    if (v10)
    {
      (*(*v6 + 40))();
    }

    v10 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    ++v9;
  }

  re::DynamicArray<re::Entry>::deinit(v5);
  re::Snapshot::~Snapshot(&v17[1]);
  if (*(&v14 + 1))
  {
    if (v17[0])
    {
      (*(**(&v14 + 1) + 40))();
    }

    v17[0] = 0;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    ++v16;
  }

  return re::DynamicArray<re::Entry>::deinit(v12);
}

__n128 re::DynamicArray<re::Entry>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Entry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 104 * v4);
  re::DynamicArray<BOOL>::DynamicArray(v5, a2);
  re::DynamicArray<BOOL>::DynamicArray(&v5[2].n128_i64[1], &a2[2].n128_i64[1]);
  result = a2[5];
  v5[6].n128_u64[0] = a2[6].n128_u64[0];
  v5[5] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Entry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 104 * v4);
  v5[2].n128_u64[0] = 0;
  v5->n128_u64[1] = 0;
  v5[1].n128_u64[0] = 0;
  v5->n128_u64[0] = 0;
  v5[1].n128_u32[2] = 0;
  v6 = a2->n128_u64[1];
  v5->n128_u64[0] = a2->n128_u64[0];
  v5->n128_u64[1] = v6;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  v7 = v5[1].n128_u64[0];
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v7;
  v8 = v5[2].n128_u64[0];
  v5[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v8;
  ++a2[1].n128_u32[2];
  ++v5[1].n128_u32[2];
  v5[4].n128_u64[1] = 0;
  v5[3].n128_u64[0] = 0;
  v5[3].n128_u64[1] = 0;
  v5[2].n128_u64[1] = 0;
  v5[4].n128_u32[0] = 0;
  v9 = a2[3].n128_u64[0];
  v5[2].n128_u64[1] = a2[2].n128_u64[1];
  v5[3].n128_u64[0] = v9;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  v10 = v5[3].n128_u64[1];
  v5[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v10;
  v11 = v5[4].n128_u64[1];
  v5[4].n128_u64[1] = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = v11;
  ++a2[4].n128_u32[0];
  ++v5[4].n128_u32[0];
  result = a2[5];
  v5[6].n128_u64[0] = a2[6].n128_u64[0];
  v5[5] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::Raft::addVoterOrLearner(re::Raft *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = a3;
  v34 = a2;
  *a4 = 1;
  if (a3)
  {
    Index = re::RaftLog::lastIndex(this);
    v8 = *(this + 136);
    v9 = Index + 1;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v8;
    re::DynamicArray<float *>::setCapacity(&v20, v8);
    v28 = 0;
    v29 = 0;
    v30 = v9;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    re::ProgressSet::insertLearner((this + 552), &v20, v34, v17);
    goto LABEL_10;
  }

  re::ProgressSet::learnerIds((this + 552), &v20);
  v10 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v20, &v34);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v20);
  if (!v10)
  {
    v11 = re::RaftLog::lastIndex(this);
    v12 = *(this + 136);
    v13 = v11 + 1;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v12;
    re::DynamicArray<float *>::setCapacity(&v20, v12);
    v28 = 0;
    v29 = 0;
    v30 = v13;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    re::ProgressSet::insertVoter((this + 552), &v20, v34, v17);
LABEL_10:
    re::Result<re::Unit,re::DetailedError>::operator=(a4, v17);
    if (v17[0] & 1) == 0 && v18 && (v19)
    {
      (*(*v18 + 40))();
    }

    if (v20 && v24)
    {
      (*(*v20 + 40))();
    }

    goto LABEL_17;
  }

  re::ProgressSet::promoteLearner((this + 552), v34, v14);
  if ((v14[0] & 1) == 0 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

LABEL_17:
  if (*a4 == 1)
  {
    if (*(this + 132) == v34)
    {
      *(this + 1152) = v4;
    }

    *(re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, &v34) + 105) = 1;
  }
}

_BYTE *re::Raft::removeNode@<X0>(re::Raft *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[13] = *MEMORY[0x1E69E9840];
  re::ProgressSet::remove((this + 552), a2, v15);
  if (v15[0])
  {
    re::ProgressSet::voterIds((this + 552), &v11);
    if (DWORD1(v13))
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v11);
    }

    else
    {
      re::ProgressSet::learnerIds((this + 552), v9);
      v6 = v10;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v9);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v11);
      if (!v6)
      {
LABEL_12:
        *a3 = 1;
        return re::Result<re::Optional<re::Progress>,re::DetailedError>::~Result(v15);
      }
    }

    v7 = re::ProgressSet::maximalCommittedIndex((this + 552));
    if (re::RaftLog::maybeCommit(this, v7, *(this + 130)))
    {
      re::Raft::broadcastAppend(this);
    }

    if (*(this + 536) == 2 && *(this + 1024) == 1 && *(this + 129) == a2)
    {
      *(this + 1024) = 0;
    }

    goto LABEL_12;
  }

  v11 = v16;
  re::DynamicString::DynamicString(&v12, v17);
  *a3 = 0;
  *(a3 + 8) = v11;
  *(a3 + 24) = v12;
  *(a3 + 48) = v14;
  *(a3 + 32) = v13;
  return re::Result<re::Optional<re::Progress>,re::DetailedError>::~Result(v15);
}

void RaftState::RaftState(RaftState *this, const RaftState *a2)
{
  v4 = re::Optional<re::ConfState>::Optional(this, a2);
  v5 = *(a2 + 88);
  v4[88] = v5;
  if (v5 == 1)
  {
    *(this + 12) = *(a2 + 12);
  }

  v6 = *(a2 + 104);
  *(this + 15) = *(a2 + 15);
  *(this + 104) = v6;
  re::DynamicArray<char const*>::DynamicArray(this + 128, a2 + 16);
  re::DynamicArray<char const*>::DynamicArray(this + 168, a2 + 21);
}

uint64_t re::Optional<re::Snapshot>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if (*a2)
    {
      re::DynamicArray<BOOL>::operator=(v4, (a2 + 8));
      re::DynamicArray<unsigned long long>::operator=(a1 + 48, (a2 + 48));
      re::DynamicArray<unsigned long long>::operator=(a1 + 88, (a2 + 88));
      re::DynamicArray<unsigned long long>::operator=(a1 + 128, (a2 + 128));
      re::DynamicArray<unsigned long long>::operator=(a1 + 168, (a2 + 168));
      v5 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v5;
    }

    else
    {
      re::Snapshot::~Snapshot(v4);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::DynamicArray<BOOL>::DynamicArray(a1 + 8, (a2 + 8));
    re::DynamicArray<char const*>::DynamicArray(a1 + 48, (a2 + 48));
    re::DynamicArray<char const*>::DynamicArray(a1 + 88, (a2 + 88));
    re::DynamicArray<char const*>::DynamicArray(a1 + 128, (a2 + 128));
    re::DynamicArray<char const*>::DynamicArray(a1 + 168, (a2 + 168));
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  return a1;
}

void re::RaftLog::~RaftLog(re::RaftLog *this)
{
  if (*(this + 48) == 1)
  {
    re::Snapshot::~Snapshot((this + 56));
  }

  re::DynamicArray<re::Entry>::deinit(this + 8);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t re::ProgressSet::ProgressSet(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  v6 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v6;
  ++*(a2 + 72);
  ++*(a1 + 72);
  LODWORD(v6) = *(a2 + 88);
  *(a1 + 88) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 132) = 0x7FFFFFFFLL;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 96), (a2 + 96));
    *(a1 + 144) = 0u;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0u;
    *(a1 + 180) = 0x7FFFFFFFLL;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 144), (a2 + 144));
  }

  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 228) = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 192), (a2 + 192));
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x7FFFFFFF00000000;
  *(a1 + 240) = 0u;
  *(a1 + 280) = 0;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 240), (a2 + 240));
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void re::ProgressSet::~ProgressSet(re::ProgressSet *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 30);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 24);
  if (*(this + 88) == 1)
  {
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 18);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 12);
  }

  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this);
}

double re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 136;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::ReadOnly::ReadOnly(uint64_t a1, _BYTE *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  v3 = (a1 + 48);
  *(a1 + 96) = *a2;
  re::Queue<re::DynamicArray<unsigned char>>::setCapacity(v3, 0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::allocEntry(v4, *(v7 + v5 + 488) % *(v4 + 24), *(v7 + v5 + 488));
        v9 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 8) = 0;
        v10 = *(v9 + 16);
        *(v8 + 8) = *(v9 + 8);
        *(v8 + 16) = v10;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        v11 = *(v8 + 24);
        *(v8 + 24) = *(v9 + 24);
        *(v9 + 24) = v11;
        v12 = *(v8 + 40);
        *(v8 + 40) = *(v9 + 40);
        *(v9 + 40) = v12;
        ++*(v9 + 32);
        ++*(v8 + 32);
        v13 = *(a2 + 16) + v5;
        *(v8 + 48) = 0u;
        v14 = v8 + 48;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0u;
        *(v8 + 84) = 0x7FFFFFFFLL;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v8 + 48), (v13 + 48));
        result = re::Message::Message(v14 + 48, v13 + 96);
        *(v14 + 432) = *(v13 + 480);
        v2 = *(a2 + 32);
      }

      v5 += 496;
    }
  }

  return result;
}

void re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 496 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 496 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 496 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 496 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 488) = a3;
  ++*(a1 + 28);
  return v7 + 496 * v5;
}

uint64_t re::Message::Message(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  ++*(a2 + 64);
  ++*(a1 + 64);
  re::DynamicArray<BOOL>::DynamicArray(a1 + 80, (a2 + 80));
  re::DynamicArray<char const*>::DynamicArray(a1 + 120, (a2 + 120));
  re::DynamicArray<char const*>::DynamicArray(a1 + 160, (a2 + 160));
  re::DynamicArray<char const*>::DynamicArray(a1 + 200, (a2 + 200));
  re::DynamicArray<char const*>::DynamicArray(a1 + 240, (a2 + 240));
  v10 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 280) = v10;
  v12 = *(a2 + 336);
  v11 = *(a2 + 352);
  v13 = *(a2 + 320);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 336) = v12;
  *(a1 + 352) = v11;
  *(a1 + 320) = v13;
  *(a1 + 304) = *(a2 + 304);
  return a1;
}

double re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 496;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 12);
    re::DynamicArray<unsigned long>::deinit((a1 + 2));

    re::ReadIndexStatus::~ReadIndexStatus(v2);
  }
}

void re::ReadIndexStatus::~ReadIndexStatus(re::ReadIndexStatus *this)
{
  re::Snapshot::~Snapshot((this + 128));
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<re::Entry>::deinit(this + 48);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this);
}

void *re::Queue<re::DynamicArray<unsigned char>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::DynamicArray<unsigned char>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 40 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[5 * v10];
          v12[4] = 0;
          *(v12 + 6) = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 0;
          v13 = *(v11 + 8);
          *v12 = *v11;
          v12[1] = v13;
          *v11 = 0;
          *(v11 + 8) = 0;
          v14 = v12[2];
          v12[2] = *(v11 + 16);
          *(v11 + 16) = v14;
          v15 = v12[4];
          v12[4] = *(v11 + 32);
          *(v11 + 32) = v15;
          ++*(v11 + 24);
          ++*(v12 + 6);
          re::DynamicArray<unsigned long>::deinit(v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::Queue<re::DynamicArray<unsigned char>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a1;
    v4 = *a2;
    if (*a1)
    {
      v5 = v3 == v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v7;
      *a2 = v3;
      a2[1] = v6;
      v8 = *(a1 + 16);
      *(a1 + 16) = a2[2];
      a2[2] = v8;
      v9 = *(a1 + 40);
      *(a1 + 40) = a2[5];
      a2[5] = v9;
      v10 = *(a1 + 24);
      *(a1 + 24) = a2[3];
      a2[3] = v10;
    }

    else if (v4)
    {
      re::Queue<re::DynamicArray<unsigned char>>::copy(a1, a2);
      ++*(a1 + 32);
    }

    else
    {
      re::Queue<re::DynamicArray<unsigned char>>::clear(a1);
    }
  }

  return a1;
}

void re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 496;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::Queue<re::DynamicArray<unsigned char>>::clear(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = 0;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(*(v1 + 40) + 40 * ((v2 + *(v1 + 24)) % *(v1 + 8)));
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  ++*(v1 + 32);
  return result;
}

uint64_t re::Queue<re::DynamicArray<unsigned char>>::copy(void *a1, void *a2)
{
  v4 = a2[2];
  if (v4 >= a1[2])
  {
    re::Queue<re::DynamicArray<unsigned char>>::setCapacity(a1, a2[2]);
    result = std::__copy_impl::operator()[abi:nn200100]<re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char>&>>(a2, 0, a2, a1[2], a1, 0, v8);
    v7 = a1[2];
    for (a1[2] = v4; v7 != a2[2]; ++v7)
    {
      result = re::DynamicArray<BOOL>::DynamicArray(a1[5] + 40 * ((v7 + a1[3]) % a1[1]), (a2[5] + 40 * ((v7 + a2[3]) % a2[1])));
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char>&>>(a2, 0, a2, a2[2], a1, 0, v8);
    if (v4 != a1[2])
    {
      v6 = v4;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(a1[5] + 40 * ((v6 + a1[3]) % a1[1]));
        ++v6;
      }

      while (v6 != a1[2]);
    }

    a1[2] = v4;
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char> const&>,re::Queue<re::DynamicArray<unsigned char>>::QueueIterator<re::DynamicArray<unsigned char>,re::DynamicArray<unsigned char>&>>@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        result = re::DynamicArray<BOOL>::operator=(a5[5] + 40 * ((a6 + a5[3]) % a5[1]), (a1[5] + 40 * ((a2 + a1[3]) % a1[1])));
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
  return result;
}

double re::Queue<re::DynamicArray<unsigned char>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          re::DynamicArray<unsigned long>::deinit(a1[5] + 40 * ((v4 + a1[3]) % a1[1]));
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

void re::Raft::~Raft(re::Raft *this)
{
  re::Optional<re::ConfChange>::~Optional(this + 856);
  if (*(this + 544) == 1)
  {
    re::ProgressSet::~ProgressSet((this + 552));
  }

  re::Queue<re::DynamicArray<unsigned char>>::deinit(this + 60);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(this + 54);
  re::DynamicArray<re::Message>::deinit(this + 392);
  re::DynamicArray<re::ReadState>::deinit(this + 352);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 38);

  re::RaftLog::~RaftLog(this);
}

uint64_t re::DynamicArray<re::ReadState>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 48;
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void RaftState::~RaftState(RaftState *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  if (*this == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 48);
    re::DynamicArray<unsigned long>::deinit(this + 8);
  }
}

re::ProgressSet *re::ProgressSet::ProgressSet(re::ProgressSet *this, const re::ProgressSet *a2)
{
  v4 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(this, a2);
  re::DynamicArray<char const*>::DynamicArray(v4 + 48, a2 + 6);
  v5 = *(a2 + 88);
  *(this + 88) = v5;
  if (v5 == 1)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(this + 96, a2 + 96);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(this + 144, a2 + 144);
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(this + 192, a2 + 192);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(this + 240, a2 + 240);
  *(this + 18) = *(a2 + 18);
  return this;
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, v4, v5);
    re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v7 + v5 + 128) % *(a1 + 24), *(v7 + v5 + 128));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        re::Progress::Progress((v8 + 16), (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 136;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 136 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 136 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 136 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 128) = a3;
  ++*(a1 + 28);
  return v7 + 136 * v5;
}

void re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v7 + v5 + 128) % *(a1 + 24), *(v7 + v5 + 128));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        re::Inflights::Inflights(v8 + 16, v9 + 16);
        v10 = *(v9 + 80);
        v11 = *(v9 + 96);
        *(v8 + 106) = *(v9 + 106);
        *(v8 + 80) = v10;
        *(v8 + 96) = v11;
        v2 = *(a2 + 32);
      }

      v5 += 136;
    }
  }
}

__n128 re::Inflights::Inflights(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(a1 + 24);
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}