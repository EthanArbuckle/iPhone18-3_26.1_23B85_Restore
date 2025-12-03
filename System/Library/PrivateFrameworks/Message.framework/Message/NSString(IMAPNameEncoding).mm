@interface NSString(IMAPNameEncoding)
- (__CFString)mf_encodedIMAPMailboxName;
- (id)mf_decodedIMAPMailboxName;
@end

@implementation NSString(IMAPNameEncoding)

- (__CFString)mf_encodedIMAPMailboxName
{
  v2 = [(__CFString *)self copy];
  v3 = [(__CFString *)self length];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  *buffer = v4;
  v30 = v4;
  if (!mf_encodedIMAPMailboxName_passThroughSet)
  {
    v45.location = 32;
    v45.length = 94;
    mf_encodedIMAPMailboxName_passThroughSet = CFCharacterSetCreateWithCharactersInRange(0, v45);
  }

  selfCopy = self;
  v40 = 0;
  v41 = v3;
  CharactersPtr = CFStringGetCharactersPtr(self);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v39 = CStringPtr;
  v42 = 0;
  v43 = 0;
  if (v3 < 1)
  {
    v6 = 0;
    goto LABEL_60;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (v7 < 0 || (v8 = v41, v41 <= v7))
    {
      v9 = 0;
    }

    else if (CharactersPtr)
    {
      v9 = CharactersPtr[v40 + v7];
    }

    else if (v39)
    {
      v9 = v39[v40 + v7];
    }

    else
    {
      if (v43 <= v7 || (v22 = v42, v42 > v7))
      {
        v23 = v7 - 4;
        if (v7 < 4)
        {
          v23 = 0;
        }

        if (v23 + 64 < v41)
        {
          v8 = v23 + 64;
        }

        v42 = v23;
        v43 = v8;
        v47.length = v8 - v23;
        v47.location = v40 + v23;
        CFStringGetCharacters(selfCopy, v47, buffer);
        v22 = v42;
      }

      v9 = buffer[v7 - v22];
    }

    v28 = v9;
    IsCharacterMember = CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v9);
    v11 = v28;
    if (IsCharacterMember && v28 != 38)
    {
      if (v6)
      {
        v27[0] = v28;
        [v6 appendBytes:v27 length:1];
      }

      goto LABEL_23;
    }

    if (!v6)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:{-[__CFString length](self, "length")}];
      v13 = v12;
      if (v7 >= 1)
      {
        [v12 setLength:v7];
        [v13 mutableBytes];
        v26 = 0;
        MFStringGetBytes();
      }

      v11 = v28;
      v6 = v13;
    }

    if (v11 == 38)
    {
      strcpy(v27, "&-");
      [v6 appendBytes:v27 length:2];
LABEL_23:
      ++v7;
      continue;
    }

    v14 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:64];
    v15 = v28;
    do
    {
      v28 = bswap32(v15) >> 16;
      [v14 appendBytes:&v28 length:{2, v26}];
      v16 = v7 + 1;
      if (v7 + 1 >= v3)
      {
        break;
      }

      if (v7 < -1 || (v17 = v41, v41 <= v16))
      {
        v18 = 0;
      }

      else if (CharactersPtr)
      {
        v18 = CharactersPtr[v40 + 1 + v7];
      }

      else if (v39)
      {
        v18 = v39[v40 + 1 + v7];
      }

      else
      {
        if (v43 <= v16 || (v19 = v42, v42 > v16))
        {
          v20 = v7 - 3;
          if (v16 < 4)
          {
            v20 = 0;
          }

          if (v20 + 64 < v41)
          {
            v17 = v20 + 64;
          }

          v42 = v20;
          v43 = v17;
          v46.length = v17 - v20;
          v46.location = v40 + v20;
          CFStringGetCharacters(selfCopy, v46, buffer);
          v19 = v42;
        }

        v18 = buffer[v7 + 1 - v19];
      }

      v28 = v18;
      if (CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v18))
      {
        break;
      }

      v15 = v28;
      ++v7;
    }

    while (v28 != 38);
    [v6 appendBytes:"&" length:1];
    mf_encodeModifiedBase64 = [v14 mf_encodeModifiedBase64];
    [v6 appendData:mf_encodeModifiedBase64];

    [v6 appendBytes:"-" length:1];
    v7 = v16;
  }

  while (v7 < v3);
  if (v6)
  {
    v24 = CFStringCreateWithBytes(0, [v6 bytes], objc_msgSend(v6, "length"), 0x600u, 0);

    v2 = v24;
  }

