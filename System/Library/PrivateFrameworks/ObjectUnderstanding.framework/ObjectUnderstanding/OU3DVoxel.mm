@interface OU3DVoxel
- (OU3DVoxel)init;
- (OU3DVoxel)initWithCoder:(id)coder;
- (OU3DVoxel)initWithDictionaryRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OU3DVoxel

- (OU3DVoxel)init
{
  v4.receiver = self;
  v4.super_class = OU3DVoxel;
  v2 = [(OU3DVoxel *)&v4 init];
  [(OU3DVoxel *)v2 setCenter:0.0];
  [(OU3DVoxel *)v2 setSize:0.0];
  [(OU3DVoxel *)v2 setSemantic_label:0];
  [(OU3DVoxel *)v2 setObject_id:0];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(__objc2_class *)OU3DVoxel init];
  *&v4->info = *self->center;
  *&v4[1].superclass = *self->size;
  LOBYTE(v4->superclass) = self->semantic_label;
  objc_storeStrong(&v4->cache, self->object_id);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:self->center length:16];
  [coderCopy encodeObject:v5 forKey:@"location"];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:self->size length:16];
  [coderCopy encodeObject:v6 forKey:@"size"];
  semantic_label = self->semantic_label;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&semantic_label length:1];
  [coderCopy encodeObject:v7 forKey:@"semantic_label"];
  [coderCopy encodeObject:self->object_id forKey:@"object_id"];
}

- (OU3DVoxel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = OU3DVoxel;
  v5 = [(OU3DVoxel *)&v12 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  *v5->center = *[v6 bytes];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
  *v5->size = *[v7 bytes];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"semantic_label"];
  v5->semantic_label = *[v8 bytes];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"object_id"];
  object_id = v5->object_id;
  v5->object_id = v9;

  return v5;
}

- (id)dictionaryRepresentation
{
  v13[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = float3ToNSArray(*self->center);
  [dictionary setObject:v4 forKeyedSubscript:@"location"];

  v5 = float3ToNSArray(*self->size);
  [dictionary setObject:v5 forKeyedSubscript:@"size"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->semantic_label];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [dictionary setObject:v7 forKeyedSubscript:@"semantic_label"];

  object_id = self->object_id;
  if (object_id)
  {
    uUIDString = [(NSUUID *)self->object_id UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  [dictionary setObject:uUIDString forKeyedSubscript:@"object_id"];
  if (object_id)
  {
  }

  v10 = [dictionary copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (OU3DVoxel)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = OU3DVoxel;
  v5 = [(OU3DVoxel *)&v17 init];
  v6 = [representationCopy objectForKeyedSubscript:@"location"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    float3FromNSArray(v7, v5->center);
  }

  v8 = [representationCopy objectForKeyedSubscript:@"size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    float3FromNSArray(v9, v5->size);
  }

  v10 = [representationCopy objectForKeyedSubscript:@"semantic_label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v5->semantic_label = [v12 intValue];
  }

  v13 = [representationCopy objectForKeyedSubscript:@"object_id"];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
  }

  else
  {
    v14 = 0;
  }

  object_id = v5->object_id;
  v5->object_id = v14;

  return v5;
}

@end