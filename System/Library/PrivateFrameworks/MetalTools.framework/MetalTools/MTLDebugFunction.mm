@interface MTLDebugFunction
- (MTLDebugFunction)initWithFunction:(id)a3 library:(id)a4;
- (id)bitcodeData;
- (id)importedLibraries;
- (id)importedSymbols;
- (unint64_t)getIntersectionFunctionSignature;
- (void)dealloc;
- (void)validateIsIFBFunction;
@end

@implementation MTLDebugFunction

- (unint64_t)getIntersectionFunctionSignature
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [-[MTLToolsFunction reflectionWithOptions:](self reflectionWithOptions:{0), "tags"}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) tagType];
        if (v8 > 5)
        {
          if (v8 <= 7)
          {
            if (v8 == 6)
            {
              v5 |= 0x20uLL;
            }

            else
            {
              v5 |= 0x80uLL;
            }
          }

          else
          {
            switch(v8)
            {
              case 8:
                v5 |= 0x40uLL;
                break;
              case 9:
                v5 |= 0x100uLL;
                break;
              case 10:
                v5 |= 0x200uLL;
                break;
            }
          }
        }

        else if (v8 <= 2)
        {
          if (v8 == 1)
          {
            v5 |= 1uLL;
          }

          else if (v8 == 2)
          {
            v5 |= 2uLL;
          }
        }

        else if (v8 == 3)
        {
          v5 |= 4uLL;
        }

        else if (v8 == 4)
        {
          v5 |= 8uLL;
        }

        else
        {
          v5 |= 0x10uLL;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)validateIsIFBFunction
{
  if ([(MTLToolsFunction *)self functionType]!= 6)
  {
    [MTLDebugFunction validateIsIFBFunction];
  }

  if ((self->_intersectionFunctionSignature & 0x100) == 0)
  {
    [MTLDebugFunction validateIsIFBFunction];
  }
}

- (MTLDebugFunction)initWithFunction:(id)a3 library:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLDebugFunction;
  v5 = [(MTLToolsFunction *)&v7 initWithFunction:a3 library:a4];
  if (v5 && [a3 functionType] == 6)
  {
    v5->_intersectionFunctionSignature = [(MTLDebugFunction *)v5 getIntersectionFunctionSignature];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugFunction;
  [(MTLToolsFunction *)&v3 dealloc];
}

- (id)importedSymbols
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 importedSymbols];
}

- (id)importedLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 importedLibraries];
}

- (id)bitcodeData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bitcodeData];
}

@end