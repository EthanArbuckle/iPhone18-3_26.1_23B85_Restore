@interface DTKPKDebugCodeSet
+ (void)releaseFilterMask:(char *)a3;
- (BOOL)containsClass:(unsigned int)a3;
- (BOOL)containsClass:(unsigned int)a3 subclassID:(unsigned int)a4;
- (DTKPKDebugCodeSet)init;
- (DTKPKDebugCodeSet)initWithCodes:(id)a3;
- (DTKPKDebugCodeSet)initWithLegacyCodes:(id)a3;
- (char)createFilterMask:(BOOL)a3;
- (id)description;
- (id)legacyXML;
- (kperf_kdebug_filter)createKperfFilter;
- (void)addClass:(unsigned int)a3;
- (void)addClass:(unsigned int)a3 subclassID:(unsigned int)a4;
- (void)addClass:(unsigned int)a3 subclassID:(unsigned int)a4 code:(unsigned int)a5;
- (void)addCodeSet:(id)a3;
- (void)addCodes:(id)a3;
- (void)convertLegacyCodes;
@end

@implementation DTKPKDebugCodeSet

- (DTKPKDebugCodeSet)init
{
  v6.receiver = self;
  v6.super_class = DTKPKDebugCodeSet;
  v2 = [(DTKPKDebugCodeSet *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    kdebugCodes = v2->_kdebugCodes;
    v2->_kdebugCodes = v3;
  }

  return v2;
}

- (DTKPKDebugCodeSet)initWithCodes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DTKPKDebugCodeSet;
  v5 = [(DTKPKDebugCodeSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    kdebugCodes = v5->_kdebugCodes;
    v5->_kdebugCodes = v6;
  }

  return v5;
}

- (DTKPKDebugCodeSet)initWithLegacyCodes:(id)a3
{
  v3 = [(DTKPKDebugCodeSet *)self initWithCodes:a3];
  v4 = v3;
  if (v3)
  {
    [(DTKPKDebugCodeSet *)v3 convertLegacyCodes];
  }

  return v4;
}

- (void)convertLegacyCodes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247FEA354;
  v9 = sub_247FEA364;
  v10 = [MEMORY[0x277CBEB58] set];
  kdebugCodes = self->_kdebugCodes;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247FEA36C;
  v4[3] = &unk_278EF17A0;
  v4[4] = &v5;
  [(NSMutableSet *)kdebugCodes enumerateObjectsUsingBlock:v4];
  objc_storeStrong(&self->_kdebugCodes, v6[5]);
  _Block_object_dispose(&v5, 8);
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"KDebugCodeSet:"];
  kdebugCodes = self->_kdebugCodes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FEA4A0;
  v7[3] = &unk_278EF3E80;
  v5 = v3;
  v8 = v5;
  [(NSMutableSet *)kdebugCodes enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)addCodeSet:(id)a3
{
  v4 = [a3 kdebugCodes];
  [(DTKPKDebugCodeSet *)self addCodes:v4];
}

- (void)addCodes:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FEA684;
  v3[3] = &unk_278EF3E80;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)addClass:(unsigned int)a3
{
  kdebugCodes = self->_kdebugCodes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a3 << 24) | 0xFFFFFC];
  [(NSMutableSet *)kdebugCodes addObject:v4];
}

- (void)addClass:(unsigned int)a3 subclassID:(unsigned int)a4
{
  kdebugCodes = self->_kdebugCodes;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a3 << 24) | (a4 << 16) | 0xFFFC];
  [(NSMutableSet *)kdebugCodes addObject:v5];
}

- (void)addClass:(unsigned int)a3 subclassID:(unsigned int)a4 code:(unsigned int)a5
{
  kdebugCodes = self->_kdebugCodes;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a3 << 24) | (a4 << 16) | (4 * (a5 & 0x3FFF))];
  [(NSMutableSet *)kdebugCodes addObject:v6];
}

- (BOOL)containsClass:(unsigned int)a3
{
  kdebugCodes = self->_kdebugCodes;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a3 << 24) | 0xFFFFFC];
  if (([(NSMutableSet *)kdebugCodes containsObject:v5]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = self->_kdebugCodes;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4294967292];
    v6 = [(NSMutableSet *)v7 containsObject:v8];
  }

  return v6;
}

- (BOOL)containsClass:(unsigned int)a3 subclassID:(unsigned int)a4
{
  kdebugCodes = self->_kdebugCodes;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a4 << 16) & 0xFF0000 | (a3 << 24) | 0xFFFC];
  if (([(NSMutableSet *)kdebugCodes containsObject:v8]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = self->_kdebugCodes;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a3 << 24) | 0xFFFFFC];
    if (([(NSMutableSet *)v10 containsObject:v11]& 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v12 = self->_kdebugCodes;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a4 << 16) | 0xFF00FFFC];
      if (([(NSMutableSet *)v12 containsObject:v13]& 1) != 0)
      {
        v9 = 1;
      }

      else
      {
        v14 = self->_kdebugCodes;
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4294967292];
        v9 = [(NSMutableSet *)v14 containsObject:v15];
      }
    }
  }

  return v9;
}

- (id)legacyXML
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"<events>"];
  kdebugCodes = self->_kdebugCodes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FEAA48;
  v7[3] = &unk_278EF3E80;
  v5 = v3;
  v8 = v5;
  [(NSMutableSet *)kdebugCodes enumerateObjectsUsingBlock:v7];
  [v5 appendString:@"</events>"];

  return v5;
}

- (char)createFilterMask:(BOOL)a3
{
  v3 = a3;
  v5 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
  v6 = [(DTKPKDebugCodeSet *)self kdebugCodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FEABF8;
  v8[3] = &unk_278EF3EA0;
  v8[4] = v5;
  [v6 enumerateObjectsUsingBlock:v8];

  if (v3)
  {
    kperf_typefilter_invert();
  }

  return v5;
}

- (kperf_kdebug_filter)createKperfFilter
{
  v3 = kperf_kdebug_filter_create();
  v4 = [(DTKPKDebugCodeSet *)self kdebugCodes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FEAD34;
  v6[3] = &unk_278EF3EA0;
  v6[4] = v3;
  [v4 enumerateObjectsUsingBlock:v6];

  return v3;
}

+ (void)releaseFilterMask:(char *)a3
{
  if (a3)
  {
    free(a3);
  }
}

@end