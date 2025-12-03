@interface BRAsset
+ (id)nullAsset;
+ (id)withType:(int64_t)type andParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (BRAsset)initWithType:(int64_t)type andParameters:(id)parameters null:(BOOL)null;
- (id)description;
- (id)propertyList;
- (void)dealloc;
@end

@implementation BRAsset

+ (id)withType:(int64_t)type andParameters:(id)parameters
{
  v4 = [[BRAsset alloc] initWithType:type andParameters:parameters null:0];

  return v4;
}

+ (id)nullAsset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__BRAsset_nullAsset__block_invoke;
  block[3] = &unk_278D3F310;
  block[4] = self;
  if (nullAsset_once != -1)
  {
    dispatch_once(&nullAsset_once, block);
  }

  return nullAsset_null;
}

uint64_t __20__BRAsset_nullAsset__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) initWithType:0 andParameters:0 null:1];
  nullAsset_null = result;
  return result;
}

- (BRAsset)initWithType:(int64_t)type andParameters:(id)parameters null:(BOOL)null
{
  v11.receiver = self;
  v11.super_class = BRAsset;
  v8 = [(BRAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    *&v8->_hasAudio = 0;
    v8->_parameters = [parameters copy];
    v9->_isNull = null;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRAsset;
  [(BRAsset *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = -[BRAsset type](self, "type"), v11 == [equal type]))
    {
      if (!-[BRAsset parameters](self, "parameters") && ![equal parameters] || (v12 = -[NSDictionary isEqual:](-[BRAsset parameters](self, "parameters", v6, v16, v17, v18, v7, v8), "isEqual:", objc_msgSend(equal, "parameters"))) != 0)
      {
        v13 = [(BRAsset *)self isNull:v15];
        LOBYTE(v12) = v13 ^ [equal isNull] ^ 1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = BRAsset;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRAsset description](&v8, sel_description)}];
  [v3 appendFormat:@"Type: %ld", -[BRAsset type](self, "type")];
  if ([(BRAsset *)self hasAudio])
  {
    v4 = "Y";
  }

  else
  {
    v4 = "N";
  }

  [v3 appendFormat:@"HasAudio: %s", v4];
  if ([(BRAsset *)self hasHaptic])
  {
    v5 = "Y";
  }

  else
  {
    v5 = "N";
  }

  [v3 appendFormat:@"HasHaptic: %s", v5];
  [v3 appendFormat:@"Params: %@;", -[BRAsset parameters](self, "parameters")];
  if ([(BRAsset *)self isNull])
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  [v3 appendFormat:@"IsNull: %s;", v6];
  return v3;
}

- (id)propertyList
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", -[BRAsset type](self, "type")), @"Type"}];
  v4 = MEMORY[0x277CCACA8];
  if ([(BRAsset *)self hasAudio])
  {
    v5 = "Y";
  }

  else
  {
    v5 = "N";
  }

  [dictionary setObject:objc_msgSend(v4 forKey:{"stringWithFormat:", @"%s;", v5), @"HasAudio"}];
  v6 = MEMORY[0x277CCACA8];
  if ([(BRAsset *)self hasHaptic])
  {
    v7 = "Y";
  }

  else
  {
    v7 = "N";
  }

  [dictionary setObject:objc_msgSend(v6 forKey:{"stringWithFormat:", @"%s;", v7), @"HasHaptic"}];
  if ([(BRAsset *)self parameters])
  {
    parameters = [(BRAsset *)self parameters];
  }

  else
  {
    parameters = [MEMORY[0x277CBEAC0] dictionary];
  }

  [dictionary setObject:parameters forKey:@"Params"];
  v9 = MEMORY[0x277CCACA8];
  if ([(BRAsset *)self isNull])
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  [dictionary setObject:objc_msgSend(v9 forKey:{"stringWithFormat:", @"%s;", v10), @"IsNull"}];
  return dictionary;
}

@end