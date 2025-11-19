@interface NSMutableDictionary(RFC2231Support)
- (void)mf_fixupRFC2231Values;
@end

@implementation NSMutableDictionary(RFC2231Support)

- (void)mf_fixupRFC2231Values
{
  v84 = *MEMORY[0x1E69E9840];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v1 = [a1 allKeys];
  v2 = [v1 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v2)
  {
    obj = 0;
    v3 = *v78;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v78 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v77 + 1) + 8 * i);
        if ([v5 rangeOfString:@"*"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = obj;
          if (!obj)
          {
            v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
          }

          obj = v6;
          [v6 addObject:v5];
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v2);

    if (obj)
    {
      [obj sortUsingSelector:sel_caseInsensitiveCompare_];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obja = obj;
      v7 = [obja countByEnumeratingWithState:&v73 objects:v81 count:16];
      v8 = 0;
      if (!v7)
      {
        v66 = 0;
        goto LABEL_102;
      }

      v66 = 0;
      v61 = *v74;
      bytesDeallocator = *MEMORY[0x1E695E498];
      v64 = -1;
      while (1)
      {
        v62 = v7;
        v9 = 0;
        v10 = v8;
        do
        {
          if (*v74 != v61)
          {
            objc_enumerationMutation(obja);
          }

          v11 = *(*(&v73 + 1) + 8 * v9);
          v70 = [a1 objectForKey:v11];
          v12 = [v11 length];
          if (mf_fixupRFC2231Values_onceToken != -1)
          {
            [NSMutableDictionary(RFC2231Support) mf_fixupRFC2231Values];
          }

          v13 = [mf_fixupRFC2231Values_keyRegex firstMatchInString:v11 options:0 range:{0, v12}];
          v68 = v13;
          if (v13 && [v13 range] != 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v68 numberOfRanges] != 3)
            {
              __assert_rtn("[NSMutableDictionary(RFC2231Support) mf_fixupRFC2231Values]", "MimeHeaderEncoding.m", 610, "[match numberOfRanges] == 3");
            }

            v69 = [v11 substringWithRange:{0, objc_msgSend(v68, "range")}];
            v20 = [v68 rangeAtIndex:1];
            v22 = v21;
            v23 = [v68 rangeAtIndex:2];
            v24 = v23;
            v26 = v25;
            if (v20 == 0x7FFFFFFFFFFFFFFFLL && v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v63 = -1;
              v14 = 1;
            }

            else
            {
              v63 = -1;
              if (v20 != 0x7FFFFFFFFFFFFFFFLL && v22)
              {
                v39 = [v11 substringWithRange:{v20, v22}];
                v63 = [v39 intValue];
              }

              v14 = v24 != 0x7FFFFFFFFFFFFFFFLL && v26 != 0;
            }
          }

          else
          {
            v69 = v11;
            v14 = 0;
            v63 = -1;
          }

          if (v66 && ([v66 isEqualToString:?] & 1) != 0)
          {
            v65 = 0;
            if (!v14)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v64 = -1;
            v65 = 1;
            if (!v14)
            {
LABEL_26:
              v8 = v70;
              v15 = 0;
              goto LABEL_89;
            }
          }

          v17 = [v70 rangeOfString:@"'"];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v70 length];
            v15 = 0;
            v19 = 0;
          }

          else
          {
            v27 = v16;
            v28 = [v70 rangeOfString:@"'" options:0 range:{v17 + v27, objc_msgSend(v70, "length") - (v17 + v27)}];
            v30 = v29;
            v15 = [v70 substringWithRange:{0, v17}];
            v31 = [v70 length];
            if (v30)
            {
              v32 = v28;
            }

            else
            {
              v32 = v17;
            }

            if (v30)
            {
              v33 = v30;
            }

            else
            {
              v33 = v27;
            }

            v19 = v33 + v32;
            v18 = v31 - (v33 + v32);
          }

          if (v65)
          {
            v64 = MFEncodingForCharset(v15);
          }

          v34 = v64;
          if (v64 == -1)
          {
            v34 = 1536;
          }

          v64 = v34;
          v35 = v70;
          v36 = v35;
          if (v18 < 3 || [(__CFString *)v35 rangeOfString:@"%" options:0 range:v19, v18 - 2]== 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }

          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v83[2] = v37;
          v83[3] = v37;
          v83[0] = v37;
          v83[1] = v37;
          if (v18 < 0x41)
          {
            v38 = v83;
          }

          else
          {
            v38 = malloc_type_malloc(v18, 0xDD5335BBuLL);
          }

          v85.location = v19;
          v85.length = v18;
          if (v18 != MFStringGetBytes(v36, v85, 0x600u, 0, 0, v38, v18, 0))
          {
            v8 = 0;
            goto LABEL_84;
          }

          v59 = v19;
          v60 = v36;
          v41 = 0;
          v42 = &v38[v18];
          v43 = v38;
          do
          {
            v44 = *v43;
            if (v44 != 37)
            {
              goto LABEL_68;
            }

            if ((v43 + 2) >= v42 || (v45 = v43[1], (v45 & 0x80000000) != 0) || (*(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x10000) == 0 || (v46 = v43[2], (v46 & 0x80000000) != 0) || (*(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x10000) == 0)
            {
              LOBYTE(v44) = 37;
LABEL_68:
              ++v43;
              goto LABEL_69;
            }

            v58 = __toupper(v45);
            v43 += 3;
            v47 = __toupper(v46);
            if (v58 <= 57)
            {
              v48 = -48;
            }

            else
            {
              v48 = -55;
            }

            v49 = v48 + v58;
            if (v47 <= 57)
            {
              v50 = -48;
            }

            else
            {
              v50 = -55;
            }

            LOBYTE(v44) = v50 + v47 + 16 * v49;
LABEL_69:
            if (&v38[v41] != v43)
            {
              v38[v41] = v44;
            }

            ++v41;
          }

          while (v43 < v42);
          if (&v38[v41] == v43)
          {
            v8 = 0;
            v19 = v59;
            v36 = v60;
          }

          else
          {
            v36 = v60;
            v19 = v59;
            v51 = CFDataCreateWithBytesNoCopy(0, v38, v41, bytesDeallocator);
            v8 = MFCreateStringWithData(v51, v64, 0);
          }

LABEL_84:
          if (v38 != v83)
          {
            free(v38);
          }

          if (!v8)
          {
LABEL_87:
            v8 = [(__CFString *)v36 substringWithRange:v19, v18];
          }

LABEL_89:
          if (v8)
          {
            [a1 removeObjectForKey:v11];
            if (v65)
            {
              v52 = v69;

              v66 = v52;
              [a1 setObject:v8 forKey:v52];
            }

            else if (v63)
            {
              if (v63 >= 1)
              {
                v53 = [a1 objectForKey:v66];
                v54 = [objc_allocWithZone(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v8, "length") + objc_msgSend(v53, "length")}];
                v55 = v54;
                if (v53)
                {
                  [v54 appendString:v53];
                }

                [v55 appendString:v8];
                [a1 setObject:v55 forKey:v66];
              }
            }

            else
            {
              [a1 setObject:v8 forKey:v66];
            }
          }

          ++v9;
          v10 = v8;
        }

        while (v9 != v62);
        v7 = [obja countByEnumeratingWithState:&v73 objects:v81 count:16];
        if (!v7)
        {
LABEL_102:

          v1 = obja;
          goto LABEL_103;
        }
      }
    }
  }

  else
  {
LABEL_103:
  }

  v56 = *MEMORY[0x1E69E9840];
}

@end