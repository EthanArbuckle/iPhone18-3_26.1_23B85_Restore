@interface DTKPKDebugCodeSet
+ (void)releaseFilterMask:(char *)mask;
- (BOOL)containsClass:(unsigned int)class;
- (BOOL)containsClass:(unsigned int)class subclassID:(unsigned int)d;
- (DTKPKDebugCodeSet)init;
- (DTKPKDebugCodeSet)initWithCodes:(id)codes;
- (DTKPKDebugCodeSet)initWithLegacyCodes:(id)codes;
- (char)createFilterMask:(BOOL)mask;
- (id)description;
- (id)legacyXML;
- (kperf_kdebug_filter)createKperfFilter;
- (void)addClass:(unsigned int)class;
- (void)addClass:(unsigned int)class subclassID:(unsigned int)d;
- (void)addClass:(unsigned int)class subclassID:(unsigned int)d code:(unsigned int)code;
- (void)addCodeSet:(id)set;
- (void)addCodes:(id)codes;
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

- (DTKPKDebugCodeSet)initWithCodes:(id)codes
{
  codesCopy = codes;
  v9.receiver = self;
  v9.super_class = DTKPKDebugCodeSet;
  v5 = [(DTKPKDebugCodeSet *)&v9 init];
  if (v5)
  {
    v6 = [codesCopy mutableCopy];
    kdebugCodes = v5->_kdebugCodes;
    v5->_kdebugCodes = v6;
  }

  return v5;
}

- (DTKPKDebugCodeSet)initWithLegacyCodes:(id)codes
{
  v3 = [(DTKPKDebugCodeSet *)self initWithCodes:codes];
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

- (void)addCodeSet:(id)set
{
  kdebugCodes = [set kdebugCodes];
  [(DTKPKDebugCodeSet *)self addCodes:kdebugCodes];
}

- (void)addCodes:(id)codes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FEA684;
  v3[3] = &unk_278EF3E80;
  v3[4] = self;
  [codes enumerateObjectsUsingBlock:v3];
}

- (void)addClass:(unsigned int)class
{
  kdebugCodes = self->_kdebugCodes;
  0xFFFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(class << 24) | 0xFFFFFC];
  [(NSMutableSet *)kdebugCodes addObject:0xFFFFFC];
}

- (void)addClass:(unsigned int)class subclassID:(unsigned int)d
{
  kdebugCodes = self->_kdebugCodes;
  0xFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(class << 24) | (d << 16) | 0xFFFC];
  [(NSMutableSet *)kdebugCodes addObject:0xFFFC];
}

- (void)addClass:(unsigned int)class subclassID:(unsigned int)d code:(unsigned int)code
{
  kdebugCodes = self->_kdebugCodes;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(class << 24) | (d << 16) | (4 * (code & 0x3FFF))];
  [(NSMutableSet *)kdebugCodes addObject:v6];
}

- (BOOL)containsClass:(unsigned int)class
{
  kdebugCodes = self->_kdebugCodes;
  0xFFFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(class << 24) | 0xFFFFFC];
  if (([(NSMutableSet *)kdebugCodes containsObject:0xFFFFFC]& 1) != 0)
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

- (BOOL)containsClass:(unsigned int)class subclassID:(unsigned int)d
{
  kdebugCodes = self->_kdebugCodes;
  0xFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(d << 16) & 0xFF0000 | (class << 24) | 0xFFFC];
  if (([(NSMutableSet *)kdebugCodes containsObject:0xFFFC]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = self->_kdebugCodes;
    0xFFFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(class << 24) | 0xFFFFFC];
    if (([(NSMutableSet *)v10 containsObject:0xFFFFFC]& 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v12 = self->_kdebugCodes;
      0xFF00FFFC = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(d << 16) | 0xFF00FFFC];
      if (([(NSMutableSet *)v12 containsObject:0xFF00FFFC]& 1) != 0)
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

- (char)createFilterMask:(BOOL)mask
{
  maskCopy = mask;
  v5 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
  kdebugCodes = [(DTKPKDebugCodeSet *)self kdebugCodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FEABF8;
  v8[3] = &unk_278EF3EA0;
  v8[4] = v5;
  [kdebugCodes enumerateObjectsUsingBlock:v8];

  if (maskCopy)
  {
    kperf_typefilter_invert();
  }

  return v5;
}

- (kperf_kdebug_filter)createKperfFilter
{
  v3 = kperf_kdebug_filter_create();
  kdebugCodes = [(DTKPKDebugCodeSet *)self kdebugCodes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FEAD34;
  v6[3] = &unk_278EF3EA0;
  v6[4] = v3;
  [kdebugCodes enumerateObjectsUsingBlock:v6];

  return v3;
}

+ (void)releaseFilterMask:(char *)mask
{
  if (mask)
  {
    free(mask);
  }
}

@end