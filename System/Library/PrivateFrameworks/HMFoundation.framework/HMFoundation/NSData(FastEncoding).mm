@interface NSData(FastEncoding)
- (id)hmf_keysForDictionaryAtOffset:()FastEncoding;
- (id)hmf_member:()FastEncoding forSetAtOffset:;
- (id)hmf_objectAtIndex:()FastEncoding forArrayAtOffset:;
- (id)hmf_objectForKey:()FastEncoding forDictionaryAtOffset:;
- (id)hmf_readArrayAtOffset:()FastEncoding;
- (id)hmf_readDataNoCopyAtOffset:()FastEncoding;
- (id)hmf_readDictionaryAtOffset:()FastEncoding;
- (id)hmf_readObject;
- (id)hmf_readObjectAtOffset:()FastEncoding;
- (id)hmf_readSetAtOffset:()FastEncoding;
- (id)hmf_readShortDataNoCopyAtOffset:()FastEncoding;
- (id)hmf_readShortStringAtOffset:()FastEncoding;
- (id)hmf_readStringAtOffset:()FastEncoding;
- (id)hmf_valuesForDictionaryAtOffset:()FastEncoding;
- (objc_class)hmf_readFastEncodableObjectAtOffset:()FastEncoding;
- (uint64_t)hmf_bytesAtOffset:()FastEncoding length:;
- (uint64_t)hmf_offsetForKeyValue:()FastEncoding forDictionaryAtOffset:;
- (uint64_t)hmf_readBytesAtOffset:()FastEncoding length:;
- (uint64_t)hmf_tableLookupWithIndex:()FastEncoding offset:;
- (unint64_t)hmf_containsObject:()FastEncoding forSetAtOffset:;
- (unsigned)hmf_readAndCheckTag:()FastEncoding offset:;
- (unsigned)hmf_readLengthAtOffset:()FastEncoding;
- (unsigned)hmf_readShortLengthAtOffset:()FastEncoding;
- (unsigned)hmf_readTableAtOffset:()FastEncoding length:;
- (void)hmf_enumerateObjectsForSetAtOffset:()FastEncoding usingBlock:;
@end

@implementation NSData(FastEncoding)

- (uint64_t)hmf_bytesAtOffset:()FastEncoding length:
{
  if (a4 + a3 <= [a1 length])
  {
    return [a1 bytes] + a3;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)hmf_readBytesAtOffset:()FastEncoding length:
{
  result = [a1 hmf_bytesAtOffset:*a3 length:?];
  if (result)
  {
    *a3 += a4;
  }

  return result;
}

- (unsigned)hmf_readLengthAtOffset:()FastEncoding
{
  result = [a1 hmf_readBytesAtOffset:a3 length:4];
  if (result)
  {
    return *result;
  }

  return result;
}

- (unsigned)hmf_readShortLengthAtOffset:()FastEncoding
{
  result = [a1 hmf_readBytesAtOffset:a3 length:1];
  if (result)
  {
    return *result;
  }

  return result;
}

- (id)hmf_readDataNoCopyAtOffset:()FastEncoding
{
  v8 = *a3;
  v5 = [a1 hmf_readLengthAtOffset:&v8];
  v6 = [a1 hmf_readBytesAtOffset:&v8 length:v5];
  if (v6)
  {
    *a3 = v8;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v5 freeWhenDone:0];
  }

  return v6;
}

- (id)hmf_readShortDataNoCopyAtOffset:()FastEncoding
{
  v8 = *a3;
  v5 = [a1 hmf_readShortLengthAtOffset:&v8];
  v6 = [a1 hmf_readBytesAtOffset:&v8 length:v5];
  if (v6)
  {
    *a3 = v8;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v5 freeWhenDone:0];
  }

  return v6;
}