LABEL_60:

  return v2;
}

- (id)mf_decodedIMAPMailboxName
{
  selfCopy = self;
  v34 = [(__CFString *)self copy];
  v2 = [(__CFString *)selfCopy length];
  v3 = [(__CFString *)selfCopy rangeOfString:@"-" options:0 range:0, v2];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v6 = v3;
  v7 = 0;
  v8 = 0;
  theString = selfCopy;
  do
  {
    v9 = [(__CFString *)selfCopy rangeOfString:@"&" options:4 range:v8, v6 - v8];
    if (!v10)
    {
LABEL_10:
      if (v7 && v6 + v5 > v8)
      {
        v16 = [v7 length];
        [v7 setLength:v16 + 2 * (v6 + v5 - v8)];
        mutableBytes = [v7 mutableBytes];
        v38.location = v8;
        v38.length = v6 + v5 - v8;
        CFStringGetCharacters(selfCopy, v38, (mutableBytes + v16));
      }

      v13 = 0;
      goto LABEL_25;
    }

    v11 = v9;
    v12 = v6 - (v9 + v10);
    if (v6 == v9 + v10)
    {
      v36 = 38;
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:2];
      if (!v13)
      {
        goto LABEL_10;
      }
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

      v42.location = v11 + 1;
      v42.length = v12;
      if (CFStringFindCharacterFromSet(selfCopy, MutableCopy, v42, 0, 0))
      {
        goto LABEL_10;
      }

      v18 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength:v12];
      [v18 mutableBytes];
      MFStringGetBytes();
      mf_decodeModifiedBase64 = [v18 mf_decodeModifiedBase64];
      v13 = [mf_decodeModifiedBase64 mutableCopyWithZone:0];

      mutableBytes2 = [v13 mutableBytes];
      v21 = [v13 length];
      selfCopy = theString;
      if ((v21 & 0xFFFFFFFFFFFFFFFELL) >= 1)
      {
        v22 = &mutableBytes2[v21 & 0xFFFFFFFFFFFFFFFELL];
        do
        {
          *mutableBytes2 = bswap32(*mutableBytes2) >> 16;
          mutableBytes2 += 2;
        }

        while (mutableBytes2 < v22);
      }

      if (!v13)
      {
        goto LABEL_10;
      }
    }

    if (!v7)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:{2 * -[__CFString length](selfCopy, "length")}];
      v24 = v23;
      if (v8)
      {
        [v23 setLength:2 * v8];
        mutableBytes3 = [v24 mutableBytes];
        v39.location = 0;
        v39.length = v8;
        CFStringGetCharacters(selfCopy, v39, mutableBytes3);
        v7 = v24;
      }

      else
      {
        v7 = v23;
      }
    }

    if (v11 > v8)
    {
      v26 = [v7 length];
      [v7 setLength:v26 + 2 * (v11 - v8)];
      mutableBytes4 = [v7 mutableBytes];
      v40.location = v8;
      v40.length = v11 - v8;
      CFStringGetCharacters(theString, v40, (mutableBytes4 + v26));
    }

    [v7 appendData:v13];
    selfCopy = theString;
LABEL_25:
    v28 = v2 + v8;
    v8 = v6 + v5;
    v2 = v28 - (v6 + v5);
    v6 = [(__CFString *)selfCopy rangeOfString:@"-" options:0 range:v6 + v5, v2];
    v5 = v29;
  }

  while (v5);
  if (!v7)
  {
LABEL_31:
    v32 = v34;
    goto LABEL_32;
  }

  if (v2)
  {
    v30 = [v7 length];
    [v7 setLength:v30 + 2 * v2];
    mutableBytes5 = [v7 mutableBytes];
    v41.location = v8;
    v41.length = v2;
    CFStringGetCharacters(selfCopy, v41, (mutableBytes5 + v30));
  }

  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length") >> 1}];

LABEL_32:

  return v32;
}

@end