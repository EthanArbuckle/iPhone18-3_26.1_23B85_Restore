@interface GCSDirectionPadMapping
+ (id)archivalClasses;
- (BOOL)isCustomized;
- (GCSDirectionPadMapping)initWithCoder:(id)a3;
- (GCSDirectionPadMapping)initWithJSONObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)jsonObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCSDirectionPadMapping

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCSDirectionPadMapping;
  v4 = [(GCSElementMapping *)&v6 copyWithZone:a3];
  [v4 setInvertHorizontally:{-[GCSDirectionPadMapping invertHorizontally](self, "invertHorizontally")}];
  [v4 setInvertVertically:{-[GCSDirectionPadMapping invertVertically](self, "invertVertically")}];
  [v4 setSwapAxes:{-[GCSDirectionPadMapping swapAxes](self, "swapAxes")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GCSElementMapping *)self elementKey];
  v5 = [(GCSElementMapping *)self mappingKey];
  v6 = [v3 stringWithFormat:@"<GCSDirectionPadMapping: elementKey=%@, mappingKey=%@>", v4, v5];

  return v6;
}

- (BOOL)isCustomized
{
  v5.receiver = self;
  v5.super_class = GCSDirectionPadMapping;
  return [(GCSElementMapping *)&v5 isCustomized]|| self->_invertHorizontally || self->_invertVertically || self->_swapAxes;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (GCSDirectionPadMapping)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GCSDirectionPadMapping;
  v5 = [(GCSElementMapping *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_invertHorizontally = [v4 decodeBoolForKey:@"_invertHorizontally"];
    v5->_invertVertically = [v4 decodeBoolForKey:@"_invertVertically"];
    v5->_swapAxes = [v4 decodeBoolForKey:@"_swapAxes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCSDirectionPadMapping;
  v4 = a3;
  [(GCSElementMapping *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_invertHorizontally forKey:{@"_invertHorizontally", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_invertVertically forKey:@"_invertVertically"];
  [v4 encodeBool:self->_swapAxes forKey:@"_swapAxes"];
}

- (GCSDirectionPadMapping)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v12.receiver = self;
    v12.super_class = GCSDirectionPadMapping;
    v6 = [(GCSElementMapping *)&v12 initWithJSONObject:v5];
    if (v6)
    {
      v7 = [v5 _gcs_numberForJSONKey:@"invertHorizontally"];
      v6->_invertHorizontally = [v7 BOOLValue];

      v8 = [v5 _gcs_numberForJSONKey:@"invertVertically"];
      v6->_invertVertically = [v8 BOOLValue];

      v9 = [v5 _gcs_numberForJSONKey:@"swapAxes"];
      v6->_swapAxes = [v9 BOOLValue];
    }

    self = v6;

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonObject
{
  v13[3] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = GCSDirectionPadMapping;
  v3 = [(GCSElementMapping *)&v11 jsonObject];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 addEntriesFromDictionary:v3];
  v12[0] = @"invertHorizontally";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_invertHorizontally];
  v13[0] = v5;
  v12[1] = @"invertVertically";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_invertVertically];
  v13[1] = v6;
  v12[2] = @"swapAxes";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_swapAxes];
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v4 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

@end