- (id)hmf_readStringAtOffset:()FastEncoding
{
  v7 = *a3;
  v4 = [a1 hmf_readDataNoCopyAtOffset:&v7];
  if (v4)
  {
    *a3 = v7;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hmf_readShortStringAtOffset:()FastEncoding
{
  v7 = *a3;
  v4 = [a1 hmf_readShortDataNoCopyAtOffset:&v7];
  if (v4)
  {
    *a3 = v7;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)hmf_readTableAtOffset:()FastEncoding length:
{
  result = [a1 hmf_readBytesAtOffset:a3 length:4];
  if (result)
  {
    v8 = result;
    result = [a1 hmf_readBytesAtOffset:a3 length:4 * *result];
    if (result)
    {
      *a4 = *v8;
    }
  }

  return result;
}

- (uint64_t)hmf_tableLookupWithIndex:()FastEncoding offset:
{
  v7 = 0;
  v8 = a4;
  v5 = [a1 hmf_readTableAtOffset:&v8 length:&v7];
  result = 0;
  if (v5)
  {
    if (v7 > a3)
    {
      return *(v5 + 4 * a3);
    }
  }

  return result;
}

- (id)hmf_readArrayAtOffset:()FastEncoding
{
  v5 = *a3;
  v11 = 0;
  v12 = v5;
  [a1 hmf_readTableAtOffset:&v12 length:&v11];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v8 = [a1 hmf_readObjectAtOffset:&v12];
      [v6 addObject:v8];
    }
  }

  *a3 = v12;
  v9 = [v6 copy];

  return v9;
}

- (id)hmf_readSetAtOffset:()FastEncoding
{
  v5 = *a3;
  v11 = 0;
  v12 = v5;
  [a1 hmf_readTableAtOffset:&v12 length:&v11];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v8 = [a1 hmf_readObjectAtOffset:&v12];
      [v6 addObject:v8];
    }
  }

  *a3 = v12;
  v9 = [v6 copy];

  return v9;
}

- (objc_class)hmf_readFastEncodableObjectAtOffset:()FastEncoding
{
  v17 = *a3;
  v5 = [a1 hmf_readBytesAtOffset:&v17 length:1];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v6 = *v5;
  if (v6 == 38)
  {
    v7 = [a1 hmf_readShortStringAtOffset:&v17];
  }

  else
  {
    if (v6 != 64)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v7 = [a1 hmf_readStringAtOffset:&v17];
  }

  v9 = v7;
  if (v7)
  {
    v10 = [a1 hmf_readBytesAtOffset:&v17 length:1];
    if (v10)
    {
      if (*v10 == 68)
      {
        v11 = [a1 hmf_readDataNoCopyAtOffset:&v17];
        v12 = [v11 copy];

        if (v12)
        {
          v13 = NSClassFromString(v9);
          v8 = v13;
          if (!v13)
          {
LABEL_23:

            goto LABEL_18;
          }

          if ([(objc_class *)v13 conformsToProtocol:&unk_283EE3118])
          {
            v14 = [[v8 alloc] initWithFastEncodedData:v12];
            v8 = v14;
            if (v14)
            {
              *a3 = v17;
              v15 = v14;
            }

            goto LABEL_23;
          }
        }

        v8 = 0;
        goto LABEL_23;
      }
    }
  }

LABEL_17:
  v8 = 0;
LABEL_18:

LABEL_19:

  return v8;
}

- (id)hmf_readDictionaryAtOffset:()FastEncoding
{
  v5 = *a3;
  v12 = 0;
  v13 = v5;
  [a1 hmf_readTableAtOffset:&v13 length:&v12];
  v6 = objc_opt_new();
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v8 = [a1 hmf_readObjectAtOffset:&v13];
      v9 = [a1 hmf_readObjectAtOffset:&v13];
      [v6 setValue:v9 forKey:v8];
    }
  }

  *a3 = v13;
  v10 = [v6 copy];

  return v10;
}

