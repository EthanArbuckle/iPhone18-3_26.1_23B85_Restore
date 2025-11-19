@interface OADColorScheme
- (BOOL)isEqual:(id)a3;
- (OADColorScheme)init;
- (id)colorForIndex:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addColor:(id)a3 index:(int)a4;
- (void)setColor:(id)a3 index:(int)a4;
- (void)validateColorScheme;
@end

@implementation OADColorScheme

- (OADColorScheme)init
{
  v6.receiver = self;
  v6.super_class = OADColorScheme;
  v2 = [(OADColorScheme *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mColors = v2->mColors;
    v2->mColors = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OADColorScheme);
  [(NSMutableDictionary *)v4->mColors setDictionary:self->mColors];
  return v4;
}

- (id)colorForIndex:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&a3];
  v5 = [(NSMutableDictionary *)self->mColors objectForKey:v4];

  return v5;
}

- (void)addColor:(id)a3 index:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  [(NSMutableDictionary *)self->mColors setObject:v7 forKey:v6];
}

- (void)setColor:(id)a3 index:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  mColors = self->mColors;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mColors setObject:v8 forKey:v7];
}

- (void)validateColorScheme
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [TCXmlUtilities bundlePathForXmlResource:@"DefaultColorScheme"];
  v5 = sfaxmlParseFile([v4 fileSystemRepresentation]);
  v6 = OCXGetRootElement(v5);
  if (v6)
  {
    [OAXColorScheme readFromXmlNode:v6 toColorScheme:v3];
    xmlFreeDoc(v5);
    v7 = [(OADColorScheme *)self name];
    v8 = [v7 length];

    if (!v8)
    {
      v9 = [v3 name];
      [(OADColorScheme *)self setName:v9];
    }

    v10 = v3[2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [(NSMutableDictionary *)self->mColors objectForKeyedSubscript:v15, v19];
          v17 = v16 == 0;

          if (v17)
          {
            v18 = [v11 objectForKeyedSubscript:v15];
            [(NSMutableDictionary *)self->mColors setObject:v18 forKeyedSubscript:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NSMutableDictionary *)self->mColors isEqualToDictionary:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADColorScheme;
  v2 = [(OADColorScheme *)&v4 description];

  return v2;
}

@end