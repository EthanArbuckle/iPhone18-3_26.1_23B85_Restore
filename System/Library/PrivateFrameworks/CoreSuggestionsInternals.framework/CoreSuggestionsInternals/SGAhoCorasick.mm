@interface SGAhoCorasick
- (BOOL)existsInString:(id)a3;
- (SGAhoCorasick)initWithBytecode:(id)a3;
@end

@implementation SGAhoCorasick

- (BOOL)existsInString:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(NSData *)self->_bytecode bytes];
    if (!v6)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"SGAhoCorasick.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"bytecode"}];
    }

    v7 = v5;
    v8 = objc_opt_self();

    if (v8)
    {
      v29 = v5;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *buffer = 0u;
      v32 = 0u;
      Length = CFStringGetLength(v7);
      theString = v7;
      v42 = 0;
      v43 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v7);
      CStringPtr = 0;
      v40 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
      }

      v44 = 0;
      v45 = 0;
      v41 = CStringPtr;
      if (Length < 1)
      {
LABEL_53:
        v26 = 0;
      }

      else
      {
        LOWORD(v12) = 0;
        v13 = 0;
        v30 = Length;
        while (1)
        {
          v14 = v43;
          if (v43 <= v13)
          {
            v15 = 0;
          }

          else if (v40)
          {
            v15 = v40[v42 + v13];
          }

          else if (v41)
          {
            v15 = v41[v42 + v13];
          }

          else
          {
            v23 = v44;
            if (v45 <= v13 || v44 > v13)
            {
              v25 = v13 - 4;
              if (v13 < 4)
              {
                v25 = 0;
              }

              if (v25 + 64 < v43)
              {
                v14 = v25 + 64;
              }

              v44 = v25;
              v45 = v14;
              v46.length = v14 - v25;
              v46.location = v42 + v25;
              CFStringGetCharacters(theString, v46, buffer);
              v23 = v44;
            }

            v15 = buffer[v13 - v23];
          }

          endPtr = self->_endPtr;
          if (self->_endPtr)
          {
            break;
          }

LABEL_33:
          [MEMORY[0x277CBEAD8] raise:@"SGAhoCorasickMaxIter" format:@"Exceeded iteration limit"];
LABEL_38:
          if (++v13 == v30)
          {
            goto LABEL_53;
          }
        }

        v17 = 0;
        while (1)
        {
          if (v12 >= endPtr)
          {
            [MEMORY[0x277CBEAD8] raise:@"SGAhoCorasickBoundsCheck" format:{@"Node %u beyond bound %u", v12, endPtr}];
          }

          v18 = v6[2 * v12 + 1];
          v19 = 1;
          if (v18 >= 2)
          {
            do
            {
              v20 = self->_endPtr;
              if (v20 <= (v12 + ((v19 + v18) >> 1)))
              {
                [MEMORY[0x277CBEAD8] raise:@"SGAhoCorasickBoundsCheck" format:{@"Node %u beyond bound %u", (v12 + ((v19 + v18) >> 1)), v20}];
              }

              if (v6[2 * (v12 + ((v19 + v18) >> 1))] < v15)
              {
                v19 = ((v19 + v18) >> 1) + 1;
              }

              else
              {
                v18 = (v19 + v18) >> 1;
              }
            }

            while (v19 < v18);
          }

          if (v19 == v18)
          {
            v21 = self->_endPtr;
            if (v21 <= (v12 + v18))
            {
              [MEMORY[0x277CBEAD8] raise:@"SGAhoCorasickBoundsCheck" format:{@"Node %u beyond bound %u", (v12 + v18), v21}];
            }

            if (v6[2 * (v12 + v18)] == v15)
            {
              break;
            }
          }

          if (!v12)
          {
            LOWORD(v12) = 0;
            goto LABEL_38;
          }

          v22 = self->_endPtr;
          if (v22 <= v12)
          {
            [MEMORY[0x277CBEAD8] raise:@"SGAhoCorasickBoundsCheck" format:{@"Node %u beyond bound %u", v12, v22}];
          }

          v12 = v6[2 * v12];
          if (v12 == 0xFFFF)
          {
            goto LABEL_52;
          }

          ++v17;
          endPtr = self->_endPtr;
          if (v17 >= endPtr)
          {
            goto LABEL_33;
          }
        }

        v12 = v6[2 * (v12 + v18) + 1];
        if (v12 != 0xFFFF)
        {
          goto LABEL_38;
        }

LABEL_52:
        v26 = 1;
      }

      v5 = v29;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (SGAhoCorasick)initWithBytecode:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGAhoCorasick.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"bytecode"}];
  }

  if (![v6 length])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGAhoCorasick.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"bytecode.length > 0"}];
  }

  if (([v6 length] & 3) != 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGAhoCorasick.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"bytecode.length % sizeof(op_t) == 0"}];
  }

  v13.receiver = self;
  v13.super_class = SGAhoCorasick;
  v7 = [(SGAhoCorasick *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bytecode, a3);
    v8->_endPtr = [v6 length] >> 2;
  }

  return v8;
}

@end