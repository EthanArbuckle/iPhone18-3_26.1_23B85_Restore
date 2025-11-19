@interface CoreThemeConstantHelper
+ (id)helperForStructAtIndex:(int64_t)a3 inAssociatedGlobalList:(void *)a4;
- (id)description;
- (void)dealloc;
@end

@implementation CoreThemeConstantHelper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreThemeConstantHelper;
  [(CoreThemeConstantHelper *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CoreThemeConstantHelper;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - identifier: %ld, constantName: %@, displayName: %@", -[CoreThemeConstantHelper description](&v3, sel_description), self->_identifier, self->_label, self->_displayName];
}

+ (id)helperForStructAtIndex:(int64_t)a3 inAssociatedGlobalList:(void *)a4
{
  v6 = objc_alloc_init(a1);
  v7 = v6;
  if (a4 == MEMORY[0x277D02798])
  {
    v10 = (MEMORY[0x277D02798] + 32 * a3);
    goto LABEL_34;
  }

  v8 = MEMORY[0x277D02778];
  if (a4 == MEMORY[0x277D02778] || (v8 = MEMORY[0x277D027D0], a4 == MEMORY[0x277D027D0]) || (v8 = MEMORY[0x277D027B8], a4 == MEMORY[0x277D027B8]) || (v8 = MEMORY[0x277D027C8], a4 == MEMORY[0x277D027C8]) || (v8 = MEMORY[0x277D02800], a4 == MEMORY[0x277D02800]) || (v8 = MEMORY[0x277D02788], a4 == MEMORY[0x277D02788]))
  {
    v10 = (v8 + 24 * a3);
LABEL_34:
    if (!*(v10 + 1))
    {
      goto LABEL_46;
    }

    v11 = *v10;
    goto LABEL_36;
  }

  if (a4 == MEMORY[0x277D02808] || a4 == MEMORY[0x277D02818] || a4 == MEMORY[0x277D02810] || a4 == MEMORY[0x277D027E8] || a4 == MEMORY[0x277D027E0] || a4 == MEMORY[0x277D027F0] || a4 == MEMORY[0x277D02768] || a4 == MEMORY[0x277D02770] || a4 == MEMORY[0x277D02780] || a4 == MEMORY[0x277D027A0] || a4 == MEMORY[0x277D027D8] || a4 == MEMORY[0x277D027F8] || a4 == MEMORY[0x277D02738] || a4 == MEMORY[0x277D02740] || a4 == MEMORY[0x277D027C0] || a4 == MEMORY[0x277D027B0] || a4 == MEMORY[0x277D02750] || a4 == MEMORY[0x277D02748] || a4 == MEMORY[0x277D02728] || a4 == MEMORY[0x277D02758])
  {
    v10 = (a4 + 24 * a3);
    goto LABEL_34;
  }

  if (a4 != gThemeIterationTypes)
  {
    if (a4 == MEMORY[0x277D02760])
    {
      v13 = (MEMORY[0x277D02760] + 24 * a3);
      v14 = v13[1];
      if (v14)
      {
        v6[1] = *v13;
        v6[2] = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v14];
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v16 = v13[2];
LABEL_45:
        v12 = [v15 initWithUTF8String:v16];
        goto LABEL_37;
      }
    }

    else
    {
      if (a4 != &gSchemaCategories)
      {

        return 0;
      }

      v17 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{0), "elementCategoryAtIndex:", a3}];
      if (v17[1])
      {
        v18 = v17;
        v7[1] = *v17;
        v7[2] = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17[1]];
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v16 = v18[2];
        goto LABEL_45;
      }
    }

LABEL_46:

    v7 = 0;
    goto LABEL_47;
  }

  v10 = &gThemeIterationTypes[6 * a3];
  if (!*(v10 + 1))
  {
    goto LABEL_46;
  }

  v11 = *v10;
LABEL_36:
  v6[1] = v11;
  v6[2] = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v10 + 2)];
LABEL_37:
  v7[3] = v12;
LABEL_47:

  return v7;
}

@end