- (id)hmf_readObjectAtOffset:()FastEncoding
{
  v5 = [a1 hmf_readBytesAtOffset:a3 length:1];
  v6 = 0;
  if (v5)
  {
    v7 = *v5;
    if (v7 > 0x57)
    {
      if (*v5 <= 0x65u)
      {
        if (*v5 > 0x62u)
        {
          if (v7 == 99)
          {
            v8 = [MEMORY[0x277CCABB0] numberWithChar:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 1)}];
          }

          else
          {
            if (v7 != 100)
            {
              goto LABEL_46;
            }

            v8 = [MEMORY[0x277CCABB0] numberWithDouble:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 8)}];
          }
        }

        else if (v7 == 88)
        {
          v8 = [a1 hmf_readFastEncodableObjectAtOffset:a3];
        }

        else
        {
          if (v7 != 91)
          {
            goto LABEL_46;
          }

          v8 = [a1 hmf_readArrayAtOffset:a3];
        }
      }

      else if (*v5 <= 0x70u)
      {
        if (v7 == 102)
        {
          v10 = MEMORY[0x277CCABB0];
          LODWORD(v11) = *[a1 hmf_readBytesAtOffset:a3 length:4];
          v8 = [v10 numberWithFloat:v11];
        }

        else
        {
          if (v7 != 105)
          {
            goto LABEL_46;
          }

          v8 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 4)}];
        }
      }

      else
      {
        switch(v7)
        {
          case 'q':
            v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 8)}];
            break;
          case 's':
            v8 = [MEMORY[0x277CCABB0] numberWithShort:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 2)}];
            break;
          case '{':
            v8 = [a1 hmf_readSetAtOffset:a3];
            break;
          default:
            goto LABEL_46;
        }
      }

      goto LABEL_45;
    }

    if (*v5 <= 0x42u)
    {
      if (*v5 > 0x3Fu)
      {
        if (v7 == 64)
        {
          v8 = [a1 hmf_readStringAtOffset:a3];
        }

        else
        {
          if (v7 != 66)
          {
            goto LABEL_46;
          }

          v8 = [MEMORY[0x277CCABB0] numberWithBool:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 1)}];
        }
      }

      else if (v7 == 38)
      {
        v8 = [a1 hmf_readShortStringAtOffset:a3];
      }

      else
      {
        if (v7 != 60)
        {
          goto LABEL_46;
        }

        v8 = [a1 hmf_readDictionaryAtOffset:a3];
      }

      goto LABEL_45;
    }

    if (*v5 > 0x48u)
    {
      switch(v7)
      {
        case 'I':
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 4)}];
          break;
        case 'Q':
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 8)}];
          break;
        case 'S':
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 2)}];
          break;
        default:
          goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (v7 == 67)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*objc_msgSend(a1, "hmf_readBytesAtOffset:length:", a3, 1)}];
LABEL_45:
      v6 = v8;
      goto LABEL_46;
    }

    if (v7 == 68)
    {
      v9 = [a1 hmf_readDataNoCopyAtOffset:a3];
      v6 = [v9 copy];
    }
  }

LABEL_46:

  return v6;
}

- (unsigned)hmf_readAndCheckTag:()FastEncoding offset:
{
  result = [a1 hmf_readBytesAtOffset:a4 length:1];
  if (result)
  {
    return (*result == a3);
  }

  return result;
}

