@interface NSMutableString
- (void)appendPrettyBOOL:(uint64_t)l withName:(int)name andIndent:(char)indent options:;
- (void)appendPrettyInt:(uint64_t)int withName:(int)name andIndent:(char)indent options:;
- (void)appendPrettyObject:(void *)object withName:(int)name andIndent:(uint64_t)indent options:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(void *)object withName:(int)name andIndent:(uint64_t)indent options:
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objectCopy = object;
  if (self && v7 && (indent & 0xC) != 4)
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

      v15 = 4 * name;
      [self appendFormat:@"\n%*s%@ = %s", (4 * name + 4), " ", objectCopy, v14];
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
              v23 = [v22 descriptionWithIndent:(name + 2) options:indent];
              [self appendFormat:@"\n%*s{%@", v19, " ", v23];

              [self appendFormat:@"\n%*s}, ", v19, " ", v56];
            }

            else
            {
              v24 = v22;
              objc_opt_class();
              if (v24 && (v25 = objc_opt_isKindOfClass(), v24, (indent & 3) == 3) && (v25 & 1) != 0)
              {
                [self appendFormat:@"\n%*s<%lu-char-str>, ", v19, " ", objc_msgSend(v24, "length")];
              }

              else
              {
                v26 = [v24 description];
                [self appendFormat:@"\n%*s%@, ", v19, " ", v26];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v18);

        [self appendFormat:@"\n%*s", v62, " "];
        v7 = v59;
        v13 = v64;
      }

      else
      {
      }

      [self appendFormat:@"%s", v13];
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
          uUIDString = [v48 UUIDString];
          [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, uUIDString];
        }

        else
        {
          if (isa_nsstring(v48))
          {
            if ((~indent & 3) != 0)
            {
              [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, v48];
            }

            else
            {
              [self appendFormat:@"\n%*s%@ = <%lu-char-str>", (4 * name + 4), " ", objectCopy, objc_msgSend(v48, "length")];
            }

            goto LABEL_28;
          }

          if (isa_nsdata(v48))
          {
            v51 = v48;
            v52 = [v51 length];
            v53 = [v51 description];

            [self appendFormat:@"\n%*s%@ = %u:%@", (4 * name + 4), " ", objectCopy, v52, v53];
            goto LABEL_28;
          }

          uUIDString = v48;
          if (objc_opt_respondsToSelector())
          {
            v54 = [uUIDString descriptionWithIndent:? options:?];
            [self appendFormat:@"\n%*s%@ = {%@", (4 * (name + 1)), " ", objectCopy, v54];

            [self appendFormat:@"\n%*s}", (4 * (name + 1)), " ", v57, v58];
          }

          else
          {
            v55 = [uUIDString description];
            [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, v55];
          }
        }

        goto LABEL_28;
      }

      v30 = v28;
      v31 = " ";
      [self appendFormat:@"\n%*s%@ = {", (4 * name + 4), " ", objectCopy];
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
        v61 = objectCopy;
        v35 = (4 * name + 8);
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
              v40 = [v39 descriptionWithIndent:(name + 2) options:indent];
              [self appendFormat:@"\n%*s%@ = {%@", v35, v31, v38, v40];

              [self appendFormat:@"\n%*s}, ", v35, v31];
            }

            else
            {
              v41 = v35;
              v42 = v34;
              v43 = v31;
              v44 = v39;
              objc_opt_class();
              if (v44 && (v45 = objc_opt_isKindOfClass(), v44, (indent & 3) == 3) && (v45 & 1) != 0)
              {
                v46 = [v44 length];
                v31 = v43;
                v35 = v41;
                [self appendFormat:@"\n%*s%@ = <%lu-char-str>", v41, v43, v38, v46];
              }

              else
              {
                v47 = [v44 description];
                v31 = v43;
                v35 = v41;
                [self appendFormat:@"\n%*s%@ = %@", v41, v43, v38, v47];
              }

              v34 = v42;
              v36 = v63;
              v32 = v65;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v34);

        [self appendFormat:@"\n%*s", (4 * name + 4), v31];
        v7 = v60;
        objectCopy = v61;
      }

      else
      {
      }

      [self appendString:@"}"];
    }
  }

LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)appendPrettyBOOL:(uint64_t)l withName:(int)name andIndent:(char)indent options:
{
  if (result && (indent & 0xC) != 4)
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    return [result appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", l, v7, v5, v6];
  }

  return result;
}

- (void)appendPrettyInt:(uint64_t)int withName:(int)name andIndent:(char)indent options:
{
  if (result)
  {
    if ((indent & 0xC) != 4)
    {
      return [result appendFormat:@"\n%*s%@ = %lld", (4 * name + 4), " ", int, a2, v5, v6];
    }
  }

  return result;
}

@end