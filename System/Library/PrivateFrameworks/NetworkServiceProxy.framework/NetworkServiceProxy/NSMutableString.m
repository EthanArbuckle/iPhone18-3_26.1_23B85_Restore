@interface NSMutableString
- (void)appendPrettyBOOL:(uint64_t)a3 withName:(int)a4 andIndent:(char)a5 options:;
- (void)appendPrettyInt:(uint64_t)a3 withName:(int)a4 andIndent:(char)a5 options:;
- (void)appendPrettyObject:(void *)a3 withName:(int)a4 andIndent:(uint64_t)a5 options:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(void *)a3 withName:(int)a4 andIndent:(uint64_t)a5 options:
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1 && v7 && (a5 & 0xC) != 4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v9 = v7, objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, (v10))
    {
      v11 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = ")}";
      }

      else
      {
        v13 = ")";
      }

      v14 = "{(";
      if ((isKindOfClass & 1) == 0)
      {
        v14 = "(";
      }

      v15 = 4 * a4;
      [a1 appendFormat:@"\n%*s%@ = %s", (4 * a4 + 4), " ", v8, v14];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v17)
      {
        v18 = v17;
        v62 = (v15 + 4);
        v64 = v13;
        v59 = v7;
        v19 = (v15 + 8);
        v20 = *v73;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v73 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v72 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v23 = [v22 descriptionWithIndent:(a4 + 2) options:a5];
              [a1 appendFormat:@"\n%*s{%@", v19, " ", v23];

              [a1 appendFormat:@"\n%*s}, ", v19, " ", v56];
            }

            else
            {
              v24 = v22;
              objc_opt_class();
              if (v24 && (v25 = objc_opt_isKindOfClass(), v24, (a5 & 3) == 3) && (v25 & 1) != 0)
              {
                [a1 appendFormat:@"\n%*s<%lu-char-str>, ", v19, " ", objc_msgSend(v24, "length")];
              }

              else
              {
                v26 = [v24 description];
                [a1 appendFormat:@"\n%*s%@, ", v19, " ", v26];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v18);

        [a1 appendFormat:@"\n%*s", v62, " "];
        v7 = v59;
        v13 = v64;
      }

      else
      {
      }

      [a1 appendFormat:@"%s", v13];
    }

    else
    {
      v28 = v9;
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      if ((v29 & 1) == 0)
      {
        v48 = v28;
        objc_opt_class();
        v49 = objc_opt_isKindOfClass();

        if (v49)
        {
          v50 = [v48 UUIDString];
          [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v50];
        }

        else
        {
          if (isa_nsstring(v48))
          {
            if ((~a5 & 3) != 0)
            {
              [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v48];
            }

            else
            {
              [a1 appendFormat:@"\n%*s%@ = <%lu-char-str>", (4 * a4 + 4), " ", v8, objc_msgSend(v48, "length")];
            }

            goto LABEL_28;
          }

          if (isa_nsdata(v48))
          {
            v51 = v48;
            v52 = [v51 length];
            v53 = [v51 description];

            [a1 appendFormat:@"\n%*s%@ = %u:%@", (4 * a4 + 4), " ", v8, v52, v53];
            goto LABEL_28;
          }

          v50 = v48;
          if (objc_opt_respondsToSelector())
          {
            v54 = [v50 descriptionWithIndent:? options:?];
            [a1 appendFormat:@"\n%*s%@ = {%@", (4 * (a4 + 1)), " ", v8, v54];

            [a1 appendFormat:@"\n%*s}", (4 * (a4 + 1)), " ", v57, v58];
          }

          else
          {
            v55 = [v50 description];
            [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v55];
          }
        }

        goto LABEL_28;
      }

      v30 = v28;
      v31 = " ";
      [a1 appendFormat:@"\n%*s%@ = {", (4 * a4 + 4), " ", v8];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v32 = v30;
      v33 = [v32 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v33)
      {
        v34 = v33;
        v60 = v7;
        v61 = v8;
        v35 = (4 * a4 + 8);
        v36 = *v69;
        v65 = v32;
        v63 = *v69;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v69 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v68 + 1) + 8 * j);
            v39 = [v32 objectForKeyedSubscript:v38];
            if (objc_opt_respondsToSelector())
            {
              v40 = [v39 descriptionWithIndent:(a4 + 2) options:a5];
              [a1 appendFormat:@"\n%*s%@ = {%@", v35, v31, v38, v40];

              [a1 appendFormat:@"\n%*s}, ", v35, v31];
            }

            else
            {
              v41 = v35;
              v42 = v34;
              v43 = v31;
              v44 = v39;
              objc_opt_class();
              if (v44 && (v45 = objc_opt_isKindOfClass(), v44, (a5 & 3) == 3) && (v45 & 1) != 0)
              {
                v46 = [v44 length];
                v31 = v43;
                v35 = v41;
                [a1 appendFormat:@"\n%*s%@ = <%lu-char-str>", v41, v43, v38, v46];
              }

              else
              {
                v47 = [v44 description];
                v31 = v43;
                v35 = v41;
                [a1 appendFormat:@"\n%*s%@ = %@", v41, v43, v38, v47];
              }

              v34 = v42;
              v36 = v63;
              v32 = v65;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v34);

        [a1 appendFormat:@"\n%*s", (4 * a4 + 4), v31];
        v7 = v60;
        v8 = v61;
      }

      else
      {
      }

      [a1 appendString:@"}"];
    }
  }

LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)appendPrettyBOOL:(uint64_t)a3 withName:(int)a4 andIndent:(char)a5 options:
{
  if (result && (a5 & 0xC) != 4)
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    return [result appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", a3, v7, v5, v6];
  }

  return result;
}

- (void)appendPrettyInt:(uint64_t)a3 withName:(int)a4 andIndent:(char)a5 options:
{
  if (result)
  {
    if ((a5 & 0xC) != 4)
    {
      return [result appendFormat:@"\n%*s%@ = %lld", (4 * a4 + 4), " ", a3, a2, v5, v6];
    }
  }

  return result;
}

@end