@interface ECSubjectParser
+ (id)subjectWithoutPrefixForSubject:(id)subject;
+ (id)subjectWithoutPrefixForSubject:(id)subject prefix:(id *)prefix;
+ (id)subjectWithoutPrefixIncludingListMarkersForSubject:(id)subject prefix:(id *)prefix;
+ (unint64_t)_fastPrefixLengthForSubject:(id)subject includingPrefix:(int64_t)prefix;
+ (unint64_t)_lastPrefixDelimiterLocationForSubject:(id)subject;
+ (unint64_t)_prefixLengthForSubject:(id)subject forPrefix:(int64_t)prefix;
+ (unint64_t)prefixLengthForSubject:(id)subject includingPrefix:(int64_t)prefix;
@end

@implementation ECSubjectParser

+ (id)subjectWithoutPrefixIncludingListMarkersForSubject:(id)subject prefix:(id *)prefix
{
  subjectCopy = subject;
  ec_regularExpressionForList = [MEMORY[0x277CCAC68] ec_regularExpressionForList];
  v8 = [self prefixLengthForSubject:subjectCopy includingPrefix:2];
  if (v8)
  {
    v9 = [subjectCopy substringToIndex:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [subjectCopy length];
  if (v10 <= v8)
  {
    v17 = &stru_284041D88;
    goto LABEL_15;
  }

  if ([ec_regularExpressionForList rangeOfFirstMatchInString:subjectCopy options:0 range:{v8, v10 - v8}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  v13 = [subjectCopy substringFromIndex:v11 + v8];
  v14 = [self prefixLengthForSubject:v13 includingPrefix:2];
  if (!v14)
  {

LABEL_14:
    v17 = [subjectCopy substringFromIndex:v8];
    goto LABEL_15;
  }

  v15 = [v13 substringToIndex:v14];
  if (v9)
  {
    v16 = [v9 stringByAppendingString:v15];

    v9 = v16;
  }

  else
  {
    v9 = [v13 substringToIndex:v14];
  }

  v18 = [v13 substringFromIndex:v14];
  v19 = [subjectCopy substringWithRange:{v8, v12}];
  v17 = [v19 stringByAppendingString:v18];

  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (prefix)
  {
    v20 = v9;
    *prefix = v9;
  }

  return v17;
}

+ (unint64_t)prefixLengthForSubject:(id)subject includingPrefix:(int64_t)prefix
{
  subjectCopy = subject;
  if ([subjectCopy length] < 2 || (v7 = objc_msgSend(self, "_lastPrefixDelimiterLocationForSubject:", subjectCopy), v7 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = 0;
  }

  else
  {
    v8 = [self _fastPrefixLengthForSubject:subjectCopy includingPrefix:prefix];
    if (v8 < v7 + 1)
    {
      v8 = [self _prefixLengthForSubject:subjectCopy forPrefix:prefix];
    }
  }

  return v8;
}

+ (unint64_t)_lastPrefixDelimiterLocationForSubject:(id)subject
{
  subjectCopy = subject;
  ec_prefixDelimiterCharacterSet = [MEMORY[0x277CCA900] ec_prefixDelimiterCharacterSet];
  v5 = [subjectCopy rangeOfCharacterFromSet:ec_prefixDelimiterCharacterSet options:4];

  return v5;
}

+ (unint64_t)_prefixLengthForSubject:(id)subject forPrefix:(int64_t)prefix
{
  subjectCopy = subject;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__ECSubjectParser__prefixLengthForSubject_forPrefix___block_invoke;
  v17 = &__block_descriptor_48_e5_v8__0l;
  v18 = a2;
  selfCopy = self;
  if (_prefixLengthForSubject_forPrefix__predicate != -1)
  {
    dispatch_once(&_prefixLengthForSubject_forPrefix__predicate, &v14);
  }

  v8 = &_prefixLengthForSubject_forPrefix__replyRegex;
  v9 = &_prefixLengthForSubject_forPrefix__forwardRegex;
  if (prefix != 1)
  {
    v9 = &_prefixLengthForSubject_forPrefix__prefixRegex;
  }

  if (prefix)
  {
    v8 = v9;
  }

  v10 = *v8;
  if ([v10 rangeOfFirstMatchInString:subjectCopy options:0 range:{0, objc_msgSend(subjectCopy, "length", v14, v15, v16, v17, v18, selfCopy)}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

void __53__ECSubjectParser__prefixLengthForSubject_forPrefix___block_invoke(uint64_t a1)
{
  v2 = +[ECEmailCoreFramework bundle];
  v3 = [v2 URLForResource:@"SubjectPrefixes" withExtension:@"plist"];

  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v3 error:&v20];
  v5 = v20;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to load prefix file with error %@", v5];
  if (!v4)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"ECSubjectParser.m" lineNumber:188 description:v6];
  }

  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = [v4 objectForKeyedSubscript:@"Reply"];
  v9 = [v7 initWithArray:v8];

  v10 = copyRegexForPrefixStrings(v9);
  v11 = _prefixLengthForSubject_forPrefix__replyRegex;
  _prefixLengthForSubject_forPrefix__replyRegex = v10;

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [v4 objectForKeyedSubscript:@"Forward"];
  v14 = [v12 initWithArray:v13];

  v15 = copyRegexForPrefixStrings(v14);
  v16 = _prefixLengthForSubject_forPrefix__forwardRegex;
  _prefixLengthForSubject_forPrefix__forwardRegex = v15;

  [v9 unionSet:v14];
  v17 = copyRegexForPrefixStrings(v9);
  v18 = _prefixLengthForSubject_forPrefix__prefixRegex;
  _prefixLengthForSubject_forPrefix__prefixRegex = v17;
}

+ (unint64_t)_fastPrefixLengthForSubject:(id)subject includingPrefix:(int64_t)prefix
{
  subjectCopy = subject;
  v6 = [(__CFString *)subjectCopy length];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    v8 = 0;
    goto LABEL_144;
  }

  v104 = 0u;
  v102 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  *buffer = 0u;
  theString[0] = subjectCopy;
  v106 = 0;
  v105 = v6;
  v93 = subjectCopy;
  theString[1] = CFStringGetCharactersPtr(subjectCopy);
  if (theString[1])
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(subjectCopy, 0x600u);
  }

  *(&v105 + 1) = 0;
  v106 = 0;
  *&v104 = CStringPtr;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_143;
  }

  v10 = 0;
  v11 = 0;
  v92 = prefix & 0xFFFFFFFFFFFFFFFDLL;
  v94 = prefix - 1;
  while (1)
  {
    if (v11 >= -2)
    {
      v12 = v11 + 2;
      v13 = v105;
      if (v105 > v11 + 2)
      {
        if (theString[1])
        {
          v14 = *(&theString[1]->isa + *(&v104 + 1) + v12);
        }

        else if (v104)
        {
          v14 = *(v104 + *(&v104 + 1) + v12);
        }

        else
        {
          if (v106 <= v12 || v10 > v12)
          {
            v15 = v11 - 2;
            if (v11 < 2)
            {
              v15 = 0;
            }

            if (v15 + 64 < v105)
            {
              v13 = v15 + 64;
            }

            *(&v105 + 1) = v15;
            v106 = v13;
            v107.length = v13 - v15;
            v107.location = *(&v104 + 1) + v15;
            CFStringGetCharacters(theString[0], v107, buffer);
            v10 = *(&v105 + 1);
          }

          v14 = buffer[v12 - v10];
        }

        if (v14 == 58)
        {
          break;
        }
      }
    }

    if (v94 > 1)
    {
      goto LABEL_141;
    }

    if (v11 < -3)
    {
      goto LABEL_141;
    }

    v36 = v11 + 3;
    v37 = v105;
    if (v105 <= v11 + 3)
    {
      goto LABEL_141;
    }

    if (theString[1])
    {
      v38 = *(&theString[1]->isa + *(&v104 + 1) + v36);
    }

    else if (v104)
    {
      v38 = *(v104 + *(&v104 + 1) + v36);
    }

    else
    {
      if (v106 <= v36 || v10 > v36)
      {
        v39 = v11 - 1;
        if (!v11)
        {
          v39 = 0;
        }

        if (v39 + 64 < v105)
        {
          v37 = v39 + 64;
        }

        *(&v105 + 1) = v39;
        v106 = v37;
        v109.length = v37 - v39;
        v109.location = *(&v104 + 1) + v39;
        CFStringGetCharacters(theString[0], v109, buffer);
        v10 = *(&v105 + 1);
      }

      v38 = buffer[v36 - v10];
    }

    if (v38 != 58)
    {
      goto LABEL_141;
    }

    v40 = v7;
    v41 = 0;
    v42 = 0;
    v43 = -v11;
    v44 = v11 + 64;
    v45 = v11;
    do
    {
      if (v45 >= 4)
      {
        v46 = 4;
      }

      else
      {
        v46 = v45;
      }

      v47 = v11 + v42;
      if ((v11 + v42) < 0 || (v48 = v105, v105 <= v47))
      {
        v50 = 0;
      }

      else
      {
        if (theString[1])
        {
          v49 = theString[1] + *(&v104 + 1) + v11;
        }

        else
        {
          if (v104)
          {
            v50 = *(v104 + *(&v104 + 1) + v11 + v42);
            goto LABEL_73;
          }

          if (v106 <= v47 || v10 > v47)
          {
            v51 = v46 + v43;
            v52 = v44 - v46;
            v53 = -v46;
            v54 = 64 - v46;
            v55 = v42 + v11 - v46;
            v56 = v11 + v42 + v54;
            if (v56 >= v105)
            {
              v56 = v105;
            }

            *(&v105 + 1) = v55;
            v106 = v56;
            v57 = v11 + v42 + v53;
            if (v105 >= v52)
            {
              v48 = v52;
            }

            v110.location = v57 + *(&v104 + 1);
            v110.length = v48 + v51;
            CFStringGetCharacters(theString[0], v110, buffer);
            v10 = *(&v105 + 1);
          }

          v49 = &buffer[v11 - v10];
        }

        v50 = v49[v42];
      }

LABEL_73:
      if (((_fastPrefixLengthForSubject_includingPrefix__fwdPrefix[v42] ^ v50) & 0xFFDF) != 0)
      {
        break;
      }

      v41 = v42 > 1;
      ++v45;
      --v43;
      ++v44;
      ++v42;
    }

    while (v42 != 3);
    if (!v41)
    {
      goto LABEL_141;
    }

    v58 = 4;
    v7 = v40;
LABEL_88:
    v8 = v58 + v11;
    if (v58 + v11 >= 0)
    {
      v59 = v105;
      if (v105 > v8)
      {
        v60 = -v8;
        v61 = v58 + v11 + 64;
        while (1)
        {
          v62 = v8 >= 4 ? 4 : v8;
          if (theString[1])
          {
            break;
          }

          if (!v104)
          {
            if (v106 <= v8 || v10 > v8)
            {
              v66 = -v62;
              v67 = v62 + v60;
              v68 = v61 - v62;
              v69 = v8 + v66;
              v70 = v69 + 64;
              if (v69 + 64 >= v59)
              {
                v70 = v59;
              }

              *(&v105 + 1) = v69;
              v106 = v70;
              if (v59 >= v68)
              {
                v59 = v68;
              }

              v111.location = v69 + *(&v104 + 1);
              v111.length = v59 + v67;
              CFStringGetCharacters(theString[0], v111, buffer);
              v10 = *(&v105 + 1);
            }

            v63 = &buffer[-v10];
            goto LABEL_96;
          }

          v64 = *(v104 + *(&v104 + 1) + v8);
LABEL_99:
          if (v64 == 32)
          {
            ++v8;
            v59 = v105;
            --v60;
            ++v61;
            if (v105 > v8)
            {
              continue;
            }
          }

          goto LABEL_112;
        }

        v63 = theString[1] + *(&v104 + 1);
LABEL_96:
        v64 = v63[v8];
        goto LABEL_99;
      }
    }

LABEL_112:
    v11 = v8;
    if (v8 >= v7)
    {
      goto LABEL_143;
    }
  }

  v16 = 2 * v11;
  v17 = &buffer[v11];
  if (v92)
  {
    goto LABEL_115;
  }

  v18 = 0;
  v19 = 0;
  v20 = -v11;
  v21 = v11 + 64;
  v22 = v11;
  do
  {
    if (v22 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v22;
    }

    v24 = v11 + v19;
    if (v11 + v19 < 0 || (v25 = v105, v105 <= v24))
    {
      v27 = 0;
    }

    else
    {
      if (theString[1])
      {
        v26 = (theString[1] + 2 * *(&v104 + 1) + v16);
      }

      else
      {
        if (v104)
        {
          v27 = *(v104 + *(&v104 + 1) + v11 + v19);
          goto LABEL_34;
        }

        if (v106 <= v24 || v10 > v24)
        {
          v90 = v17;
          v28 = v16;
          v29 = v23 + v20;
          v30 = v21 - v23;
          v31 = -v23;
          v32 = 64 - v23;
          v33 = v19 + v11 - v23;
          v34 = v11 + v19 + v32;
          if (v34 >= v105)
          {
            v34 = v105;
          }

          *(&v105 + 1) = v33;
          v106 = v34;
          v35 = v11 + v19 + v31;
          if (v105 >= v30)
          {
            v25 = v30;
          }

          v108.location = v35 + *(&v104 + 1);
          v108.length = v25 + v29;
          CFStringGetCharacters(theString[0], v108, buffer);
          v10 = *(&v105 + 1);
          v16 = v28;
          v17 = v90;
        }

        v26 = &v17[-v10];
      }

      v27 = v26[v19];
    }

LABEL_34:
    if (((_fastPrefixLengthForSubject_includingPrefix__rePrefix[v19] ^ v27) & 0xFFDF) != 0)
    {
      break;
    }

    v18 = v19 != 0;
    ++v22;
    --v20;
    ++v21;
    ++v19;
  }

  while (v19 != 2);
  if (v18)
  {
    goto LABEL_140;
  }

LABEL_115:
  if (v94 > 1)
  {
    goto LABEL_141;
  }

  v71 = 0;
  v72 = 0;
  v73 = -v11;
  v74 = v11 + 64;
  v75 = v11;
  while (2)
  {
    if (v75 >= 4)
    {
      v76 = 4;
    }

    else
    {
      v76 = v75;
    }

    v77 = v11 + v72;
    if (v11 + v72 < 0 || (v78 = v105, v105 <= v77))
    {
      v80 = 0;
    }

    else
    {
      if (theString[1])
      {
        v79 = (theString[1] + 2 * *(&v104 + 1) + v16);
        goto LABEL_124;
      }

      if (v104)
      {
        v80 = *(v104 + *(&v104 + 1) + v11 + v72);
      }

      else
      {
        if (v106 <= v77 || v10 > v77)
        {
          v91 = v17;
          v81 = v16;
          v82 = v76 + v73;
          v83 = v74 - v76;
          v84 = -v76;
          v85 = 64 - v76;
          v86 = v72 + v11 - v76;
          v87 = v11 + v72 + v85;
          if (v87 >= v105)
          {
            v87 = v105;
          }

          *(&v105 + 1) = v86;
          v106 = v87;
          v88 = v11 + v72 + v84;
          if (v105 >= v83)
          {
            v78 = v83;
          }

          v112.location = v88 + *(&v104 + 1);
          v112.length = v78 + v82;
          CFStringGetCharacters(theString[0], v112, buffer);
          v10 = *(&v105 + 1);
          v16 = v81;
          v17 = v91;
        }

        v79 = &v17[-v10];
LABEL_124:
        v80 = v79[v72];
      }
    }

    if (((_fastPrefixLengthForSubject_includingPrefix__fwPrefix[v72] ^ v80) & 0xFFDF) == 0)
    {
      v71 = v72 != 0;
      ++v75;
      --v73;
      ++v74;
      if (++v72 != 2)
      {
        continue;
      }
    }

    break;
  }

  if (v71)
  {
LABEL_140:
    v58 = 3;
    goto LABEL_88;
  }

LABEL_141:
  v8 = v11;
LABEL_143:
  subjectCopy = v93;
LABEL_144:

  return v8;
}

+ (id)subjectWithoutPrefixForSubject:(id)subject
{
  v3 = [self subjectWithoutPrefixForSubject:subject prefix:0];

  return v3;
}

+ (id)subjectWithoutPrefixForSubject:(id)subject prefix:(id *)prefix
{
  subjectCopy = subject;
  v7 = [self prefixLengthForSubject:subjectCopy];
  if (prefix)
  {
    *prefix = [subjectCopy substringToIndex:v7];
  }

  v8 = [subjectCopy substringFromIndex:v7];

  return v8;
}

@end