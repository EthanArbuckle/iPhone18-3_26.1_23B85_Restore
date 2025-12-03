@interface OADColorScheme
- (BOOL)isEqual:(id)equal;
- (OADColorScheme)init;
- (id)colorForIndex:(int)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addColor:(id)color index:(int)index;
- (void)setColor:(id)color index:(int)index;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(OADColorScheme);
  [(NSMutableDictionary *)v4->mColors setDictionary:self->mColors];
  return v4;
}

- (id)colorForIndex:(int)index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&index];
  v5 = [(NSMutableDictionary *)self->mColors objectForKey:v4];

  return v5;
}

- (void)addColor:(id)color index:(int)index
{
  v4 = *&index;
  colorCopy = color;
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  [(NSMutableDictionary *)self->mColors setObject:colorCopy forKey:v6];
}

- (void)setColor:(id)color index:(int)index
{
  v4 = *&index;
  colorCopy = color;
  mColors = self->mColors;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mColors setObject:colorCopy forKey:v7];
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
    name = [(OADColorScheme *)self name];
    v8 = [name length];

    if (!v8)
    {
      name2 = [v3 name];
      [(OADColorScheme *)self setName:name2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NSMutableDictionary *)self->mColors isEqualToDictionary:equalCopy[2]];
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