@interface ECEmailAddressParser
+ (BOOL)_validateString:(id)a3 withFunction:(void *)a4;
+ (BOOL)parseEmailAddressString:(id)a3 displayName:(id *)a4 localPart:(id *)a5 domain:(id *)a6 groupList:(id *)a7;
+ (BOOL)parseString:(id)a3 emailAddressList:(id *)a4;
@end

@implementation ECEmailAddressParser

+ (BOOL)parseEmailAddressString:(id)a3 displayName:(id *)a4 localPart:(id *)a5 domain:(id *)a6 groupList:(id *)a7
{
  v11 = a3;
  if ([v11 length])
  {
    v29 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v12;
    v28 = v12;
    v25[7] = v12;
    v26 = v12;
    v25[6] = v12;
    v25[4] = v12;
    v25[5] = v12;
    v25[2] = v12;
    v25[3] = v12;
    v25[0] = v12;
    v25[1] = v12;
    v20 = 0xAAAAAAAAAAAA0000;
    v13 = v11;
    v21 = v13;
    v22 = v25;
    v23 = 0;
    v24 = [(__CFString *)v13 length];
    *&v26 = v13;
    *(&v27 + 1) = 0;
    *&v28 = v24;
    *(&v26 + 1) = CFStringGetCharactersPtr(v13);
    if (*(&v26 + 1))
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v13, 0x600u);
    }

    *(&v28 + 1) = 0;
    v29 = 0;
    *&v27 = CStringPtr;
    v16 = _parseAddress(&v20, a4, a5, a6, a7);
    if (v23 == v24)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v15 = 1;
    }

    else
    {
      v23 = 0;
      LOWORD(v20) = 257;
      v18 = _parseAddress(&v20, a4, a5, a6, a7);
      if (v23 == v24)
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)parseString:(id)a3 emailAddressList:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v6;
    v22 = v6;
    v19[7] = v6;
    v20 = v6;
    v19[6] = v6;
    v19[4] = v6;
    v19[5] = v6;
    v19[2] = v6;
    v19[3] = v6;
    v19[0] = v6;
    v19[1] = v6;
    v14 = 0xAAAAAAAAAAAA0100;
    v7 = v5;
    v15 = v7;
    v16 = v19;
    v17 = 0;
    v18 = [(__CFString *)v7 length];
    *&v20 = v7;
    *(&v21 + 1) = 0;
    *&v22 = v18;
    *(&v20 + 1) = CFStringGetCharactersPtr(v7);
    if (*(&v20 + 1))
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    }

    *(&v22 + 1) = 0;
    v23 = 0;
    *&v21 = CStringPtr;
    v10 = _parseElementList(&v14, 1, _parseAddressAppendingToList, a4);
    if (v17 == v18)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v9 = 1;
    if ((v11 & 1) == 0)
    {
      v17 = 0;
      LOBYTE(v14) = 1;
      v12 = _parseElementList(&v14, BYTE1(v14), _parseAddressAppendingToList, a4);
      if (v17 == v18)
      {
        v9 = v12;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_validateString:(id)a3 withFunction:(void *)a4
{
  v5 = a3;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v6;
  v20 = v6;
  v17[7] = v6;
  v18 = v6;
  v17[6] = v6;
  v17[4] = v6;
  v17[5] = v6;
  v17[2] = v6;
  v17[3] = v6;
  v17[0] = v6;
  v17[1] = v6;
  v12 = 0xAAAAAAAAAAAA0000;
  v7 = v5;
  v13 = v7;
  v14 = v17;
  v15 = 0;
  v16 = [(__CFString *)v7 length];
  *&v18 = v7;
  *(&v19 + 1) = 0;
  *&v20 = v16;
  *(&v18 + 1) = CFStringGetCharactersPtr(v7);
  if (*(&v18 + 1))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v19 = CStringPtr;
  v9 = (a4)(&v12, 0);
  if (v15 == v16)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end