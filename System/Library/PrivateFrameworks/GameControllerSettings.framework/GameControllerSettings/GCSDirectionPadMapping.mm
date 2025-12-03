@interface GCSDirectionPadMapping
+ (id)archivalClasses;
- (BOOL)isCustomized;
- (GCSDirectionPadMapping)initWithCoder:(id)coder;
- (GCSDirectionPadMapping)initWithJSONObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSDirectionPadMapping

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCSDirectionPadMapping;
  v4 = [(GCSElementMapping *)&v6 copyWithZone:zone];
  [v4 setInvertHorizontally:{-[GCSDirectionPadMapping invertHorizontally](self, "invertHorizontally")}];
  [v4 setInvertVertically:{-[GCSDirectionPadMapping invertVertically](self, "invertVertically")}];
  [v4 setSwapAxes:{-[GCSDirectionPadMapping swapAxes](self, "swapAxes")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  elementKey = [(GCSElementMapping *)self elementKey];
  mappingKey = [(GCSElementMapping *)self mappingKey];
  v6 = [v3 stringWithFormat:@"<GCSDirectionPadMapping: elementKey=%@, mappingKey=%@>", elementKey, mappingKey];

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

- (GCSDirectionPadMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GCSDirectionPadMapping;
  v5 = [(GCSElementMapping *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_invertHorizontally = [coderCopy decodeBoolForKey:@"_invertHorizontally"];
    v5->_invertVertically = [coderCopy decodeBoolForKey:@"_invertVertically"];
    v5->_swapAxes = [coderCopy decodeBoolForKey:@"_swapAxes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCSDirectionPadMapping;
  coderCopy = coder;
  [(GCSElementMapping *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_invertHorizontally forKey:{@"_invertHorizontally", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_invertVertically forKey:@"_invertVertically"];
  [coderCopy encodeBool:self->_swapAxes forKey:@"_swapAxes"];
}

- (GCSDirectionPadMapping)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)jsonObject
{
  v13[3] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = GCSDirectionPadMapping;
  jsonObject = [(GCSElementMapping *)&v11 jsonObject];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary addEntriesFromDictionary:jsonObject];
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
  [dictionary addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end