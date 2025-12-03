@interface OADColorMap
- (BOOL)isEqual:(id)equal;
- (OADColorMap)init;
- (id)description;
- (int)mappingForIndex:(int)index;
- (unint64_t)hash;
- (void)addDefaultMappings:(BOOL)mappings;
- (void)addMapping:(int)mapping index:(int)index;
@end

@implementation OADColorMap

- (OADColorMap)init
{
  v6.receiver = self;
  v6.super_class = OADColorMap;
  v2 = [(OADColorMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mMappings = v2->mMappings;
    v2->mMappings = v3;
  }

  return v2;
}

- (int)mappingForIndex:(int)index
{
  mMappings = self->mMappings;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&index];
  v5 = [(NSMutableDictionary *)mMappings objectForKey:v4];

  LODWORD(v4) = [v5 intValue];
  return v4;
}

- (void)addMapping:(int)mapping index:(int)index
{
  v4 = *&index;
  mMappings = self->mMappings;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*&mapping];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mMappings setObject:v7 forKey:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NSMutableDictionary *)self->mMappings isEqualToDictionary:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSMutableDictionary *)self->mMappings count];
  v5.receiver = self;
  v5.super_class = OADColorMap;
  return [(OADColorMap *)&v5 hash]^ v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADColorMap;
  v2 = [(OADColorMap *)&v4 description];

  return v2;
}

- (void)addDefaultMappings:(BOOL)mappings
{
  mappingsCopy = mappings;
  if (mappings)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (mappings)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [OADColorMap addMapping:"addMapping:index:" index:?];
  [(OADColorMap *)self addMapping:!mappingsCopy index:1];
  [(OADColorMap *)self addMapping:v5 index:2];
  [(OADColorMap *)self addMapping:v6 index:3];
  [(OADColorMap *)self addMapping:4 index:4];
  [(OADColorMap *)self addMapping:5 index:5];
  [(OADColorMap *)self addMapping:6 index:6];
  [(OADColorMap *)self addMapping:7 index:7];
  [(OADColorMap *)self addMapping:8 index:8];
  [(OADColorMap *)self addMapping:9 index:9];
  [(OADColorMap *)self addMapping:10 index:10];

  [(OADColorMap *)self addMapping:11 index:11];
}

@end