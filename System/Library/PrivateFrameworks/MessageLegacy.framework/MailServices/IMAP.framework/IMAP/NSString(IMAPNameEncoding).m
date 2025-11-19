@interface NSString(IMAPNameEncoding)
- (__CFString)mf_decodedIMAPMailboxName;
- (__CFString)mf_encodedIMAPMailboxName;
@end

@implementation NSString(IMAPNameEncoding)

- (__CFString)mf_encodedIMAPMailboxName
{
  v1 = a1;
  v2 = [(__CFString *)a1 length];
  if (!mf_encodedIMAPMailboxName_passThroughSet)
  {
    v42.location = 32;
    v42.length = 94;
    mf_encodedIMAPMailboxName_passThroughSet = CFCharacterSetCreateWithCharactersInRange(0, v42);
  }

  v35 = v1;
  v38 = 0;
  v39 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v37 = CStringPtr;
  v40 = 0;
  v41 = 0;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buffer = 0u;
    v28 = 0u;
    while (1)
    {
      if (v6 < 0 || (v7 = v39, v39 <= v6))
      {
        v8 = 0;
      }

      else if (v36)
      {
        v8 = v36[v38 + v6];
      }

      else if (v37)
      {
        v8 = v37[v38 + v6];
      }

      else
      {
        if (v41 <= v6 || (v21 = v40, v40 > v6))
        {
          v22 = v6 - 4;
          if (v6 < 4)
          {
            v22 = 0;
          }

          if (v22 + 64 < v39)
          {
            v7 = v22 + 64;
          }

          v40 = v22;
          v41 = v7;
          v44.length = v7 - v22;
          v44.location = v38 + v22;
          CFStringGetCharacters(v35, v44, buffer);
          v21 = v40;
        }

        v8 = buffer[v6 - v21];
      }

      v26 = v8;
      IsCharacterMember = CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v8);
      v10 = v26;
      if (!IsCharacterMember || v26 == 38)
      {
        break;
      }

      if (v5)
      {
        v25[0] = v26;
        v11 = v5;
        v12 = 1;
LABEL_22:
        [v11 appendBytes:v25 length:{v12, v24}];
      }

      ++v6;
LABEL_45:
      if (v6 >= v2)
      {
        if (v5)
        {
          v1 = CFStringCreateWithBytes(0, [v5 bytes], objc_msgSend(v5, "length"), 0x600u, 0);
        }

        return v1;
      }
    }

    if (!v5)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{-[__CFString length](v1, "length")}];
      v5 = v13;
      if (v6 >= 1)
      {
        [v13 setLength:v6];
        [v5 mutableBytes];
        v24 = 0;
        MFStringGetBytes();
      }

      v10 = v26;
    }

    if (v10 != 38)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:64];
      v15 = v26;
      do
      {
        v26 = bswap32(v15) >> 16;
        [v14 appendBytes:&v26 length:{2, v24}];
        v16 = v6 + 1;
        if (v6 + 1 >= v2)
        {
          break;
        }

        if (v6 < -1 || (v17 = v39, v39 <= v16))
        {
          v18 = 0;
        }

        else if (v36)
        {
          v18 = v36[v38 + 1 + v6];
        }

        else if (v37)
        {
          v18 = v37[v38 + 1 + v6];
        }

        else
        {
          if (v41 <= v16 || (v19 = v40, v40 > v16))
          {
            v20 = v6 - 3;
            if (v16 < 4)
            {
              v20 = 0;
            }

            if (v20 + 64 < v39)
            {
              v17 = v20 + 64;
            }

            v40 = v20;
            v41 = v17;
            v43.length = v17 - v20;
            v43.location = v38 + v20;
            CFStringGetCharacters(v35, v43, buffer);
            v19 = v40;
          }

          v18 = buffer[v6 + 1 - v19];
        }

        v26 = v18;
        if (CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v18))
        {
          break;
        }

        v15 = v26;
        ++v6;
      }

      while (v26 != 38);
      [v5 appendBytes:"&" length:1];
      [v5 appendData:{objc_msgSend(v14, "mf_encodeModifiedBase64")}];
      [v5 appendBytes:"-" length:1];

      v6 = v16;
      goto LABEL_45;
    }

    strcpy(v25, "&-");
    v11 = v5;
    v12 = 2;
    goto LABEL_22;
  }

  return v1;
}

