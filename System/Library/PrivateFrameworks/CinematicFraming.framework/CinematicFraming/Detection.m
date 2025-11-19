@interface Detection
- (CGRect)bounds;
- (Detection)init;
- (Detection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Detection

- (Detection)init
{
  v5.receiver = self;
  v5.super_class = Detection;
  v2 = [(Detection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(Detection *)v2 setBounds:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(Detection *)v3 setOid:0];
  }

  return v3;
}

- (Detection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(Detection *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bounds"];
    [v9 rectValue];
    [(Detection *)v5 setBounds:?];
    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"oid"];
    -[Detection setOid:](v5, "setOid:", [v10 longValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCAE60];
  v5 = a3;
  [(Detection *)self bounds];
  v6 = [v4 valueWithRect:?];
  [v5 encodeObject:v6 forKey:@"bounds"];

  v7 = [MEMORY[0x277CCABB0] numberWithLong:{-[Detection oid](self, "oid")}];
  [v5 encodeObject:v7 forKey:@"oid"];
}

- (CGRect)bounds
{
  x = self->bounds.origin.x;
  y = self->bounds.origin.y;
  width = self->bounds.size.width;
  height = self->bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end