- (id)hmf_objectAtIndex:()FastEncoding forArrayAtOffset:
{
  v8 = a4;
  if ([a1 hmf_readAndCheckTag:91 offset:&v8] && (v8 = objc_msgSend(a1, "hmf_tableLookupWithIndex:offset:", a3, v8)) != 0)
  {
    v6 = [a1 hmf_readObjectAtOffset:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hmf_objectForKey:()FastEncoding forDictionaryAtOffset:
{
  v2 = [a1 hmf_offsetForKeyValue:? forDictionaryAtOffset:?];
  if (v2)
  {
    v5 = v2;
    v3 = [a1 hmf_readObjectAtOffset:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hmf_readObject
{
  v3 = 0;
  v1 = [a1 hmf_readObjectAtOffset:&v3];

  return v1;
}

- (uint64_t)hmf_offsetForKeyValue:()FastEncoding forDictionaryAtOffset:
{
  v6 = a3;
  v16 = a4;
  if ([a1 hmf_readAndCheckTag:60 offset:&v16])
  {
    v15 = 0;
    v7 = [a1 hmf_readTableAtOffset:&v16 length:&v15];
    v8 = v15;
    __compar[0] = MEMORY[0x277D85DD0];
    __compar[1] = 3221225472;
    __compar[2] = __68__NSData_FastEncoding__hmf_offsetForKeyValue_forDictionaryAtOffset___block_invoke;
    __compar[3] = &unk_2786E6E58;
    __compar[4] = a1;
    v14 = v6;
    v9 = bsearch_b(0, v7, v8, 4uLL, __compar);
    if (v9)
    {
      v16 = *v9;
      v10 = [a1 hmf_readObjectAtOffset:&v16];
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hmf_containsObject:()FastEncoding forSetAtOffset:
{
  v6 = a3;
  __nel_4 = a4;
  if ([a1 hmf_readAndCheckTag:123 offset:&__nel_4])
  {
    __nel = 0;
    v7 = [a1 hmf_readTableAtOffset:&__nel_4 length:&__nel];
    v8 = [v6 hash];
    __compar[0] = MEMORY[0x277D85DD0];
    __compar[1] = 3221225472;
    __compar[2] = __58__NSData_FastEncoding__hmf_containsObject_forSetAtOffset___block_invoke;
    __compar[3] = &unk_2786E6E80;
    __compar[4] = a1;
    __compar[5] = v8;
    v9 = bsearch_b(0, v7, __nel, 4uLL, __compar);
    v10 = v9;
    if (v9)
    {
      v21 = *v9;
      v11 = [a1 hmf_readObjectAtOffset:&v21];
      if ([v6 isEqual:v11])
      {
LABEL_4:
        v10 = 1;
      }

      else
      {
        if (v10 > v7)
        {
          v12 = v10;
          while (1)
          {
            v13 = *(v12 - 4);
            v12 -= 4;
            v20 = v13;
            v14 = [a1 hmf_readObjectAtOffset:&v20];
            if ([v14 hash] != v8)
            {
              break;
            }

            v15 = [v6 isEqual:v14];

            if (v15)
            {
              goto LABEL_4;
            }

            if (v12 <= v7)
            {
              goto LABEL_13;
            }
          }
        }

LABEL_13:
        if (v10 + 4 < v7 + 4 * __nel)
        {
          v16 = v10 + 8;
          while (1)
          {
            v20 = *(v16 - 4);
            v17 = [a1 hmf_readObjectAtOffset:&v20];
            if ([v17 hash] != v8)
            {
              break;
            }

            v10 = [v6 isEqual:v17];

            if (!v10)
            {
              v18 = v16 >= v7 + 4 * __nel;
              v16 += 4;
              if (!v18)
              {
                continue;
              }
            }

            goto LABEL_22;
          }
        }

        v10 = 0;
      }

LABEL_22:
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)hmf_member:()FastEncoding forSetAtOffset:
{
  v6 = a3;
  if ([a1 hmf_containsObject:v6 forSetAtOffset:a4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)hmf_enumerateObjectsForSetAtOffset:()FastEncoding usingBlock:
{
  v14 = a3;
  v5 = a4;
  if (v5)
  {
    if ([a1 hmf_readAndCheckTag:123 offset:&v14])
    {
      v13 = 0;
      v6 = [a1 hmf_readTableAtOffset:&v14 length:&v13];
      if (v6)
      {
        v12 = 0;
        if (v13)
        {
          v7 = v6;
          v8 = 0;
          while (1)
          {
            v9 = objc_autoreleasePoolPush();
            v11 = *(v7 + 4 * v8);
            v10 = [a1 hmf_readObjectAtOffset:&v11];
            if (v10)
            {
              v5[2](v5, v10, &v12);
              if (v12)
              {
                break;
              }
            }

            objc_autoreleasePoolPop(v9);
            if (++v8 >= v13)
            {
              goto LABEL_11;
            }
          }

          objc_autoreleasePoolPop(v9);
        }
      }
    }
  }

LABEL_11:
}

- (id)hmf_keysForDictionaryAtOffset:()FastEncoding
{
  v14 = a3;
  if ([a1 hmf_readAndCheckTag:60 offset:&v14] && (v13 = 0, (v4 = objc_msgSend(a1, "hmf_readTableAtOffset:length:", &v14, &v13)) != 0))
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [v6 initWithCapacity:v13];
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v12 = *(v5 + 4 * i);
        v9 = [a1 hmf_readObjectAtOffset:&v12];
        if (v9)
        {
          [v7 addObject:v9];
        }
      }
    }

    v10 = [v7 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)hmf_valuesForDictionaryAtOffset:()FastEncoding
{
  v16 = a3;
  if ([a1 hmf_readAndCheckTag:60 offset:&v16] && (v15 = 0, (v4 = objc_msgSend(a1, "hmf_readTableAtOffset:length:", &v16, &v15)) != 0))
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [v6 initWithCapacity:v15];
    v8 = objc_autoreleasePoolPush();
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v14 = *(v5 + 4 * i);
        v10 = [a1 hmf_readObjectAtOffset:&v14];
        v11 = [a1 hmf_readObjectAtOffset:&v14];
        if (v11)
        {
          [v7 addObject:v11];
        }
      }
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v7 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end