- (__CFString)mf_decodedIMAPMailboxName
{
  v1 = a1;
  v2 = [(__CFString *)a1 length];
  v3 = [(__CFString *)v1 rangeOfString:@"-" options:0 range:0, v2];
  if (!v4)
  {
    return v1;
  }

  v5 = v3;
  v6 = v4;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [(__CFString *)v1 rangeOfString:@"&" options:4 range:v8, v5 - v8];
    if (v10)
    {
      v11 = v9;
      v12 = v5 - (v9 + v10);
      if (v5 == v9 + v10)
      {
        v36 = 38;
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:2];
      }

      else
      {
        MutableCopy = mf_decodedIMAPMailboxName_invalidModifiedBase64Set;
        if (!mf_decodedIMAPMailboxName_invalidModifiedBase64Set)
        {
          Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
          MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
          CFCharacterSetAddCharactersInString(MutableCopy, @"+,");
          CFCharacterSetInvert(MutableCopy);
          mf_decodedIMAPMailboxName_invalidModifiedBase64Set = MutableCopy;
        }

        v41.location = v11 + 1;
        v41.length = v12;
        if (CFStringFindCharacterFromSet(v1, MutableCopy, v41, 0, 0))
        {
          goto LABEL_21;
        }

        v16 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength:v12];
        [v16 mutableBytes];
        MFStringGetBytes();
        v17 = [v16 mf_decodeModifiedBase64];

        v18 = [v17 mutableCopyWithZone:0];
        v19 = [v18 mutableBytes];
        v20 = [v18 length];
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) >= 1)
        {
          v21 = &v19[v20 & 0xFFFFFFFFFFFFFFFELL];
          do
          {
            *v19 = bswap32(*v19) >> 16;
            v19 += 2;
          }

          while (v19 < v21);
        }

        v13 = v18;
      }

      v22 = v13;
      if (v13)
      {
        if (!v7)
        {
          v23 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{2 * -[__CFString length](v1, "length")}];
          v7 = v23;
          if (v8)
          {
            [v23 setLength:2 * v8];
            v24 = [v7 mutableBytes];
            v37.location = 0;
            v37.length = v8;
            CFStringGetCharacters(v1, v37, v24);
          }
        }

        v25 = v11 > v8;
        v26 = v11 - v8;
        if (v25)
        {
          v27 = [v7 length];
          [v7 setLength:v27 + 2 * v26];
          v28 = [v7 mutableBytes];
          v38.location = v8;
          v38.length = v26;
          CFStringGetCharacters(v1, v38, (v28 + v27));
        }

        [v7 appendData:v22];
        goto LABEL_24;
      }
    }

LABEL_21:
    if (v7 && v5 + v6 > v8)
    {
      v29 = [v7 length];
      [v7 setLength:v29 + 2 * (v5 + v6 - v8)];
      v30 = [v7 mutableBytes];
      v39.location = v8;
      v39.length = v5 + v6 - v8;
      CFStringGetCharacters(v1, v39, (v30 + v29));
    }

LABEL_24:
    v31 = v8 + v2;
    v8 = v5 + v6;
    v2 = v31 - (v5 + v6);
    v5 = [(__CFString *)v1 rangeOfString:@"-" options:0 range:v5 + v6, v2];
    v6 = v32;
  }

  while (v32);
  if (v7)
  {
    if (v2)
    {
      v33 = [v7 length];
      [v7 setLength:v33 + 2 * v2];
      v34 = [v7 mutableBytes];
      v40.location = v8;
      v40.length = v2;
      CFStringGetCharacters(v1, v40, (v34 + v33));
    }

    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length") >> 1}];
  }

  return v1;
}

@end